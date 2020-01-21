package com.center.admin.service;

import java.util.HashMap;
import java.util.List;

import com.center.admin.model.BoardVO;
import com.center.member.model.MemberVO;

public interface InterBoardService {
	
	int getTotalCountWithNOsearch();

	int getTotalCountWithSearch(HashMap<String, String> paraMap);

	List<BoardVO> boardListWithPaging(HashMap<String, String> paraMap);   // 공지게시판 글 목록 

	BoardVO getNoticeBoardDetail(String Not_seq, String userid);  // 공지게시글 조회수 증가 게시글 상세보기 

	BoardVO getNoticeBoardDetailNoCount(String Not_seq); // 로그아웃 한 상태 공지게시글 조회수 증가 X 게시글 상세보기 

	int addNotice(BoardVO boardvo); // 공지게시판 글 쓰기 

	int noticeEdit(BoardVO boardvo); // 공지게시판 글 수정

	int noticedel(BoardVO boardvo); // 공지게시판 글 삭제 

	List<MemberVO> MemberListWithPaging(HashMap<String, String> paraMap);  // 회원목록 

}
