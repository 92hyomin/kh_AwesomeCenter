package com.center.teacherAdmin.service;

import java.util.HashMap;
import java.util.List;

import com.center.teacherAdmin.model.TeacherAdminVO;

public interface InterTeacherAdminService {

	// 1. 강사 리스트 불러오기
	List<TeacherAdminVO> getTeacherList(HashMap<String,String> paraMap);

	// 2. 검색어가 없을 떄의 총 게시물 건수(totalCount)
	int getTotalCountNoSearch();

	// 2-1. 검색어가 있을 떄의 총 게시물 건수(totalCount)
	int getTotalCountSearch(HashMap<String, String> paraMap);

}
