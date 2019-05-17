package cn.edu.wic.supervision.controller.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("employee.CertificateController")
@RequestMapping("/employee/certificate")
public class CertificateController {
	@RequestMapping
	public String main() {
		return "employee/certificate";
	}
}