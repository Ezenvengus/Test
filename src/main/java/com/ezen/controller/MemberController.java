package com.ezen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MemberController {
	@GetMapping("/login")
	public String dologin() {
		//login
		log.info("login");
		return "member/login";
	}
	@GetMapping("/register")
	public String doregister() {
		//register
		log.info("register");
		
		return "member/register";
		
	}
	
	
}
