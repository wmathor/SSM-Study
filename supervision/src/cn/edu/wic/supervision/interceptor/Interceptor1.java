package cn.edu.wic.supervision.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class Interceptor1 implements HandlerInterceptor {

	// 3. 视图渲染完成之后，整个访问完成
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("Interceptor1 >> afterCompletion");
	}

	// 2. 控制器之后，视图之前
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler, ModelAndView mv)
			throws Exception {
		System.out.println("Interceptor1 >> postHandle");
	}

	// 1. 执行控制器之前运行
	// handler获取后续的资源的所有信息
	// 返回类型，TRUE：继续后面的操作， false：当前请求到此停止
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		System.out.println("Interceptor1 >> preHandle");
		return true;
	}
}