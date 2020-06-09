package com.borajoin.teuching.message.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MessageDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int insertMessage(Map<String, Object> commandMap) {
		return sqlSession.insert("Message.insertMessage", commandMap);
	}
}
