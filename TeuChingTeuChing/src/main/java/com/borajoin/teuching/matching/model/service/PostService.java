package com.borajoin.teuching.matching.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.borajoin.teuching.matching.model.dao.PostDao;
import com.borajoin.teuching.matching.model.vo.Post;

@Service
public class PostService {

	@Autowired
	PostDao postDao;
	
	public Post postDetail(Post data) {
		return postDao.postDetail(data);
	}
	
	public int insertPost() {
		return 0;
	}
}
