package com.borajoin.teuching.message.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MessageDao {

	@Autowired
	SqlSessionTemplate sqlSession;
}
