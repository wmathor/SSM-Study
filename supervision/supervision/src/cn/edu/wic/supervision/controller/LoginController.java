package cn.edu.wic.supervision.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import cn.edu.wic.supervision.bean.Login;
import cn.edu.wic.supervision.model.SessionUser;
import cn.edu.wic.supervision.service.UserService;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	private UserService userService;

	/*
	 * @ModelAttribute Method above, all controller methods before running
	 * Param login auto create object and to accept param
	 * return Login put into Model
	 */
	@ModelAttribute
	public Login loginModel(Login login) {
		return login;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String get() {
		return "login";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String post(@ModelAttribute Login login) {
		SessionUser user = userService.login(login);
		if (user == null)
			return "login";
		System.out.println("Login Success");
		return "login";
	}
}