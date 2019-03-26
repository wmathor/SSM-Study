package cn.edu.wic.supervision.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.edu.wic.supervision.bean.Login;
import cn.edu.wic.supervision.mapper.UserMapper;
import cn.edu.wic.supervision.model.SessionUser;
import cn.edu.wic.supervision.service.UserService;

@Service
public class UserServiceImpli implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public SessionUser login(Login login) {
		return userMapper.login(login);
	}
}