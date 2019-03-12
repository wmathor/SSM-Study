package cn.edu.wic.mybatis.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.wic.mybatis.bean.User;

@Repository
@Transactional(readOnly = true)
public interface UserMapper {
	@Transactional(readOnly = false)
	public void save(User user);

	@Transactional(readOnly = false)
	public void update(Integer id);
	
	@Transactional(readOnly = false)
	public void delete(Integer id);

	public User get(Integer id);

	public List<User> find();
}