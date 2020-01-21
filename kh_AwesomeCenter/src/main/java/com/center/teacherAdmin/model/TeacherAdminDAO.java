package com.center.teacherAdmin.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeacherAdminDAO implements InterTeacherAdminDAO {
	
	// DI
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	// 1. 강사 리스트 불러오기
	@Override
	public List<TeacherAdminVO> getTeacherList(HashMap<String, String> paraMap) {
		List<TeacherAdminVO> teacherList = sqlsession.selectList("awesomeAdmin2.getTeacherList", paraMap);	
		return teacherList;
	}

	// 2. 검색어가 없을 떄의 총 게시물 건수(totalCount)
	@Override
	public int getTotalCountNoSearch() {
		int count = sqlsession.selectOne("awesomeAdmin2.getTotalCountNoSearch");
		return count;
	}

	// 2. 검색어가 있을 떄의 총 게시물 건수(totalCount)
	@Override
	public int getTotalCountSearch(HashMap<String, String> paraMap) {
		int count = sqlsession.selectOne("awesomeAdmin2.getTotalCountSearch", paraMap);
		return count;
	}

	
}
