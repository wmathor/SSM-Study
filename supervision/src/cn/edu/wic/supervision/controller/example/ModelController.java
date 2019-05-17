package cn.edu.wic.supervision.controller.example;

import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.wic.supervision.controller.example.model.User;

@Controller("example.ModelController")
@RequestMapping("/example/model")
public class ModelController {
	@RequestMapping
	public String main(Model model, ModelMap mm, Map<String, Object> map) {
		model.addAttribute("a", "Model传递的值");
		mm.addAttribute("b", "ModelMap传递的值");
		map.put("c", "Map传递的值");

		// 适用于List, Set
		String[] citys = new String[] { "武汉", "宜昌", "襄阳", "十堰", "孝感" };
		model.addAttribute("citys", citys);

		Map<String, Object> departments = new LinkedHashMap<String, Object>();
		departments.put("1", "信息工程学部");
		departments.put("2", "机电学部");
		departments.put("3", "人文学部");
		model.addAttribute("departments", departments);

		List<User> users = new ArrayList<User>();
		users.add(new User(1, "张三", new Date(), 8000f));
		users.add(new User(2, "张三", new Date(), 8000f));
		users.add(new User(3, "张三", new Date(), 8000f));
		users.add(new User(3, "张三", new Date(), 8000f));
		users.add(new User(4, "张三", new Date(), 8000f));
		users.add(new User(5, "张三", new Date(), 8000f));
		users.add(new User(6, "张三", new Date(), 8000f));
		users.add(new User(7, "张三", new Date(), 8000f));
		users.add(new User(8, "张三", new Date(), 8000f));
		users.add(new User(1, "张三", new Date(), 8000f));
		users.add(new User(1, "张三", new Date(), 8000f));
		users.add(new User(1, "张三", new Date(), 8000f));
		users.add(new User(1, "张三", new Date(), 8000f));
		model.addAttribute("users", users);
		return "example/model";
	}
}