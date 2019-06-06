package cn.edu.wic.supervision.controller.admin;

import org.springframework.jdbc.BadSqlGrammarException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("admin.UserController")
@RequestMapping("/admin/user")
public class UserController {
	@RequestMapping
	public String main() {
		return "admin/user";
	}
	
	// 400
	@RequestMapping("/a")
	public String a(@RequestParam("X")String x) {
		return "admin/user";
	}
	
	@RequestMapping("/b")
	public String b() {
		if (true) {
			throw new CannotGetJdbcConnectionException(null, null);
		}
		return "admin/user";
	}
	
	@RequestMapping("/c")
	public String c() {
		if (true) {
			throw new BadSqlGrammarException(null, null, null);
		}
		return "admin/user";
	}
	
	@RequestMapping("/d")
	public String d() {
		if (true) {
			throw new RuntimeException();
		}
		return "admin/user";
	}
	
	@RequestMapping("/e")
	public String e() {
		if (true) {
			System.out.println(1 / 0);;
		}
		return "admin/user";
	}
	
	@ExceptionHandler({ArithmeticException.class})
	public String arithmeticExceptionResovler() {
		return "error/exception_arithmetic";
	}
}