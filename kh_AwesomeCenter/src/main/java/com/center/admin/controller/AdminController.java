package com.center.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	
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
