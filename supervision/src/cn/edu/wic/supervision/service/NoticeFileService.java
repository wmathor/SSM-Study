package cn.edu.wic.supervision.service;

import java.util.List;

import cn.edu.wic.supervision.bean.NoticeFile;
import cn.edu.wic.supervision.model.Table;

public interface NoticeFileService {
	public void save(NoticeFile file);

	public Long findCount(Integer notice);

	public List<NoticeFile> find(Integer notice, Table table);

	public List<NoticeFile> findFiles(Integer notice, Integer[] ids);
}