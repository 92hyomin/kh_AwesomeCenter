package com.center.admin.service;

import java.util.HashMap;
import java.util.List;

import com.center.admin.model.BoardVO;

public interface InterBoardService {
	
	int getTotalCountWithNOsearch();

	int getTotalCountWithSearch(HashMap<String, String> paraMap);

	List<BoardVO> boardListWithPaging(HashMap<String, String> paraMap);

}
