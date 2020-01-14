package com.center.member.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO implements InterMemberDAO {

	@Autowired
	private SqlSessionTemplate sqlsession;

	// 관심분야 카테고리 번호 채번
	@Override
	public List<String> getCategoryNo(String userno) {
		List<String> categorynoList = sqlsession.selectList("awesomeMember.getCategoryNo", userno);
		return categorynoList;
	}

	// 채번한 번호로 관심분야 조회
	@Override
	public List<CategoryVO> getWishCategoryList(HashMap<String, Object> map) {
		List<CategoryVO> wishcategoryList = sqlsession.selectList("awesomeMember.getWishCategoryList", map);
		return wishcategoryList;
	}
	
	// 카테고리 목록 가져오기
	@Override
	public List<CategoryVO> getCategoryList() {
		List<CategoryVO> categoryList = sqlsession.selectList("awesomeMember.getCategoryList");
		return categoryList;
	}
	
	// 마케팅 수신동의 변경
	@Override
	public int editMarketing(HashMap<String, String> map) {
		int n = sqlsession.update("awesomeMember.editMarketing", map);
		return n;
	}

	// 관심 분야 변경
	@Override
	public int editWishCategory(String userno, String[] cate_no) {
		int n = sqlsession.delete("awesomeMember.deleteWishCategory", userno);
		int m = 0;
		
		if(cate_no != null) {
			List<String> noList = new ArrayList<String>();
			for(int i=0; i<cate_no.length; i++) {
				noList.add(cate_no[i]);
			}
			
			for(int i=0; i<noList.size(); i++) {
				HashMap<String, String> map = new HashMap<String, String>();
				String cateno = noList.get(i);
				map.put("userno", userno);
				map.put("cateno", cateno);
				
				
				m = sqlsession.insert("awesomeMember.insertWishCategory", map);
			}
		} else {
				m = 0;
			}
			
		return n+m;
	}
	
	@Override
	public MemberVO loginMember() {
		MemberVO loginuser = sqlsession.selectOne("awesomeMember.loginMember");
		return loginuser;
	}

}
