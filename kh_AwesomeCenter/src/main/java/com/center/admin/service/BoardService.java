package com.center.admin.service;

import java.util.HashMap;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.center.admin.model.BoardVO;
import com.center.admin.model.InterBoardDAO;
import com.center.member.model.MemberVO;

//=== #31. Service 선언 ===
@Service 
public class BoardService implements InterBoardService {
	// 의존객체 주입
	@Autowired
	private InterBoardDAO dao;
	
	@Override
	public int getTotalCountWithNOsearch() {
		int count = dao.getTotalCountWithNOsearch();
		return count;
	}

	@Override
	public int getTotalCountWithSearch(HashMap<String, String> paraMap) {
		int count = dao.getTotalCountWithSearch(paraMap);
		return count;
	}
	
	// 공지게시글 조회수 증가 및 게시글 상세보기 
	@Override
	public BoardVO getNoticeBoardDetail(String Not_seq, String userid) {
		BoardVO boardvo = dao.getNoticeBoardDetail(Not_seq);

	      if(userid != null && !userid.equalsIgnoreCase(boardvo.getFk_userid())) {
	         // 글 조회수 증가는 다른 사람의 글을 읽을때만 증가하도록 해야한다.
	         // 로그인 하지 않은 상태에서는 글 조회수 증가는 없다.
	         dao.setAddReadCount(Not_seq);
	         boardvo = dao.getNoticeBoardDetail(Not_seq);
	      }
	      
	      return boardvo;
	}
	
	// 로그아웃 한 상태 공지게시글 조회수 증가 X 게시글 상세보기 
	@Override
	public BoardVO getNoticeBoardDetailNoCount(String Not_seq) {
		BoardVO boardvo = dao.getNoticeBoardDetail(Not_seq);
	     return boardvo;
	}

	// 공지 게시판 글 쓰기 
	@Override
	public int addNotice(BoardVO boardvo) {
		int n = dao.addNotice(boardvo);
		return n;
	}

	// 공지 게시판 글 수정 
	@Override
	public int noticeEdit(BoardVO boardvo) {
		int n = dao.noticeEdit(boardvo);
		return n;
	}

	// 공지게시판 글 삭제하기
	@Override
	public int noticedel(BoardVO boardvo) {
		int n = dao.noticedel(boardvo);
		return n;
	}
	
	// 글 목록 
	@Override
	public List<BoardVO> boardListWithPaging(HashMap<String, String> paraMap) {
		List<BoardVO> boardList = dao.boardListWithPaging(paraMap);
		
		return boardList;
	}
		
	// 회원목록 
	@Override
	public List<MemberVO> MemberListWithPaging(HashMap<String, String> paraMap) {
		List<MemberVO> memberList = dao.memberListWithPaging(paraMap);
		return memberList;
	}
	
}
