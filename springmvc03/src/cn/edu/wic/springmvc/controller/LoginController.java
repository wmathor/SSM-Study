package cn.edu.wic.springmvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller // default value = "loginController"
@RequestMapping("/login")
public class LoginController {
	@RequestMapping(method = RequestMethod.GET, params = {"id", "token=city"}, headers = "Cookie")
	public String get(HttpServletRequest request, Model model) {
		model.addAttribute("title", "User Login");
		return "login";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String post(HttpServletRequest request, Model model) {
		model.addAttribute("title", "User Login");
		return "login";
	}
}