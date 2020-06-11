package com.borajoin.teuching.message.model.service;

import java.util.Map;

public interface MessageService {
	public int insertMatchMessage(Map<String, Object> commandMap);

	public int insertMatch(Map<String, Object> commandMap);
	
	public int selectSendMsgCnt(String type, String email);
	
	public int selectRecvMsgCnt(String type, String email);
	
	public Map<String, Object> selectMsgBoxSend(String email, int currentpage, String type);
	
	public Map<String, Object> selectMsgBoxRecv(String email, int currentpage, String type);
	
	public int selectMsgDetail(int message_idx);
}
