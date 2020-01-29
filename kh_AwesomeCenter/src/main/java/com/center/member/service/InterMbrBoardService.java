package com.center.member.service;

import java.util.HashMap;
import java.util.List;

import com.center.member.model.QnAVO;

public interface InterMbrBoardService {

	// 페이징 처리를 위한 글 갯수 가져오기
	int getTotalCountWithNOsearch(String userno);

	// 1:1 문의 내역
	List<QnAVO> getQnAList(HashMap<String, String> map);

	// 1:1 문의 자세히
	QnAVO getQnAView(String no);
	
	// 1:1 문의 삭제
	int delQuestion(String no);

	// 1:1 문의 수정
	int editQuestion(HashMap<String, String> map);

	// 1:1 문의 작성
	int writeQuestion(HashMap<String, String> map);

	// 관리자용 1:1 문의 내역 갯수
	int getTotalCountWithNOsearchAdmin();

	// 관리자용 1:1 문의 내역
	List<QnAVO> getQnAListAdmin(HashMap<String, String> map);

	// 관리자용 1:1 문의 답변 수정
	int answerEdit(HashMap<String, String> map);

}
