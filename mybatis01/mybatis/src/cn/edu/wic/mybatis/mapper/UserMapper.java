package cn.edu.wic.mybatis.mapper;

import java.util.List;
import cn.edu.wic.mybatis.bean.User;

public interface UserMapper {
	public void save(User user);

	public void update(Integer id);

	public void delete(Integer id);

	public User get(Integer id);

	public List<User> find();
}