package cn.edu.wic.supervision.controller.admin;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import cn.edu.wic.supervision.bean.Notice;
import cn.edu.wic.supervision.bean.User;
import cn.edu.wic.supervision.model.SessionUser;
import cn.edu.wic.supervision.service.DictionaryService;
import cn.edu.wic.supervision.service.NoticeService;

@Controller("admin.NoticeFormController")
@RequestMapping("/admin/notice/form")
public class NoticeFormController {
	@Autowired
	private DictionaryService dictionaryService;
	@Autowired
	private NoticeService noticeService;

	@ModelAttribute("notice")
	public Notice model(Notice notice, Model model) {
		model.addAttribute("types", dictionaryService.find(1));
		model.addAttribute("states", dictionaryService.find(2));
		return notice;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String get(@RequestParam(required = false) Integer id, Model model) {
		// id 添加，编辑
		if (id != null) {
			model.addAttribute("notice", noticeService.get(id));
		}
		return "admin/notice_form";
	}

	// @SessionAttribute("user") 取session里面的user
	// HttpSession
	@RequestMapping(method = RequestMethod.POST)
	public String post(@Validated @ModelAttribute("notice") Notice notice,
			BindingResult errors, @SessionAttribute("user") SessionUser suser) {
		if (errors.hasErrors()) {
			return "admin/notice_form";
		}
		if (notice.getId() == null) {
			User user = new User();
			user.setId(suser.getId());
			notice.setAuthor(user);
			notice.setTime(new Date());
			noticeService.save(notice);
		} else {
			noticeService.update(notice);
		}

		return "redirect:/admin/notice";
	}
}