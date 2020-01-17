package com.center.admin.model;

import java.util.HashMap;
import java.util.List;

public interface InterBoardDAO {

	List<BoardVO> boardListWithPaging(HashMap<String, String> paraMap);

	int getTotalCountWithNOsearch();

	int getTotalCountWithSearch(HashMap<String, String> paraMap);

	BoardVO getNoticeBoardDetail(String Not_seq); // 공지게시글 조회수 증가 및 게시글 상세보기
	void setAddReadCount(String Not_seq); // 조회수 1증가 

	int addNotice(BoardVO boardvo);  // 공지게시판에 글 작성하기 



}
