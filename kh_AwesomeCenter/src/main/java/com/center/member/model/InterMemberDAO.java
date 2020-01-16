package com.center.member.model;

import java.util.HashMap;
import java.util.List;

public interface InterMemberDAO {

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
	
	MemberVO loginMember();

	
	/* 최효민 : 시작 */
	
	//아이디 중복체크
	int idCheck(String userid);

	//회원가입
	int registerUser(HashMap<String, String> paraMap);

	//로그인
	MemberVO isExistUser(HashMap<String, String> paraMap);
	
	
	/* 최효민 : 끝 */
}
