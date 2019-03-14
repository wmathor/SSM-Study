package cn.edu.wic.mybatis.mapper;

import org.apache.ibatis.annotations.DeleteProvider;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import cn.edu.wic.mybatis.bean.News;
import cn.edu.wic.mybatis.mapper.provider.NewsMapperProvider;

@Repository
public interface NewsMapper {
	@Insert("INSERT INTO news(title, content, time, author) " +
			"VALUE(#{title}, #{content}, #{time}, #{author.id})")
	@Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")  // Returns PrimaryKey
	public int save(News news); // Returns the number of records affected

	@Update("Update news SET title = #{news.title}, content = #{news.content} " +
			"WHERE id = #{id}")
	public int update(@Param("id")Integer id, @Param("news")News news);

	@DeleteProvider(type=NewsMapperProvider.class, method = "delete")
	public int delete(@Param("ids")Integer[] ids);	
}