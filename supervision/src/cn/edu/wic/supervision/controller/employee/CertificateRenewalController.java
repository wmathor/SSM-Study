package cn.edu.wic.supervision.controller.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("employee.CertificateRenewalController")
@RequestMapping("/employee/certificate/renewal")
public class CertificateRenewalController {
	@RequestMapping
	public String main() {
		return "employee/certificate_renewal";
	}
}