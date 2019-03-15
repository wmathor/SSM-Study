package cn.edu.wic.mybatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.DeleteProvider;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
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
	
	@Results(value = {
			// Gets the result with the column name 'author' and assigns it to author.id
			@Result(column = "author", property = "author.id")
	})
	@Select("SELECT id, title, content, time, author FROM news WHERE id = #{id}")
	public News get(Integer id);
	
	@Select("SELECT news.id, news.title, news.content, news.time," +
			"author.id 'author.id', author.username 'author.username', author.password 'author.password', author.name 'author.name', author.sex 'author.sex', author.age 'author.age' " +
			"FROM news " +
			"LEFT JOIN user author ON author.id = news.author " +
			"WHERE news.id = #{id}")
	public News getWithAuthor(Integer id);
	
	@Select("SELECT count(*) FROM news")
	public Long findCount();
	
	@SelectProvider(type = NewsMapperProvider.class, method = "find")
	public List<News> find(@Param("search")String search, 
						   @Param("sort")String sort, 
						   @Param("order")String order, 
						   @Param("page")Integer page, 
						   @Param("rows")Integer rows);
}