package com.borajoin.teuching.message.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.support.SQLErrorCodes;
import org.springframework.stereotype.Repository;

import com.borajoin.teuching.message.model.vo.Match;
import com.borajoin.teuching.message.model.vo.Message;
import com.sun.mail.handlers.message_rfc822;

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
	
	//쪽지에 보여줄 매칭 정보
	public List<Match> showMatchInfo(Map<String, Object> commandMap) {
		return sqlSession.selectList("Message.showMatchInfo", commandMap);
	}
	
	//트레이너의 매칭 수락
	public int updateMatchYn(int match_idx) {
		return sqlSession.update("Message.updateMatchYn", match_idx);
	}
	
	//트레이너의 매칭 수락 시, 매칭여부 확인용
	public int matchYnCheck(int match_idx) {
		return sqlSession.selectOne("Message.matchYnCheck", match_idx);
	}
	
	//회원이 트레이너에게 보내는 메시지
	public int insertMsgMem(Map<String, Object> commandMap) {
		return sqlSession.insert("Message.insertMsgMem", commandMap);
	}
}
