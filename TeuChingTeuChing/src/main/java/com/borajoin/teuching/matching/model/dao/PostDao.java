package com.borajoin.teuching.matching.model.dao;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.borajoin.teuching.matching.model.vo.Post;

@Repository
public class PostDao {
	@Autowired
	SqlSession sqlSession;
	
	public Post postDetail(Post data) {
		return sqlSession.selectOne("Matching.postDetail", data);
	}
}
