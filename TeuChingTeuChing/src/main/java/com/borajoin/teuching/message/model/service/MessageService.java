package com.borajoin.teuching.message.model.service;

import java.util.Map;

public interface MessageService {
	public int insertMatchMessage(Map<String, Object> commandMap);

	public int insertMatch(Map<String, Object> commandMap);
}
