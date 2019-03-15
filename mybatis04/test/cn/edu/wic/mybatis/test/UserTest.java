package cn.edu.wic.mybatis.test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;
import cn.edu.wic.mybatis.bean.User;
import cn.edu.wic.mybatis.mapper.UserMapper;

public class UserTest {

	@Test
	public void save() throws IOException {
		User user = new User();
		user.setUsername("admin");
		user.setPassword("admin");
		user.setName("系统管理员");
		user.setAge(20);
		user.setSex("男");

//		Save Object User to DataBase
//		first init mybatis
		InputStream inputStream = Resources.getResourceAsStream("mybatis.xml");
//		Factor function create SalSession, one program just have one
//		SqlSession
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
//		create session by factory == DataBase connect
		SqlSession session = factory.openSession();

//		operate DataBase
		try {
//			session.insert("cn.edu.wic.mybatis.mapper.UserMapper.save", user);
			UserMapper userMapper = session.getMapper(UserMapper.class);
			userMapper.save(user);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}
	
	@Test
	public void update() throws IOException {
		InputStream inputStream = Resources.getResourceAsStream("mybatis.xml");
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session = factory.openSession();

		try {
			UserMapper userMapper = session.getMapper(UserMapper.class);
			userMapper.update(15);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}
	
	@Test
	public void delete() throws IOException {
		InputStream inputStream = Resources.getResourceAsStream("mybatis.xml");
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session = factory.openSession();

		try {
			UserMapper userMapper = session.getMapper(UserMapper.class);
			userMapper.delete(1);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}
	
	@Test
	public void get() throws IOException {
		InputStream inputStream = Resources.getResourceAsStream("mybatis.xml");
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session = factory.openSession();

		try {
			UserMapper userMapper = session.getMapper(UserMapper.class);
			User user = userMapper.get(15);
			System.out.println(user);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}
	
	@Test
	public void find() throws IOException {
		InputStream inputStream = Resources.getResourceAsStream("mybatis.xml");
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session = factory.openSession();

		try {
			UserMapper userMapper = session.getMapper(UserMapper.class);
			List<User> users = userMapper.find();
			for (User u : users)
				System.out.println(u);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
	}
}