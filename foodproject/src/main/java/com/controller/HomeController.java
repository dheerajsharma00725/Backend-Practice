package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/home1")
	public ModelAndView home() {
		ModelAndView mv =new ModelAndView();
		mv.setViewName("home1");
		return mv;
	}

	@RequestMapping("/login")
	public String login(Model m) {
		return "login";
	}

	@RequestMapping("/register")
	public String addUser() {
		return "user-registration";
	}

	/*
	 * @RequestMapping(value="/handle-user",method=RequestMethod.POST) public String
	 * addUser(@ModelAttribute("add") User u,Model m) { service.createUser(u);
	 * System.out.println(u); return "success"; }
	 */
	@RequestMapping("/info")
	public String items(Model m) {
		m.addAttribute("uname");
		return "info";
	}
	@RequestMapping("/error")
	public String error() {
		return "error";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "home1";
	}
}
