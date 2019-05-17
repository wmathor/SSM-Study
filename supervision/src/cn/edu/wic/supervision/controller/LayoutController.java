package cn.edu.wic.supervision.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/layout")
public class LayoutController {
	@RequestMapping("/header")
	public String header() {
		return "layout_header";
	}

	@RequestMapping("/side/index")
	public String sideIndex() {
		return "layout_side_index";
	}

	@RequestMapping("/side/employee")
	public String sideEmployee() {
		return "layout_side_employee";
	}

	@RequestMapping("/side/enterprise")
	public String sideTrain() {
		return "layout_side_enterprise";
	}

	@RequestMapping("/side/admin")
	public String sideAdmin() {
		return "layout_side_admin";
	}

	@RequestMapping("/footer")
	public String footer() {
		return "layout_footer";
	}
}