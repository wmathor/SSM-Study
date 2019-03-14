package cn.edu.wic.mybatis.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.wic.mybatis.bean.User;
import cn.edu.wic.mybatis.mapper.UserMapper;

@ContextConfiguration(locations="classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class UserMapperTest {
	@Autowired
	private UserMapper userMapper;
	
	@Test
	public void get() {
		User user = userMapper.get(1);
		System.out.println(user);
	}
	
	@Test
	public void delete() {
		userMapper.delete(3);
	}
}