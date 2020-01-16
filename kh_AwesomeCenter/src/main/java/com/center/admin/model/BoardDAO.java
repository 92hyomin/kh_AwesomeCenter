package com.center.admin.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO implements InterBoardDAO {

	   // 의존객체 주입하기(DI: Dependency Injection) ===
		@Autowired   // Type에 따라 알아서 Bean 을 주입해준다.
		private SqlSessionTemplate sqlsession;
	
		@Override
		public List<BoardVO> boardListWithPaging(HashMap<String, String> paraMap) {
			List<BoardVO> boardList = sqlsession.selectList("awesomeAdmin.boardListWithPaging",paraMap);
			
			return boardList;
		}

		@Override
		public int getTotalCountWithNOsearch() {
			int count = sqlsession.selectOne("awesomeAdmin.getTotalCountWithNOsearch");
			return count;
		}

		@Override
		public int getTotalCountWithSearch(HashMap<String, String> paraMap) {
			int count = sqlsession.selectOne("awesomeAdmin.getTotalCountWithSearch", paraMap);
			return count;
		}


}
