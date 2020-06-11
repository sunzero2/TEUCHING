package com.borajoin.teuching.message.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.search.StringTerm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.borajoin.teuching.message.model.dao.MessageDao;
import com.borajoin.teuching.message.model.vo.Message;

import common.util.Paging;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	MessageDao md;

	@Override
	public int insertMatchMessage(Map<String, Object> commandMap) {
		return md.insertMatchMessage(commandMap);
	}

	@Override
	public int insertMatch(Map<String, Object> commandMap) {
		return md.insertMatch(commandMap);
	}

	@Override
	public int selectSendMsgCnt(String type, String email) {
		Map<String, Object> commandMap = new HashMap<String, Object>();
		commandMap.put("type", type);
		commandMap.put("email", email);
		return md.selectSendMsgCnt(commandMap);
	}

	@Override
	public int selectRecvMsgCnt(String type, String email) {
		Map<String, Object> commandMap = new HashMap<String, Object>();
		commandMap.put("type", type);
		commandMap.put("email", email);
		return md.selectRecvMsgCnt(commandMap);
	}

	@Override
	public Map<String, Object> selectMsgBoxSend(String email, int currentpage, String type) {
		Map<String, Object> commandMap = new HashMap<String, Object>();
		Map<String, Object> res = new HashMap<String, Object>();
		Paging paging = new Paging(selectSendMsgCnt(type, email), currentpage, 5);

		commandMap.put("email", email);
		commandMap.put("paging", paging);
		commandMap.put("type", type);

		res.put("msg", md.selectMsgBoxSend(commandMap));
		res.put("paging", paging);

		return res;
	}

	@Override
	public Map<String, Object> selectMsgBoxRecv(String email, int currentpage, String type) {
		Map<String, Object> commandMap = new HashMap<String, Object>();
		Map<String, Object> res = new HashMap<String, Object>();
		Paging paging = new Paging(selectRecvMsgCnt(type, email), currentpage, 5);

		commandMap.put("email", email);
		commandMap.put("paging", paging);
		commandMap.put("type", type);

		res.put("msg", md.selectMsgBoxRecv(commandMap));
		res.put("paging", paging);

		return res;
	}

	@Override
	public int selectMsgDetail(int message_idx) {
		return md.selectMsgDetail(message_idx);
	}

}
