package cn.edu.wic.supervision.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.wic.supervision.bean.Notice;
import cn.edu.wic.supervision.service.NoticeService;

@Controller
@RequestMapping({ "/", "/index" })
public class IndexController {
	@Autowired
	private NoticeService noticeService;

	@RequestMapping
	public String main(Model model) {
		List<Notice> notices = noticeService.find(1, 10);
		model.addAttribute("notices", notices);
		return "index";
	}
}