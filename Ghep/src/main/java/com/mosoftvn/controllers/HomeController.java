package com.mosoftvn.controllers;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mosoftvn.dao.AccountDAO;
import com.mosoftvn.dao.UserDAO;
import com.mosoftvn.dao.User_RoleDAO;
import com.mosoftvn.entities.Account;
import com.mosoftvn.entities.User;
import com.mosoftvn.entities.User_Role;

@Controller
public class HomeController {
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private User_RoleDAO user_RoleDAO;
	@Autowired
	private AccountDAO accountDAO;
	@RequestMapping("/")
	
	public String home() {
		System.out.println("In......");
		List<User> list=userDAO.getAll();
		for (User user : list) {
			System.out.println(user);
		}
		List<User_Role> listUser=user_RoleDAO.getAll();
		User ad=userDAO.findByUserName("admin");
		System.out.println(ad);
		Set<User_Role> sett=ad.getUserRoles();
		for (User_Role a : sett) {
			System.out.println(a.getRole().getName());
		}
		return "index";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam(value = "error",required = false) String error,Model model) {
		
		if(error != null) {
			model.addAttribute("mess", "Đăng nhập thất bại");
		}
		return "login";
	}
	@RequestMapping("/backend")
	public String giaodien() {
		
		return "backend/home";
	}
	
}
