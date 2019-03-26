package cn.edu.wic.supervision.mapper;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import cn.edu.wic.supervision.bean.Login;
import cn.edu.wic.supervision.model.SessionUser;

@Repository
public interface UserMapper {

	@Select("SELECT id,name FROM user WHERE username=#{username} AND password=#{password}")
	public SessionUser login(Login login);
}