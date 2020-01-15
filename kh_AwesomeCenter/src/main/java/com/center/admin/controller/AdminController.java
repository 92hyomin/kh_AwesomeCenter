package com.center.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	// 관리자
	// 강좌 등록
	@RequestMapping(value="/registerLectureAdmin.to")
	public String registerLectureAdmin() {
		return "admin/lectureAdmin/registerLectureAdmin.tiles1";
	}
	
	// 강좌 리스트
	@RequestMapping(value="/lectureListAdmin.to")
	public String lectureListAdmin() {
		return "admin/lectureAdmin/lectureListAdmin.tiles1";
	}
	
	// 강좌 수정
	@RequestMapping(value="/editLectureAdmin.to")
	public String editLectureAdmin() {
		return "admin/lectureAdmin/editLectureAdmin.tiles1";
	}
	
	// 강좌 정보 상세 
	@RequestMapping(value="/detailLectureAdmin.to")
	public String detailLectureAdmin() {
		return "admin/lectureAdmin/detailLectureAdmin.tiles1";
	}
	
	
	// 강사 등록 
	@RequestMapping(value="/registerTeacherAdmin.to")
	public String registerTeacherAdmin() {
		return "admin/teacherAdmin/registerTeacherAdmin.tiles1";
	}
	
	// 강사 정보 수정 
	@RequestMapping(value="/editTeacherAdmin.to")
	public String editTeacherAdmin() {
		return "admin/teacherAdmin/editTeacherAdmin.tiles1";
	}
	
	// 강사 리스트 *
	@RequestMapping(value="/teacherListAdmin.to")
	public String teacherListAdmin() {
		return "admin/teacherAdmin/teacherListAdmin.tiles1";
	}

	// 강사 정보 상세 
	@RequestMapping(value="/detailTeacherAdmin.to")
	public String detailTeacherAdmin() {
		return "admin/teacherAdmin/detailTeacherAdmin.tiles1";
	}

	////////////////임시
	// 게시판 메뉴
	@RequestMapping(value="/boardmenu.to")
	public String boardmenu() {
		return "board4/boardmenu.tiles1";
	}
	
	// 이벤트게시판
	@RequestMapping(value="/eventBoard.to")
	public String eventBoard() {
		return "board4/board3.tiles1";
	}
	
	// 이벤트게시판 상세
	@RequestMapping(value="/eventBoardDetail.to")
	public String eventBoardDetail() {
		return "board4/eventBoardDetail.tiles1";
	}
	
	// 이벤트게시판 등록
	@RequestMapping(value="/eventBoardRegister.to")
	public String eventBoardRegister() {
		return "board4/eventBoardRegister.tiles1";
	}
	
	@RequestMapping(value="/question.to")
	public String question() {
		return "board4/question.tiles1";
	}

	
}
