package cn.edu.wic.supervision.controller.admin;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import cn.edu.wic.supervision.bean.Notice;
import cn.edu.wic.supervision.model.Table;
import cn.edu.wic.supervision.service.NoticeService;

@Controller("admin.NoticeController")
@RequestMapping("/admin/notice")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;

	@RequestMapping
	public String main() {
		return "admin/notice";
	}

	/*
	 * produces="text/json;charset=UTF-8"：避免中文乱码
	 * 
	 * @ResponseBody:直接返回值到浏览器
	 */
	@RequestMapping(value = "/data", produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String data(Table table) {
		long count = noticeService.findCount();
		List<Notice> notices = noticeService.find(table.getPage(),
				table.getLimit());

		JSONObject json = new JSONObject();
		json.put("code", 0);
		json.put("msg", "");
		json.put("count", count);

		JSONArray data = new JSONArray();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for (Notice i : notices) {
			JSONObject o = new JSONObject();
			o.put("id", i.getId());
			o.put("title", i.getTitle());
			o.put("time",
					i.getTime() == null ? "" : dateFormat.format(i.getTime()));
			o.put("type", i.getType() == null ? "" : i.getType().getText());
			o.put("state", i.getState() == null ? "" : i.getState().getText());
			o.put("author", i.getAuthor() == null ? "" : i.getAuthor()
					.getName());
			data.add(o);
		}
		json.put("data", data);

		return json.toJSONString();
	}

	@RequestMapping("/delete")
	@ResponseBody
	public String delete(@RequestParam("ids") Integer[] ids) {
		JSONObject result = new JSONObject();
		try {
			noticeService.delete(ids);
			result.put("state", "success");
		} catch (Exception e) {
			e.printStackTrace();
			result.put("state", "error");
			result.put("message", e.getLocalizedMessage());
		}

		return result.toJSONString();
	}
}