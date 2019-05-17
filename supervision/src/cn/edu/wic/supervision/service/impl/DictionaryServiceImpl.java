package cn.edu.wic.supervision.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.wic.supervision.bean.Dictionary;
import cn.edu.wic.supervision.mapper.DictionaryMapper;
import cn.edu.wic.supervision.service.DictionaryService;

@Service
public class DictionaryServiceImpl implements DictionaryService {
	@Autowired
	private DictionaryMapper dictionaryMapper;

	@Override
	public List<Dictionary> find(Integer type) {
		return dictionaryMapper.findByType(type);
	}
}