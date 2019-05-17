package cn.edu.wic.supervision.mapper.provider;

import org.apache.ibatis.annotations.Param;

public class NoticeFileMapperProvider {
	public String findFilesByIds(@Param("notice") Integer notice,
			@Param("ids") Integer[] ids) {
		StringBuilder sql = new StringBuilder();

		sql.append("select id,filename,size,file from notice_file");
		sql.append(" where notice=#{notice} and id in(");
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