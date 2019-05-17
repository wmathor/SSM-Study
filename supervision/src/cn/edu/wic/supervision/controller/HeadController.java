package cn.edu.wic.supervision.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/head")
public class HeadController {
	@RequestMapping
	public String main() {
		return "head";
	}
}