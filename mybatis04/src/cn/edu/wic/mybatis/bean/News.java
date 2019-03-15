package cn.edu.wic.mybatis.bean;

import java.util.Date;

public class News {
	private Integer id;
	private String title;
	private String content;
	private Date time;
	private User author;

	@Override
	public String toString() {
		return String
				.format("%d,%s,%s,%s,%s", id, title, content, time, author.toString());
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public User getAuthor() {
		return author;
	}

	public void setAuthor(User author) {
		this.author = author;
	}
}