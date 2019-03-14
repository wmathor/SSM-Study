package cn.edu.wic.mybatis.mapper.provider;

import java.util.Map;

public class NewsMapperProvider {

	public String delete(Map<String, Object> params) {
		Integer[] ids = (Integer[]) params.get("ids");
		StringBuilder sql = new StringBuilder("");

		// Splicing SQL statement
		sql.append("DELETE FROM news WHERE id IN");
		// (#{ids[0]}, #{ids[1]}, #{ids[2]}, ...)
		for (int i = 0; i < ids.length; i++) {
			if (i == 0)
				sql.append("(");
			else
				sql.append(",");
			sql.append(String.format("#{ids[%d]}", i));
		}
		sql.append(")");

		return sql.toString();
	}
}