package cn.edu.wic.supervision.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("admin.UserController")
@RequestMapping("/admin/user")
public class UserController {
	@RequestMapping
	public String main() {
		return "admin/user";
	}
}