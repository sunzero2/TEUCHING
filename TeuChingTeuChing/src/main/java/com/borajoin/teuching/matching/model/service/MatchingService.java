package com.borajoin.teuching.matching.model.service;

import java.util.List;
import java.util.Map;

import org.apache.catalina.LifecycleListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.borajoin.teuching.matching.model.dao.MatchingDao;
import com.borajoin.teuching.matching.model.vo.Post;

@Service
public class MatchingService {
	@Autowired
	MatchingDao matchingDao;
	
	public List<Post> searchword(Map<String, String> data) {
		return matchingDao.searchword(data);
	}
	
	public List<Post> keyword(Map<String, String> data) {
		List<Post> pList = matchingDao.keyword(data);
		System.out.println(pList);
		
		return pList;
	}
}
