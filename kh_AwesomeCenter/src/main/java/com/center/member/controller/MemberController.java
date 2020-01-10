package com.center.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping(value="/member/mypage.to")
	public String main() {
		return "member/mypage/mypage.tiles1";
	}
	
	@RequestMapping(value="/member/lectureList.to")
	public String lectureList() {
		
		return "member/mypage/lectureList.tiles1";
	}
	
	@RequestMapping(value="/member/waitingList.to")
	public String classList() {
		
		return "member/mypage/waitingList.tiles1";
	}
	
	@RequestMapping(value="/member/certificate.to")
	public String certificate() {
		
		return "member/mypage/certificate.tiles1";
	}
	
	@RequestMapping(value="/member/review.to")
	public String review() {
		
		return "member/mypage/review.tiles1";
	}
	
	@RequestMapping(value="/QnA/QnAList.to")
	public String QnAList() {
		
		return "member/QnA/QnAList.tiles1";
	}
	
	@RequestMapping(value="/QnA/QnAWrite.to")
	public String QnAWrite() {
		
		return "member/QnA/QnAWrite.tiles1";
	}
	
	@RequestMapping(value="/QnA/QnAEnd.to")
	public String QnAEnd() {
		
		return "member/QnA/QnAEnd.tiles1";
	}
	
	@RequestMapping(value="/QnA/QnAInfo.to")
	public String QnAInfo() {
		
		return "member/QnA/QnAInfo.tiles1";
	}

	@RequestMapping(value="/QnA/FAQList.to")
	public String FAQList() {
		
		return "member/FAQ/FAQList.tiles1";
	}
	
}
