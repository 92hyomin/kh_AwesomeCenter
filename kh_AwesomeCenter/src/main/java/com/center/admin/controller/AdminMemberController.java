package com.center.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.center.admin.model.BoardVO;
import com.center.admin.service.InterBoardService;

@Component
@Controller
public class AdminMemberController {

	@Autowired
	private InterBoardService service;
	
	// 관리자 회원목록 페이지
	@RequestMapping(value="/adminMemberList.to")
	public String admin_memberList() {
		
		return "admin/memberAdmin/Admin_memberList.tiles1";
	}
	
	// 관리자 회원별 수강정보 페이지
	@RequestMapping(value="/adminMemberClass.to")
	public String admin_memberClass() {
		
		return "admin/memberAdmin/Admin_memberClass.tiles1";
	}
	
	// 관리자 회원정보 상세 페이지 
	@RequestMapping(value="/adminMemberInfo.to")
	public String admin_memberInfo() {
		
		return "admin/memberAdmin/Admin_memberInfo.tiles1";
	}
	
	// 관리자 차트 페이지
	@RequestMapping(value="/adminMemberChart.to")
	public String admin_memberChart() {
		
		return "admin/memberAdmin/Admin_Chart.tiles1";
	}
		
	// 공지 게시판 글쓰기
/*	@RequestMapping(value="/NoticeWrite.to")
	public String NoticeList() {
		
		return "admin/memberAdmin/NoticeWrite.tiles1";
	}*/
			
	// 공지 게시판 목록
	@RequestMapping(value="/boardmenu.to", method= {RequestMethod.GET})
	public ModelAndView list(HttpServletRequest request, ModelAndView mav) {
		
		List<BoardVO> boardList = null;
	
		String str_currentShowPageNo = request.getParameter("currentShowPageNo"); 
		
		int totalCount = 0;         // 총게시물 건수
		int sizePerPage = 5;       // 한 페이지당 보여줄 게시물 수 
		int currentShowPageNo = 0;  // 현재 보여주는 페이지번호로서, 초기치로는 1페이지로 설정함.
		int totalPage = 0;          // 총 페이지수(웹브라우저상에 보여줄 총 페이지 갯수, 페이지바) 
		
		int startRno = 0;           // 시작 행번호
		int endRno = 0;             // 끝 행번호
		
		
		String searchType = request.getParameter("searchType"); 
		String searchWord = request.getParameter("searchWord"); 
		
		if(searchWord == null || searchWord.trim().isEmpty() ) {
			searchWord = "";
		}
		
		HashMap<String,String> paraMap = new HashMap<String,String>(); 
		paraMap.put("searchType", searchType);
		paraMap.put("searchWord", searchWord);
	
	    // 검색조건이 없을 경우의 총 게시물 건수(totalCount)
		if("".equals(searchWord)) {
			totalCount = service.getTotalCountWithNOsearch();
		}
		
		// 검색조건이 있을 경우의 총 게시물 건수(totalCount)
		else {
			totalCount = service.getTotalCountWithSearch(paraMap);
		}
		
		totalPage = (int) Math.ceil( (double)totalCount/sizePerPage );  
		
		if(str_currentShowPageNo == null) {
			// 게시판에 보여지는 초기화면
			
			currentShowPageNo = 1;
			// 즉, 초기화면은  /list.action?currentShowPageNo=1 로 한다는 말이다.
		}
		else {
			
			try {
				  currentShowPageNo = Integer.parseInt(str_currentShowPageNo);
				
				  if(currentShowPageNo < 1 || currentShowPageNo > totalPage) {
					  currentShowPageNo = 1;
				  }
			} catch (NumberFormatException e) {
				  currentShowPageNo = 1;
			}
		}
	
		startRno = ((currentShowPageNo - 1) * sizePerPage) + 1;
		endRno = startRno + sizePerPage - 1;
		
		paraMap.put("startRno", String.valueOf(startRno));
		paraMap.put("endRno", String.valueOf(endRno));
	
		boardList = service.boardListWithPaging(paraMap);
		// 페이징 처리한 글목록 가져오기(검색이 있든지, 검색이 없든지 모두 다 포함한것)
	
		if(!"".equals(searchWord)) {
			mav.addObject("paraMap", paraMap);
		}
		
		// ==== #125. 페이지바 만들기 ==== // 
		String pageBar = "<ul>";
		
		int blockSize = 10;
		
		int loop = 1;
		
		int pageNo = ((currentShowPageNo - 1)/blockSize) * blockSize + 1;
		// *** !! 공식이다. !! *** //
		
	    String url = "boardmenu.to";
	    
		String lastStr = url.substring(url.length()-1);
		if(!"?".equals(lastStr)) 
			url += "?"; 
		
		// *** [이전] 만들기 *** //    
		if(pageNo != 1) {
			pageBar += "&nbsp;<a href='"+url+"&currentShowPageNo="+(pageNo-1)+"&sizePerPage="+sizePerPage+"&searchType="+searchType+"&searchWord="+searchWord+"'>[이전]</a>&nbsp;";
		}
		
		while( !(loop>blockSize || pageNo>totalPage) ) {
			
			if(pageNo == currentShowPageNo) {
				pageBar += "&nbsp;<span style='color: red; border: 1px solid gray; padding: 2px 4px;'>"+pageNo+"</span>&nbsp;";
			}
			else {
				pageBar += "&nbsp;<a href='"+url+"&currentShowPageNo="+pageNo+"&sizePerPage="+sizePerPage+"&searchType="+searchType+"&searchWord="+searchWord+"'>"+pageNo+"</a>&nbsp;"; 
				       // ""+1+"&nbsp;"+2+"&nbsp;"+3+"&nbsp;"+......+10+"&nbsp;"
			}
			
			loop++;
			pageNo++;
		}// end of while---------------------------------
		
		// *** [다음] 만들기 *** //
		if( !(pageNo>totalPage) ) {
			pageBar += "&nbsp;<a href='"+url+"&currentShowPageNo="+pageNo+"&sizePerPage="+sizePerPage+"&searchType="+searchType+"&searchWord="+searchWord+"'>[다음]</a>&nbsp;"; 
		}
		
		pageBar += "</ul>";
		
		mav.addObject("pageBar", pageBar);
		
		mav.addObject("boardList",boardList);
		mav.setViewName("board4/boardmenu.tiles1");
		
//		System.out.println("boardList:"+boardList.size());
		
		return mav;
	}		

	
	
}
