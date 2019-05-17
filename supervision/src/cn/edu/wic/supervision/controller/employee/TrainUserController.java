package cn.edu.wic.supervision.controller.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("employee.TrainUserController")
@RequestMapping("/employee/train/user")
public class TrainUserController {
	@RequestMapping
	public String main() {
		return "employee/train_user";
	}
}