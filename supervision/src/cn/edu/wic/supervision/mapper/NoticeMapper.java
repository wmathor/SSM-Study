package cn.edu.wic.supervision.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;
import org.springframework.stereotype.Repository;

import cn.edu.wic.supervision.bean.Notice;
import cn.edu.wic.supervision.mapper.provider.NoticeMapperProvider;

@Repository
public interface NoticeMapper {
	// 结果映射， 数据库列 --> Bean属性
	@Results({ @Result(column = "type", property = "type.id"),
			@Result(column = "state", property = "state.id"),
			@Result(column = "author", property = "author.id") })
	@Select("select id,title,content,time,type,state,author" + " from notice"
			+ " where id=#{id}")
	public Notice get(@Param("id") Integer id);

	@Insert("insert into notice"
			+ " (title,content,time,type,state,author,_s)"
			+ " value"
			+ " (#{notice.title},#{notice.content},now(),#{notice.type.id},#{notice.state.id},#{notice.author.id},1)")
	public void save(@Param("notice") Notice notice);

	@Update("update notice" + " set title=#{notice.title}"
			+ ",content=#{notice.content}" + ",type=#{notice.type.id}"
			+ ",state=#{notice.state.id}" + " where id=#{notice.id}")
	public void update(@Param("notice") Notice notice);

	@Select("select notice.id" + ",type.text 'type.text'" + ",notice.title"
			+ ",notice.time" + ",author.name 'author.name'"
			+ ",state.text 'state.text'" + " from notice"
			+ " left join dictionary type on type.id=notice.type"
			+ " left join user author on author.id=notice.author"
			+ " left join dictionary state on state.id=notice.state"
			+ " where notice._s>0" + " order by notice.time desc"
			+ " limit ${(page-1)*rows},${rows}")
	public List<Notice> find(@Param("page") Integer page,
			@Param("rows") Integer rows);

	@Select("select count(*) from notice where _s>0")
	public long findCount();

	@UpdateProvider(type = NoticeMapperProvider.class, method = "delete")
	public int delete(@Param("ids") Integer[] ids);
}