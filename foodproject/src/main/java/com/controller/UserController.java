package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.entities.User;
import com.service.UserService;

@Controller
public class UserController {
	private static final Logger logger = LogManager.getLogger(UserController.class);

	@Autowired
	private UserService service;

	@RequestMapping(path = "/add-user", method = RequestMethod.POST)
	public String handleForm(@ModelAttribute User user, Model model) {
		logger.info("Entering handle Form method wih User {}", user);
		if (user.getFname().equals(null) && user.getLname().equals(null) && user.getEmail().equals(null)) {
			return "user-registration";
		} else {
			try {
				List<String> details = service.createUser(user);
				System.out.println(details);
				if (!details.isEmpty()) {
					String uname = details.get(0);
					String upwd = details.get(1);
					System.out.println(uname + " " + upwd);
					model.addAttribute("uname", uname);
					model.addAttribute("upwd", upwd);
					return "success";
				}
			} catch (Exception e) {

				e.printStackTrace();
			}
			return "success";
		}

	}

	@RequestMapping(path = "/login-user", method = RequestMethod.POST)
	public String loginUser(@ModelAttribute User user, Model model, HttpSession session) {
		logger.info("Entering handle Form method wih User {}", user);
		if (user.getUname().equals(null) && user.getUpwd().equals(null)) {
			logger.info("User not registered: {}", user);
			return "login";
		} else {
			try {
				List<User> details = service.checkUser(user.getUname(), user.getUpwd());
				if (details.isEmpty()) {
					model.addAttribute("err", "Login Failed! Enter Valid credentials");
					return "login";
				} else {
					model.addAttribute("uname", user.getUname());
					model.addAttribute("uname", user.getUpwd());
					addUserInSession(user.getUname(), session);
					return "welcome";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "login";
		}
	}

	@RequestMapping(path = "/update-pwd", method = RequestMethod.POST)
	public String updatePwd(@RequestParam("uname") String uname, @RequestParam("oldpwd") String oldpwd,
			@RequestParam("newpwd") String newPwd, @RequestParam("cnfpwd") String cnfnewPwd, Model model,
			HttpSession session) {
		logger.info("Entering Update Pwd method wih User {}", uname + " " + oldpwd + " " + cnfnewPwd + " " + newPwd);
		boolean status = false;
		if (oldpwd == null && newPwd == null && cnfnewPwd == null) {
			return "updatePwd";
		} else {
			try {
				if (newPwd.equals(cnfnewPwd)) {
					status = service.updatePwd(newPwd, uname);
					System.out.println(status);
					if (status == true) {
						System.out.println(uname);
						model.addAttribute("uname");
						model.addAttribute("upwd", newPwd);
						return "successPwd";
					}
				}
			} catch (Exception e) {

				e.printStackTrace();
			}
			return "updatePwd";
		}

	}

	@RequestMapping("/welcome")
	public String welcomePage() {
		return "welcome";
	}

	@RequestMapping("/update")
	public String update() {
		return "updatePwd";
	}

	private void addUserInSession(String userName, HttpSession session) {
		session.setAttribute("uname", userName);
	}
}
