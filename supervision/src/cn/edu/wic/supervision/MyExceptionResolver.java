package cn.edu.wic.supervision;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.dao.DataAccessException;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class MyExceptionResolver implements HandlerExceptionResolver {

	@Override
	public ModelAndView resolveException(HttpServletRequest requst,
			HttpServletResponse response, Object handler, Exception exception) {
		ModelAndView mv = new ModelAndView();
		if (exception instanceof DataAccessException) {
			mv.setViewName("error/exception_dao");
			mv.addObject("message", "Please check your Database, <a href = 'mailto:73916037@qq.com'>Call me</a>");
		} else {
			mv.setViewName("error/exception");
			mv.addObject("message", "Please call administrator, <a href = 'mailto:73916037@qq.com'>Call me</a>");
		}
		return mv;
	}
}