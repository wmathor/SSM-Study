package cn.edu.wic.supervision.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.wic.supervision.bean.Notice;
import cn.edu.wic.supervision.mapper.NoticeMapper;
import cn.edu.wic.supervision.service.NoticeService;

@Transactional(readOnly = true)
@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeMapper noticeMapper;

	@Override
	public Notice get(Integer id) {
		return noticeMapper.get(id);
	}

	@Transactional(readOnly = false)
	@Override
	public void save(Notice notice) {
		noticeMapper.save(notice);
	}

	@Transactional(readOnly = false)
	@Override
	public void update(Notice notice) {
		noticeMapper.update(notice);
	}

	@Override
	public List<Notice> find(Integer page, Integer rows) {
		return noticeMapper.find(page, rows);
	}

	@Override
	public long findCount() {
		return noticeMapper.findCount();
	}

	@Transactional(readOnly = false)
	@Override
	public void delete(Integer[] ids) {
		noticeMapper.delete(ids);
	}
}