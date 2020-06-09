package com.borajoin.teuching.message.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.borajoin.teuching.message.model.dao.MessageDao;

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

}
