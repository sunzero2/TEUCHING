package com.borajoin.teuching.manager.model.service;

import java.util.Map;


public interface ManagerService {

	public Map<String, Object> selectRevReport(int revCurrentPage);
	
	public Map<String, Object> selectTraReport(int traCurrentPage);
	
}
