package cn.edu.wic.supervision.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import cn.edu.wic.supervision.bean.Dictionary;

@Repository
public interface DictionaryMapper {
	@Select("select id,text from dictionary where type=#{type}")
	public List<Dictionary> findByType(@Param("type") Integer type);
}