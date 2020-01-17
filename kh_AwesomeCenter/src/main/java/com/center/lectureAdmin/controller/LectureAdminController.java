package com.center.lectureAdmin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LectureAdminController {

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
	
	

	
	

	
}
