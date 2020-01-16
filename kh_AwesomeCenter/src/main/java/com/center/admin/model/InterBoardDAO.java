package com.center.admin.model;

import java.util.HashMap;
import java.util.List;

public interface InterBoardDAO {

	List<BoardVO> boardListWithPaging(HashMap<String, String> paraMap);

	int getTotalCountWithNOsearch();

	int getTotalCountWithSearch(HashMap<String, String> paraMap);



}
