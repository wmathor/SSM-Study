package cn.edu.wic.mybatis.mapper.provider;

import java.util.Map;
import org.apache.commons.lang.StringUtils;

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
	
	public String find(Map<String, Object> params) {
		StringBuilder sql = new StringBuilder("");
		// Get Params
		String search = (String) params.get("search");
		String sort = (String) params.get("sort");
		String order = (String) params.get("order");
		Integer page = (Integer) params.get("page");
		Integer rows = (Integer) params.get("rows");
		
		// Process Params
		sort = StringUtils.isEmpty(sort) ? "id" : sort;
		order = StringUtils.isEmpty(order) ? "asc" : order;
		page = page == null || page < 1 ? 1 : page;
		rows = rows == null || rows < 1 ? 50 : rows;
		
		// Splicing SQL statement
		sql.append("SELECT news.id, news.title, news.content, news.time,")
		.append("author.id 'author.id', author.username 'author.username', author.password 'author.password', author.name 'author.name', author.sex 'author.sex', author.age 'author.age' ")
		.append("FROM news ")
		.append("LEFT JOIN user author ON author.id = news.author ");
		if (!StringUtils.isEmpty(search)) {
			sql.append("WHERE news.title LIKE concat('%', #{search}, '%') ");
			sql.append("OR news.content LIKE concat('%', #{search}, '%') ");
			sql.append("OR news.name LIKE concat('%', #{search}, '%') ");
		}
		sql.append("ORDER BY ").append(sort).append(" ").append(order).append(" ");
		sql.append(String.format("LIMIT %d, %d", (page - 1) * rows, rows));
		return sql.toString();
	}
}