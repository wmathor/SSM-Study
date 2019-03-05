package cn.edu.wic.spring04.dao;

import cn.edu.wic.spring04.bean.User;

public interface UserDao {
	public void update(User user);

	public void save(User user);
}