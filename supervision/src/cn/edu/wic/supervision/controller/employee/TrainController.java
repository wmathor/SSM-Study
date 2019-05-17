package cn.edu.wic.supervision.controller.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("employee.TrainController")
@RequestMapping("/employee/train")
public class TrainController {
	@RequestMapping
	public String main() {
		return "employee/train";
	}
}