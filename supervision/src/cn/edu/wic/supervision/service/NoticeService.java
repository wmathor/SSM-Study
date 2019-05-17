package cn.edu.wic.supervision.service;

import java.util.List;

import cn.edu.wic.supervision.bean.Notice;

public interface NoticeService {
	public Notice get(Integer id);

	public void save(Notice notice);

	public void update(Notice notice);

	public List<Notice> find(Integer page, Integer rows);

	public long findCount();

	public void delete(Integer[] ids);
}