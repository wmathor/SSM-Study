package cn.edu.wic.supervision.controller.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("employee.DishonestyController")
@RequestMapping("/employee/dishonesty")
public class DishonestyController {
	@RequestMapping
	public String main() {
		return "employee/dishonesty";
	}
}