package com.center.member.model;

import java.util.HashMap;
import java.util.List;

public interface InterMemberDAO {

	// 장바구니 갯수
	String getCartListCnt(String userno);
	
	// 수강 내역 갯수
	String getOrderListCnt(String userno);
	
	// 대기자 조회 갯수
	String getWaitingListCnt(String userno);
	
	// 수강 후기 갯수
	String getReviewListCnt(String userno);

	// 좋아요 갯수
	String getHeartListCnt(String userno);
	
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
	
	// 수강 내역 강좌 정보
	List<ClassVO> getClassInfo(HashMap<String, Object> map);
	
	// 수강 내역 조회 (검색o)
	List<OrderListVO> getOrderListSearch(HashMap<String, String> paraMap);
	
	// 결제 정보
	HashMap<String, String> getPayInfo(String no);
	
	// 결제 일자
	String getPayday(String no);
	
	// 강사 정보
	TeacherVO getTeacherInfo(String teacherno);
	
	// 대기자 조회
	List<WaitingVO> getWaitingList(String userno);
	
	// 강사 리스트
	List<TeacherVO> getTeacherList(HashMap<String, Object> map);
	
	// 대기 목록 삭제
	int cancelWait(HashMap<String, Object> map);
	
	// 강좌 번호 채번
	String getClassno(String no);
	
	// 결제 취소
	int payCancelEnd(HashMap<String, String> map);
	
	// 수강 내역 취소완료 변경
	int editOrderlist(HashMap<String, String> map);
	
	// 취소한 강좌에 대한 대기 번호 1번인 유저 번호
	String getWaitingNo(HashMap<String, String> map);
	
	// 대기번호 1번인 유저의 전화번호	
	String getHp(String waitno);
	
	// 문자 전송 후 대기자 변경
	void updateWait(HashMap<String, String> map);
	
	// 수강이 끝난 수강내역
	List<OrderListVO> getOrderListEnd(String userno);
	
	// 수강이 끝난 수강내역	
	List<OrderListVO> getOrderListSearchEnd(HashMap<String, String> paraMap);
	
	// 수강 후기
	List<ReviewVO> getReview(HashMap<String, Object> map);
	
	// 강좌별 연령대 차트
	List<HashMap<String, String>> ageJSON(String class_seq);
	
	// 강좌 개강 시 대기자 삭제
	int deleteWaitingList(String classno);
	
	
	
	
	// 스케쥴러 강좌 시작날짜, 끝날짜를 알아오기 위한 주문 목록
	List<OrderListVO> getAllOrderList();
	
	// 강좌별 시작날짜, 끝날짜 조회
	List<ClassVO> getAllClassList(HashMap<String, Object> map);
	
	// 주문내역 상태 업데이트
	int updateOrderListStatus(HashMap<String, String> paraMap);
	
	
	
	
	
	/* 최효민 : 시작 */
	
	//아이디 중복체크
	int idCheck(String userid);

	//회원가입
	int registerUser(HashMap<String, String> paraMap);

	//로그인
	MemberVO isExistUser(HashMap<String, String> paraMap);

	//마지막로그인 시간 업데이트
	int setLoginday(String userno);

	//비밀번호 변경
	int setUserPwd(HashMap<String, String> paraMap);

	//정보수정 날짜 업데이트
	int updateEditDay(HashMap<String, String> paraMap);

	//내 정보 변경
	int updateUser(HashMap<String, String> paraMap);

	//회원탈퇴
	int delUser(String userno);

	//이메일로 아이디 찾기
	String findidByEmail(HashMap<String, String> paraMap);

	//휴대폰 번호로 아이디 찾기
	String findidByHp(HashMap<String, String> paraMap);

	//새 비밀번호 설정
	int updatePW(HashMap<String, String> paraMap);

	//ID로 내 정보 가져오기
	MemberVO getUserById(String userid);

	//탈퇴회원 리스트
	List<MemberVO> getDelUserList();

	//탈퇴한지 180일 지난 회원 삭제
	void delDBuser(String userno);
	
	//성별 차트
	List<HashMap<String, String>> getgenderJSON(String class_seq);
	
	/* 최효민 : 끝 */
	
	// 관리자 회원 목록 
	
	int getTotalCountWithNOsearch();

	int getTotalCountWithSearch(HashMap<String, String> paraMap);

	List<MemberVO> memberListWithPaging(HashMap<String, String> paraMap);  // 회원목록 

	MemberVO getOneMemberDetail(String userno); // 관리자 회원목록 - 회원정보 

	int memberwithdrawal(MemberVO membervo, String userno); // 관리자 회원목록 - 회원 탈퇴

	List<OrderListVO> getOnememberclassDetail(String userno_fk); // 관리자 회원목록 - 수강정보
	
	int admindeleteClass(OrderListVO orderlistvo, String orderlistno); // 관리자 수강정보 - 수강취소(환불) 


}
