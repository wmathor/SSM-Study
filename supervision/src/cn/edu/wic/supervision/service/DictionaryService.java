package cn.edu.wic.supervision.service;

import java.util.List;

import cn.edu.wic.supervision.bean.Dictionary;

public interface DictionaryService {
	public List<Dictionary> find(Integer type);
}