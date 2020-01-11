package com.center.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping(value="/member/Register.to")
	public String Register() {
		return "member/login/register.tiles1";
	}
}
