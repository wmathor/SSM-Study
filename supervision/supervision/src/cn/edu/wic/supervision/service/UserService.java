package cn.edu.wic.supervision.service;

import cn.edu.wic.supervision.bean.Login;
import cn.edu.wic.supervision.model.SessionUser;

public interface UserService {
	
	public SessionUser login(Login login);
}