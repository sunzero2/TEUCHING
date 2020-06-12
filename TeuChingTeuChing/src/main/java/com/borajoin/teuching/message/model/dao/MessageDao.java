package com.borajoin.teuching.message.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.support.SQLErrorCodes;
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

	public int selectSendMsgCnt(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Message.selectSendMsgCnt", commandMap);
	}
	
	public int selectRecvMsgCnt(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Message.selectRecvMsgCnt", commandMap);
	}

	public List<Message> selectMsgBoxSend(Map<String, Object> commandMap) {
		return sqlSession.selectList("Message.selectMsgBoxSend", commandMap);
	}

	public List<Message> selectMsgBoxRecv(Map<String, Object> commandMap){
		return sqlSession.selectList("Message.selectMsgBoxRecv", commandMap);
	}
	
	public Message selectMsgDetail(int message_idx) {
		return sqlSession.selectOne("Message.selectMsgDetail", message_idx);
	}
	
	public int insertMsgAnsTra(Map<String, Object> commandMap) {
		return sqlSession.insert("Message.insertMsgAnsTra", commandMap);
	}
}
