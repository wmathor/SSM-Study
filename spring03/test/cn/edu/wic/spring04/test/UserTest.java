package cn.edu.wic.spring04.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.wic.spring04.bean.User;
import cn.edu.wic.spring04.service.UserService;

public class UserTest {

	@Test
	public void user() {
		System.out.println("Start initializing Spring container");
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		System.out.println("Spring container initialization is complete");

		User user1 = context.getBean(User.class);
		User user2 = context.getBean(User.class);
		System.out.println(user1 == user2);
	}
	
	@Test
	public void service() {
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService = context.getBean(UserService.class);
		userService.save(new User());
		userService.update(new User());
	}
}