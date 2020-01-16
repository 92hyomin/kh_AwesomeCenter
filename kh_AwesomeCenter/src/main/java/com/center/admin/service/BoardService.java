package com.center.admin.service;

import java.util.HashMap;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.center.admin.model.BoardVO;
import com.center.admin.model.InterBoardDAO;

//=== #31. Service 선언 ===
@Service 
public class BoardService implements InterBoardService {
	// 의존객체 주입
	@Autowired
	private InterBoardDAO dao;
	
	// 글 목록 
			
	@Override
	public List<BoardVO> boardListWithPaging(HashMap<String, String> paraMap) {
		List<BoardVO> boardList = dao.boardListWithPaging(paraMap);
		
		return boardList;
	}

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
	
}
