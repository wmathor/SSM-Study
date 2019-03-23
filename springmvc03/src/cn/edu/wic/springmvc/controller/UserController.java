package cn.edu.wic.springmvc.controller;

import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.wic.springmvc.model.User;

@Controller
@RequestMapping("/user")
public class UserController {
	@RequestMapping("/get/{id}")
	// Pseudo static
	public String get(@PathVariable("id") Integer id) {
		System.out.println(id);
		return "user";
	}

	@RequestMapping("/test1")
	// Pseudo static
	public String test1(String username, Integer age) {
		System.out.println(String.format("%s, %d", username, age));
		return "user";
	}

	@RequestMapping("/test2")
	// Pseudo static
	public String test2(
			@RequestParam(value = "name", required = false) String username,
			@RequestParam(defaultValue = "0") Integer age) {
		System.out.println(String.format("%s, %d", username, age));
		return "user";
	}

	@RequestMapping("/test3")
	// Param is Object
	public String test3(User user) {
		System.out.println(user);
		return "user";
	}

	@RequestMapping("/test4")
	// Params is Array
	// test4?ids=1&ids=2...
	public String test4(Integer[] ids) {
		System.out.println(Arrays.toString(ids));
		return "user";
	}

	@RequestMapping("/test5")
	// get Headers of User-Agent
	public String test5(@RequestHeader("User-Agent") String agent) {
		System.out.println(agent);
		return "user";
	}

	@RequestMapping("/test6")
	// get Cookie
	public String test6(@CookieValue("JSESSIONID") String sessionId) {
		System.out.println(sessionId);
		return "user";
	}
}