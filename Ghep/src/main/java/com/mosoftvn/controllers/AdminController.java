package com.mosoftvn.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

@RequestMapping("/admin")
public class AdminController {
	@RequestMapping("")
	public String adminPage(Model model) {
		
		return "backend/home";
		
	}
	@RequestMapping("/menu")
	public String addProduct(Model model) {
		
		model.addAttribute("mess", "Chào mừng đến với trang quản trị");
		
		return "backend/menu";
		
	}
}
