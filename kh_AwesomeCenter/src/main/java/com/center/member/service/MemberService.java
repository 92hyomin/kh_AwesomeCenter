package com.center.member.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.center.member.model.InterMemberDAO;
import com.center.member.model.MemberVO;
import com.center.member.model.OrderListVO;
import com.center.member.model.CategoryVO;
import com.center.member.model.ClassVO;

@Service
public class MemberService implements InterMemberService {
	
	@Autowired
	private InterMemberDAO dao;

	
	// 수강 내역 갯수
	@Override
	public String getOrderListCnt(String userno) {
		String orderListcnt = dao.getOrderListCnt(userno);
		return orderListcnt;
	}
	
	// 관심분야 카테고리 번호 채번
	@Override
	public List<String> getCategoryNo(String userno) {
		List<String> categorynoList = dao.getCategoryNo(userno);
		return categorynoList;
	}
	
	// 채번한 번호로 관심분야 조회
	@Override
	public List<CategoryVO> getWishCategoryList(HashMap<String, Object> map) {
		List<CategoryVO> wishcategoryList = dao.getWishCategoryList(map);
		return wishcategoryList;
	}
	
	// 카테고리 목록 가져오기
	@Override
	public List<CategoryVO> getCategoryList() {
		List<CategoryVO> categoryList = dao.getCategoryList();
		return categoryList;
	}
	
	// 마케팅 수신동의 변경
	@Override
	public int editMarketing(HashMap<String, String> map) {
		int n = dao.editMarketing(map);
		return n;
	}

	// 관심 분야 변경
	@Override
	public int editWishCategory(String userno, String[] cate_no) {
		int n = dao.editWishCategory(userno, cate_no);
		return n;
	}	

	// 수강 내역 조회 (검색x)
	@Override
	public List<OrderListVO> getOrderList(String userno) {
		List<OrderListVO> orderList = dao.getOrderList(userno);
		return orderList;
	}

	// 수강 내역 강좌 정보 (검색x)
	@Override
	public List<ClassVO> getClassInfo(HashMap<String, Object> map) {
		List<ClassVO> classList = dao.getClassInfo(map);
		return classList;
	}

	// 수강 내역 조회 (검색o)
	@Override
	public List<OrderListVO> getOrderListSearch(HashMap<String, String> paraMap) {
		List<OrderListVO> orderListSearch = dao.getOrderListSearch(paraMap);
		return orderListSearch;
	}
	
	// 결제 정보
	@Override
	public HashMap<String, String> getPayInfo(String no) {
		HashMap<String, String> payInfo = dao.getPayInfo(no);
		return payInfo;
	}
	
	
	
	/* 최효민 : 시작 */
	@Override
	public int idCheck(String userid) {
		int n = dao.idCheck(userid);
		return n;
	}

	@Override
	public int registerUser(HashMap<String, String> paraMap) {
		int n = dao.registerUser(paraMap);
		return n;
	}

	@Override
	public MemberVO isExistUser(HashMap<String, String> paraMap) {
		MemberVO loginuser = dao.isExistUser(paraMap);
		return loginuser;
	}





	
	/* 최효민 : 끝 */
	
	
}
