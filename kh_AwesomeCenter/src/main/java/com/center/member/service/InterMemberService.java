package com.center.member.service;

import java.util.HashMap;
import java.util.List;

import com.center.member.model.MemberVO;
import com.center.member.model.OrderListVO;
import com.center.member.model.CategoryVO;
import com.center.member.model.ClassVO;

public interface InterMemberService {

	// 수강 내역 갯수
	String getOrderListCnt(String userno);
	
	// 관심분야 카테고리 번호 채번
	List<String> getCategoryNo(String userno);
	
	// 채번한 번호로 관심분야 조회
	List<CategoryVO> getWishCategoryList(HashMap<String, Object> map);
	
	// 카테고리 목록 가져오기
	List<CategoryVO> getCategoryList();
	
	// 마케팅 수신동의 변경
	int editMarketing(HashMap<String, String> map);
	
	// 관심 분야 변경
	int editWishCategory(String userno, String[] cate_no);

	// 수강 내역 조회 (검색x)
	List<OrderListVO> getOrderList(String userno);
	
	// 수강 내역 강좌 정보 (검색x)
	List<ClassVO> getClassInfo(HashMap<String, Object> map);
	
	// 수강 내역 조회 (검색o)
	List<OrderListVO> getOrderListSearch(HashMap<String, String> paraMap);
	
	// 결제 정보
	HashMap<String, String> getPayInfo(String no);
	
	/* 최효민 : 시작 */
	// ID중복체크
	int idCheck(String userid);

	//회원가입
	int registerUser(HashMap<String, String> paraMap);

	//로그인
	MemberVO isExistUser(HashMap<String, String> paraMap);
	
	/* 최효민 : 끝 */

}
