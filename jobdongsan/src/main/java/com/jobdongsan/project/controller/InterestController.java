package com.jobdongsan.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InterestController {
	@RequestMapping("/interest")
	public String main() {
		return "interest/interest";
	}
}