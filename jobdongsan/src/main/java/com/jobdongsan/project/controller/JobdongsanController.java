package com.jobdongsan.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobdongsanController {
	@RequestMapping("/login")
	public String main() {
		return "member/login";
	}
}
