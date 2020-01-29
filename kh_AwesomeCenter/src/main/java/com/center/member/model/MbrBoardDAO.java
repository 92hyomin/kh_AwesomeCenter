package com.center.member.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.center.member.service.InterMbrBoardService;

@Repository
public class MbrBoardDAO implements InterMbrBoardDAO {

	@Autowired
	private SqlSessionTemplate sqlsession;

	// 페이징 처리를 위한 글 갯수 가져오기
	@Override
	public int getTotalCountWithNOsearch(String userno) {
		int count = sqlsession.selectOne("awesomeMbrBoard.getTotalCountWithNOsearch", userno);
		return count;
	}

	// 1:1 문의 내역
	@Override
	public List<QnAVO> getQnAList(HashMap<String, String> map) {
		List<QnAVO> QnAList = sqlsession.selectList("awesomeMbrBoard.getQnAList", map);
		return QnAList;
	}

	// 1:1 문의 자세히
	@Override
	public QnAVO getQnAView(String no) {
		QnAVO qna = sqlsession.selectOne("awesomeMbrBoard.getQnAView", no);
		return qna;
	}

	// 1:1 문의 삭제
	@Override
	public int delQuestion(String no) {
		int n = sqlsession.delete("awesomeMbrBoard.delQuestion", no);
		return n;
	}

	// 1:1 문의 수정
	@Override
	public int editQuestion(HashMap<String, String> map) {
		int n = sqlsession.update("awesomeMbrBoard.editQuestion", map);
		return n;
	}

	// 1:1 문의 작성
	@Override
	public int writeQuestion(HashMap<String, String> map) {
		int n = sqlsession.insert("awesomeMbrBoard.writeQuestion", map);
		return n;
	}

	// 관리자용 1:1 문의 내역 갯수
	@Override
	public int getTotalCountWithNOsearchAdmin() {
		int n = sqlsession.selectOne("awesomeMbrBoard.getTotalCountWithNOsearchAdmin");
		return n;
	}

	// 관리자용 1:1 문의 내역
	@Override
	public List<QnAVO> getQnAListAdmin(HashMap<String, String> map) {
		List<QnAVO> QnAList = sqlsession.selectList("awesomeMbrBoard.getQnAListAdmin", map);
		return QnAList;
	}

	// 관리자용 1:1 문의 답변 수정
	@Override
	public int answerEdit(HashMap<String, String> map) {
		int n = sqlsession.update("awesomeMbrBoard.answerEdit", map);
		return n;
	}

	
}
