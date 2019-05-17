package cn.edu.wic.supervision.controller;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.wic.supervision.bean.Questionnaire;

@Controller
@RequestMapping("/questionnaire")
public class QuestionnaireController {
	@ModelAttribute
	public void model(Questionnaire questionnaire, Model model) {
		model.addAttribute("questionnaire", questionnaire);

		Map<Integer, String> classes = new LinkedHashMap<Integer, String>();
		classes.put(1, "16级软件1班");
		classes.put(2, "16级软件2班");
		classes.put(3, "16级软件3班");
		classes.put(4, "16级软件4班");
		model.addAttribute("classes", classes);

		String[] interest = new String[] { "c", "c++", "java", "python",
				"javascript" };
		model.addAttribute("interest", interest);
	}

	@RequestMapping(method = RequestMethod.GET)
	public String get() {
		return "questionnaire";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String post(
			@Validated @ModelAttribute("questionnaire") Questionnaire questionnaire,
			BindingResult errors) {
		if (errors.hasErrors()) {
			return "questionnaire";
		}

		if ("管理员".equals(questionnaire.getName())) {
			errors.addError(new FieldError("questionnaire", "name", "管理员就免了吧"));
			return "questionnaire";
		}

		if ("张三".equals(questionnaire.getName())) {
			errors.addError(new ObjectError("questionnaire", "你已经被加入了黑名单"));
			return "questionnaire";
		}
		return "questionnaire";
	}
}