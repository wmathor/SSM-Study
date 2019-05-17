package cn.edu.wic.supervision.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("admin.OrganizeController")
@RequestMapping("/admin/organize")
public class OrganizeController {
	@RequestMapping
	public String main() {
		return "admin/organize";
	}
}