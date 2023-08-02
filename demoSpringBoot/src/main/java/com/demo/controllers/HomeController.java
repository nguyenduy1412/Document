package com.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.entities.Category;
import com.demo.reponsitory.CategoryRepository;

@Controller
public class HomeController {
	@Autowired
	private CategoryRepository categoryRepository;
	@RequestMapping("/home")
	public String home(Model model) {
		List<Category> list=categoryRepository.findAll();
		for (Category category : list) {
			System.out.println(category.getCategoryName());
		}
		model.addAttribute("list",list);
		return "home";
	}
}
