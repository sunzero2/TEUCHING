package com.borajoin.teuching.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MypageDao {

	@Autowired
	private SqlSessionTemplate session;
	
	
}
