package cn.edu.wic.spring04.dao.impl;

import org.springframework.stereotype.Repository;
import cn.edu.wic.spring04.bean.User;
import cn.edu.wic.spring04.dao.UserDao;

@Repository(value = "userDao")
public class UserDaoImpl implements UserDao {

	@Override
	public void update(User user) {
		System.out.println("Update User");
	}

	@Override
	public void save(User user) {
		System.out.println("Save User");
	}
}