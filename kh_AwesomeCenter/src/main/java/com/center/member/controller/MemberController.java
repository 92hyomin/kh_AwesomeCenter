package com.center.member.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.center.member.model.CategoryVO;
import com.center.member.model.ClassVO;
import com.center.member.model.MemberVO;
import com.center.member.model.OrderListVO;
import com.center.member.model.TeacherVO;
import com.center.member.service.InterMemberService;

@Controller
public class MemberController {

	@Autowired
	private InterMemberService service;
	
	// 마이페이지
	@RequestMapping(value="/member/mypage.to")
	public ModelAndView main(ModelAndView mav, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		MemberVO loginuser = (MemberVO) session.getAttribute("loginuser"); 
				
		if(loginuser == null) {
			mav.setViewName("member/login/login.tiles1");
		} else {
			
			String userno = loginuser.getUserno();
			
			// 수강 내역 갯수
			String orderListcnt = service.getOrderListCnt(userno);
			
			mav.addObject("orderListcnt", orderListcnt);
			
			// 관심분야 카테고리 번호 채번
			List<String> categorynoList = service.getCategoryNo(userno);
			
			String[] noArr = new String[categorynoList.size()];
			HashMap<String, Object> map = new HashMap<String, Object>();
			
			for(int i=0; i<categorynoList.size(); i++) {
				noArr[i] = categorynoList.get(i);
			}
			
			map.put("noArr", noArr);
			
			// 채번한 번호로 관심분야 조회
			List<CategoryVO> wishcategoryList = null;
			
			if( !(noArr.length == 0) ) {
				wishcategoryList = service.getWishCategoryList(map);
			}
			
			// 카테고리 목록 가져오기
			List<CategoryVO> categoryList = service.getCategoryList();			
			
			if(wishcategoryList != null) {
			mav.addObject("wishcategoryList", wishcategoryList);
			}
			mav.addObject("categoryList", categoryList);
			 
			mav.setViewName("member/mypage/mypage.tiles1");
		}
		
		return mav;
			
	}
	
	// 마케팅 수신동의 변경
	@RequestMapping(value="/member/editMarketing.to", method= {RequestMethod.GET})
	public ModelAndView editMarketing(ModelAndView mav, HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		MemberVO loginuser = (MemberVO) session.getAttribute("loginuser");
		
		String userno = "";
		
		if(loginuser != null) {
			userno = loginuser.getUserno();
		}
		
		String emailCheck = request.getParameter("email_kdh");
		String smsCheck = request.getParameter("sms_kdh");
		
		if(emailCheck == null) {
			emailCheck = "N";
		}
		if(smsCheck == null) {
			smsCheck = "N";
		}
		
		HashMap<String,String> map = new HashMap<String, String>();
		map.put("emailCheck", emailCheck);
		map.put("smsCheck", smsCheck);
		map.put("userno", userno);
		
		int n = service.editMarketing(map);
		
		if(n==1) {
			String msg = "저장되었습니다.";
			String loc = request.getContextPath()+"/member/mypage.to";
			
			mav.addObject("msg", msg);
			mav.addObject("loc", loc);
			
			mav.setViewName("msg");
		}
		
		return mav;
		
	}
	
	// 관심 분야 변경
	@RequestMapping(value="/member/editWishCategory.to", method= {RequestMethod.GET})
	public ModelAndView editWishCategory(ModelAndView mav, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		MemberVO loginuser = (MemberVO) session.getAttribute("loginuser");
		
		String userno = "";
		
		if(loginuser != null) {
			userno = loginuser.getUserno();
		}
		
		String onArr = request.getParameter("onArr");
		
		String[] cate_no = null;
		
		if(onArr == null || "".equals(onArr)) {
			cate_no = null;
		} else {
			cate_no = onArr.split(",");
		}
		
		int n = service.editWishCategory(userno, cate_no);
		
		if(n>=1) {
			String msg = "저장되었습니다";
			String loc = request.getContextPath()+"/member/mypage.to";
			
			mav.addObject("msg", msg);
			mav.addObject("loc", loc);
			
			mav.setViewName("msg");
		}
		
		return mav;
	}
	
	// 수강내역
	@RequestMapping(value="/member/lectureList.to", method= {RequestMethod.GET})
	public ModelAndView lectureList(ModelAndView mav, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		MemberVO loginuser = (MemberVO) session.getAttribute("loginuser");
		
		String userno = "";
		
		if(loginuser != null) {
			userno = loginuser.getUserno();
		}
		
		String year = request.getParameter("year");
		String term = request.getParameter("term");
		
		// 년도, 학기 설정 없이 초기 로딩
		if(("".equals(year) || year == null) && ("".equals(term) ||term == null)){
		
		// 수강내역
		List<OrderListVO> orderList = service.getOrderList(userno);
		
		String[] noArr = new String[orderList.size()];
		
		if(! (orderList.size() == 0)) {
		// 수강 내역 강좌 정보
			for (int i=0; i<orderList.size(); i++) {
				String classno = orderList.get(i).getClass_seq_fk();
				noArr[i] = classno;
			}
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("noArr", noArr);
			
			List<ClassVO> classList = service.getClassInfo(map);
			
			mav.addObject("orderList", orderList);
			mav.addObject("classList", classList);
		
		}
		
		else {
			mav.addObject("year", year);
			mav.addObject("term", term);
			mav.addObject("orderList", null);
		}
		}
		
		// 년도, 학기 검색
		else {
			
			HashMap<String, String> paraMap = new HashMap<String, String>();
			paraMap.put("year", year);
			paraMap.put("term", term);
			
			List<OrderListVO> orderListSearch = service.getOrderListSearch(paraMap);
			
			if(! (orderListSearch.size() == 0)) {
			
			String[] noArr = new String[orderListSearch.size()];
			
			// 수강 내역 강좌 정보
			for (int i=0; i<orderListSearch.size(); i++) {
				String classno = orderListSearch.get(i).getClass_seq_fk();
				noArr[i] = classno;
			}
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("noArr", noArr);
			
			List<ClassVO> classListSearch = service.getClassInfo(map);
			
			mav.addObject("year", year);
			mav.addObject("term", term);
			mav.addObject("orderList", orderListSearch);
			mav.addObject("classList", classListSearch);
			
			}
			
			else {
				
				mav.addObject("year", year);
				mav.addObject("term", term);
				mav.addObject("orderList", null);
			}
		}
		
		mav.setViewName("member/mypage/lectureList.tiles1");
		
		return mav;
	}
	
	// 결제 정보
	@RequestMapping(value="/member/mypage/payInfo.to", method= {RequestMethod.GET})
	public ModelAndView payInfo(ModelAndView mav, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		MemberVO loginuser = (MemberVO) session.getAttribute("loginuser");
		
		if(loginuser == null) {
			String msg="로그인을 하십시오.";
			String loc="self.close()";
			
			mav.addObject("msg", msg);
			mav.addObject("loc", loc);
			
			mav.setViewName("msg");
			
		} else {
			
			String no = request.getParameter("no");
			
			HashMap<String, String> payInfo = service.getPayInfo(no);
			
			if( ! loginuser.getUserno().equals(payInfo.get("userno_fk"))  ) {
				String msg="비정상적인 접근입니다..";
				String loc="self.close()";
				
				mav.addObject("msg", msg);
				mav.addObject("loc", loc);
				
				mav.setViewName("msg");
				
			} else {
		
				String teacherno = payInfo.get("fk_teacher_seq");
				
				// 강사 정보
				TeacherVO teacher = service.getTeacherInfo(teacherno);
				
				mav.addObject("teacher", teacher);
				mav.addObject("payInfo", payInfo);
				mav.setViewName("member/mypage/payInfo");
					
			}
			
		}
		
		return mav;
	}
	
	
	
	
	
	@RequestMapping(value="/member/waitingList.to")
	public String classList() {
		
		return "member/mypage/waitingList.tiles1";
	}
	
	@RequestMapping(value="/member/certificate.to")
	public String certificate() {
		
		return "member/mypage/certificate.tiles1";
	}
	
	@RequestMapping(value="/member/review.to")
	public String review() {
		
		return "member/mypage/review.tiles1";
	}
	
	@RequestMapping(value="/QnA/QnAList.to")
	public String QnAList() {
		
		return "member/QnA/QnAList.tiles1";
	}
	
	@RequestMapping(value="/QnA/QnAWrite.to")
	public String QnAWrite() {
		
		return "member/QnA/QnAWrite.tiles1";
	}
	
	@RequestMapping(value="/QnA/QnAEnd.to")
	public String QnAEnd() {
		
		return "member/QnA/QnAEnd.tiles1";
	}
	
	@RequestMapping(value="/QnA/QnAInfo.to")
	public String QnAInfo() {
		
		return "member/QnA/QnAInfo.tiles1";
	}

	@RequestMapping(value="/QnA/FAQList.to")
	public String FAQList() {
		
		return "member/FAQ/FAQList.tiles1";
	}
}
