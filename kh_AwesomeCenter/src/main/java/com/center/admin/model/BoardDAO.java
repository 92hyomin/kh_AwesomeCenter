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

		// 공지글 상세보기 
		@Override
		public BoardVO getNoticeBoardDetail(String Not_seq) {
			BoardVO boardvo = sqlsession.selectOne("awesomeAdmin.getNoticeBoardDetail", Not_seq);
			return boardvo;
		}

		// 공지글 상세보기(조회수)
		@Override
		public void setAddReadCount(String Not_seq) {
			sqlsession.update("awesomeAdmin.setAddReadCount", Not_seq);
			
		}

		// 공지게시판 글 쓰기 
		@Override
		public int addNotice(BoardVO boardvo) {
			int n = sqlsession.insert("awesomeAdmin.addNotice",boardvo);
			return n;
		}


}
