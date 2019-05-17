package cn.edu.wic.supervision.controller.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("employee.StatisticController")
@RequestMapping("/employee/statistic")
public class StatisticController {
	@RequestMapping("/train")
	public String train() {
		return "employee/statistic_train";
	}

	@RequestMapping("/user")
	public String user() {
		return "employee/statistic_user";
	}

	@RequestMapping("/certificate")
	public String certificate() {
		return "employee/statistic_certificate";
	}
}