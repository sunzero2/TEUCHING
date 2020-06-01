package com.borajoin.teuching.manager.model.service;

import java.util.List;

import com.borajoin.teuching.manager.model.vo.ReviewReport;
import com.borajoin.teuching.manager.model.vo.TrainerReport;

public interface ManagerService {

	public List<ReviewReport> selectRevReport();
	
	public List<TrainerReport> selectTraReport();
}
