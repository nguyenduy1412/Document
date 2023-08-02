package com.mosoftvn.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	
	public String home() {
		return "index";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam(value = "error",required = false) String error,Model model) {
		
		if(error != null) {
			model.addAttribute("mess", "Đăng nhập thất bại");
		}
		return "login";
	}
	
	
}
