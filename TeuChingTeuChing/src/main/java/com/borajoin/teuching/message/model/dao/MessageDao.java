package com.borajoin.teuching.message.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.borajoin.teuching.message.model.vo.Message;

@Repository
public class MessageDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	public int insertMatchMessage(Map<String, Object> commandMap) {
		return sqlSession.insert("Message.insertMatchMessage", commandMap);
	}

	public int insertMatch(Map<String, Object> commandMap) {
		return sqlSession.insert("Message.insertMatch", commandMap);
	}

	public int selectMsgCnt() {
		return sqlSession.selectOne("Message.selectMsgCnt");
	}

	public List<Message> selectMsgBoxSend(Map<String, Object> commandMap) {
		return sqlSession.selectList("Message.selectMsgBoxSend", commandMap);
	}
}
