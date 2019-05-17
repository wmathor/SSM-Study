package cn.edu.wic.supervision.controller.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("employee.UserController")
@RequestMapping("/employee/user")
public class UserController {
	@RequestMapping
	public String main() {
		return "employee/user";
	}
}