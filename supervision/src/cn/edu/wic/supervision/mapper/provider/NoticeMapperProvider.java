package cn.edu.wic.supervision.mapper.provider;

import org.apache.ibatis.annotations.Param;

public class NoticeMapperProvider {
	public String delete(@Param("ids") Integer[] ids) {
		StringBuilder sql = new StringBuilder();
		sql.append("update notice set _s=-1 where id in(");
		// #{ids[0]},#{ids[1]}
		for (int i = 0; i < ids.length; i++) {
			if (i != 0) {
				sql.append(",");
			}
			sql.append(String.format("#{ids[%d]}", i));
		}
		sql.append(")");
		return sql.toString();
	}
}