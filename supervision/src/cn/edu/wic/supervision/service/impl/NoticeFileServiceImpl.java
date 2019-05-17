package cn.edu.wic.supervision.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.wic.supervision.bean.NoticeFile;
import cn.edu.wic.supervision.mapper.NoticeFileMapper;
import cn.edu.wic.supervision.model.Table;
import cn.edu.wic.supervision.service.NoticeFileService;

@Service
public class NoticeFileServiceImpl implements NoticeFileService {
	@Autowired
	private NoticeFileMapper noticeFileMapper;

	@Override
	public void save(NoticeFile file) {
		noticeFileMapper.save(file);
	}

	@Override
	public Long findCount(Integer notice) {
		return noticeFileMapper.findCount(notice);
	}

	@Override
	public List<NoticeFile> find(Integer notice, Table table) {
		return noticeFileMapper.find(notice, table);
	}

	@Override
	public List<NoticeFile> findFiles(Integer notice, Integer[] ids) {
		return noticeFileMapper.findFilesByIds(notice, ids);
	}
}