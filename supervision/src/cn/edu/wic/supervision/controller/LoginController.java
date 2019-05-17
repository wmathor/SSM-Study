package cn.edu.wic.supervision.controller;

import javax.servlet.http.HttpSession;

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
	 * @ModelAttribute方法上面，所有的控制器方法之前运行 参数login，自动创建对象，并且接受请求参数
	 * 返回值Login放到Model里面
	 */
	@ModelAttribute
	public Login loginModel(Login login) {
		return login;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String get(HttpSession session) {
		session.invalidate();
		return "login";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String post(@ModelAttribute Login login, HttpSession session) {
		SessionUser user = userService.login(login);
		if (user == null) {
			return "login";
		}

		session.setAttribute("user", user);

		// 重定向，发生在服务器端
		// return "forward:/index";

		// 重定向，发生在客户端
		return "redirect:/index";
	}
}