package cn.edu.wic.supervision.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Repository;

import cn.edu.wic.supervision.bean.NoticeFile;
import cn.edu.wic.supervision.mapper.provider.NoticeFileMapperProvider;
import cn.edu.wic.supervision.model.Table;

@Repository
public interface NoticeFileMapper {
	@Select("insert into notice_file" + "(filename, size, file, notice)"
			+ " value(#{filename},#{size},#{file},#{notice})")
	public void save(NoticeFile file);

	@Select("select count(*) from notice_file where notice=#{notice}")
	public Long findCount(Integer notice);

	// $与#的区别，sql语句观察
	@Select("select id,filename,size from notice_file"
			+ " where notice=#{notice}"
			+ " limit ${(table.page-1)*table.limit},${table.limit}")
	public List<NoticeFile> find(@Param("notice") Integer notice,
			@Param("table") Table table);

	@SelectProvider(type = NoticeFileMapperProvider.class, method = "findFilesByIds")
	public List<NoticeFile> findFilesByIds(@Param("notice") Integer notice,
			@Param("ids") Integer[] ids);
}