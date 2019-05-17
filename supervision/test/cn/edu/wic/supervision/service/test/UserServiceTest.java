package cn.edu.wic.supervision.service.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.wic.supervision.bean.Login;
import cn.edu.wic.supervision.service.UserService;

@ContextConfiguration(locations="classpath:spring.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class UserServiceTest
{
	@Autowired
	private UserService userService;
	
	@Test
	public void login(){
		Login login = new Login();
		login.setUsername("admin");
		login.setPassword("admin");
		System.out.println(userService.login(login));
	}
}
