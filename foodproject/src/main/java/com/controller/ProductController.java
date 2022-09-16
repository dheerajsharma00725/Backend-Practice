package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

	@RequestMapping("/burger")
	public String burger() {
		return "burger";
	}
	@RequestMapping("/salad")
	public String salad() {
		return "salad";
	}
	@RequestMapping("/pizza")
	public String pizza() {
		return "pizza";
	}
	
}
