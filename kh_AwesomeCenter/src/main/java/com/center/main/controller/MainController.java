package com.center.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping(value="/main.to")
	public String main() {
		return "main/main.tiles1";
	}
	
	@RequestMapping(value="/mainCarousel.to")
	public String mainCarousel() {
		return "main/mainCarousel";
	}

}
