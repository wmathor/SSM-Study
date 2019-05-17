package cn.edu.wic.supervision.controller.admin;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import cn.edu.wic.supervision.bean.Notice;
import cn.edu.wic.supervision.bean.NoticeFile;
import cn.edu.wic.supervision.model.Table;
import cn.edu.wic.supervision.service.NoticeFileService;
import cn.edu.wic.supervision.service.NoticeService;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

@Controller("admin.NoticeFileController")
@RequestMapping("/admin/notice/file")
public class NoticeFileController {
	@Autowired
	private NoticeFileService noticeFileService;

	@Autowired
	private NoticeService noticeService;

	@RequestMapping
	public String main(@RequestParam("notice") Integer notice) {
		return "admin/notice_file";
	}

	@RequestMapping(value = "/upload", produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String upload(@RequestParam("notice") Integer notice,
			@RequestParam("upload") MultipartFile upload) {
		JSONObject result = new JSONObject();

		try {
			// upload.transferTo(new File("d:\\",
			// upload.getOriginalFilename()));
			NoticeFile file = new NoticeFile();
			file.setFilename(upload.getOriginalFilename());
			file.setSize(upload.getSize());
			file.setFile(upload.getBytes());
			file.setNotice(notice);
			noticeFileService.save(file);

			result.put("state", "success");
		} catch (Exception e) {
			e.printStackTrace();
			result.put("state", "error");
			result.put("message", e.getLocalizedMessage());
		}

		return result.toJSONString();
	}

	@RequestMapping(value = "/data", produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String data(@RequestParam("notice") Integer notice, Table table) {
		JSONObject json = new JSONObject();

		try {
			Long count = noticeFileService.findCount(notice);
			List<NoticeFile> files = noticeFileService.find(notice, table);

			json.put("count", count);
			JSONArray data = new JSONArray();
			for (NoticeFile i : files) {
				JSONObject o = new JSONObject();
				o.put("id", i.getId());
				o.put("filename", i.getFilename());
				o.put("size", i.getSize());
				data.add(o);
			}
			json.put("data", data);
			json.put("code", 0);
		} catch (Exception e) {
			e.printStackTrace();
			json.put("code", -1);
			json.put("message", e.getLocalizedMessage());
		}
		return json.toJSONString();
	}

	@RequestMapping("/download")
	public ResponseEntity<byte[]> download(
			@RequestParam("notice") Integer notice,
			@RequestParam("ids") Integer[] ids) throws IOException {
		List<NoticeFile> files = noticeFileService.findFiles(notice, ids);
		if (files.size() == 0) {
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
			String filename = new String("Tips.txt".getBytes(), "ISO-8859-1");
			headers.setContentDispositionFormData("attachment", filename);
			return new ResponseEntity<byte[]>("File_Not_Found".getBytes(),
					headers, HttpStatus.CREATED);
		} else if (files.size() == 1) {
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
			String filename = files.get(0).getFilename();
			filename = new String(filename.getBytes(), "ISO-8859-1");
			headers.setContentDispositionFormData("attachment", filename);
			return new ResponseEntity<byte[]>(files.get(0).getFile(), headers,
					HttpStatus.CREATED);
		} else {
			Notice myNotice = noticeService.get(notice);
			ZipOutputStream out = null;
			ByteArrayOutputStream bout = null;
			try {
				bout = new ByteArrayOutputStream();
				out = new ZipOutputStream(bout);
				for (NoticeFile i : files) {
					try {
						out.putNextEntry(new ZipEntry(myNotice.getTitle()
								+ File.separator + i.getFilename()));
						out.write(i.getFile());
					} catch (Exception e) {
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (out != null)
					out.close();
			}
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
			String filename = myNotice.getTitle() + ".zip";
			filename = new String(filename.getBytes(), "ISO-8859-1");
			headers.setContentDispositionFormData("attachment", filename);
			return new ResponseEntity<byte[]>(bout.toByteArray(), headers,
					HttpStatus.CREATED);
		}
	}
}