package cn.edu.wic.mybatis.test;

import java.util.Date;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import cn.edu.wic.mybatis.bean.News;
import cn.edu.wic.mybatis.mapper.NewsMapper;
import cn.edu.wic.mybatis.mapper.UserMapper;

@ContextConfiguration(locations = "classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class NewsMapperTest {

	@Autowired
	private UserMapper userMapper;
	@Autowired
	private NewsMapper newsMapper;

	@Test
	public void save() {
		News news = new News();
		news.setTitle("News Title");
		news.setContent("News Content");
		news.setTime(new Date());
		news.setAuthor(userMapper.get(1));
		for (int i = 0; i < 1000; i++) {
			int result = newsMapper.save(news);
			System.out.printf("%d users are saved, Primary Key is %d\n", result, news.getId());
		}
	}
	
	@Test
	public void update() {
		News news = new News();
		news.setTitle("Update News Title");
		news.setContent("Update News Content");
		
		int result = newsMapper.update(2, news);
		System.out.printf("%d News are updated\n", result);
	}
	
	@Test
	public void delete() {
		Integer[] ids = {1, 2, 3, 4, 5, 6};
		int result = newsMapper.delete(ids);
		System.out.printf("%d News are deleted", result);
	}
	
	@Test
	public void get() {
		News news = newsMapper.get(5);
		System.out.println(news.toString());
	}
	
	@Test
	public void getWithAuthor() {
		News news = newsMapper.getWithAuthor(5);
		System.out.println(news.toString());
	}
	
	@Test
	public void find() {
		List<News> news = newsMapper.find(null, null, null, null, null);
		for (News n : news)
			System.out.println(n);
	}
}
