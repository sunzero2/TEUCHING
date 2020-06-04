package com.borajoin.teuching.manager.model.service;

import java.util.List;
import java.util.Map;

import com.borajoin.teuching.manager.model.vo.ReviewReport;
import com.borajoin.teuching.manager.model.vo.TrainerReport;

import common.util.File_Upload;

public interface ManagerService {

	public Map<String, Object> selectRevReport(int revCurrentPage);

	public Map<String, Object> selectTraReport(int traCurrentPage);

	public TrainerReport traManagerDetail(int traid);

	public ReviewReport revManagerDetail(int revid);
	
	public int updateManagerDetail_rev(Map<String, Object> commandMap);
	
	public int updateManagerDetail_tra(Map<String, Object> commandMap);
	
	public int[] insertReport(Map<String, Object> commandMap);
	
	public int selectTraReportIdx();
	
	public int selectRevReportIdx();
	
	public int insertFile(List<File_Upload> fileData);
	

}
