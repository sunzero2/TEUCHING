package com.borajoin.teuching.member.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	
	
	
	public int insertFile(Map<String, Object> file) {

		return sqlSession.insert("Notice.insertFile", file);
	}

	public int deleteFile(int noticeNo) {

		return sqlSession.delete("Notice.deleteFile", noticeNo);
	}

}
