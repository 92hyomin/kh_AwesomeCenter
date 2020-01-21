package com.center.teacherAdmin.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.center.teacherAdmin.model.InterTeacherAdminDAO;
import com.center.teacherAdmin.model.TeacherAdminVO;

@Service
public class TeacherAdminService implements InterTeacherAdminService {

	// DI
	@Autowired
	private InterTeacherAdminDAO dao;
	
	// 1. 강사 리스트 불러오기
	@Override
	public List<TeacherAdminVO> getTeacherList(HashMap<String, String> paraMap) {	
		List<TeacherAdminVO> teacherList = dao.getTeacherList(paraMap);
		return teacherList;
	}

	// 2. 검색어가 없을 떄의 총 게시물 건수(totalCount)
	@Override
	public int getTotalCountNoSearch() {
		int count = dao.getTotalCountNoSearch();	
		return count;
	}

	// 2-1. 검색어가 있을 떄의 총 게시물 건수(totalCount)
	@Override
	public int getTotalCountSearch(HashMap<String, String> paraMap) {
		int count = dao.getTotalCountSearch(paraMap);	
		return count;
	}
	
	
}
