package cn.edu.wic.supervision.mapper;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import cn.edu.wic.supervision.bean.Login;
import cn.edu.wic.supervision.model.SessionUser;

@Repository
public interface UserMapper {
	@Select("select id,name from user"
			+ " where username=#{username} and password=#{password}")
	public SessionUser login(Login login);
}