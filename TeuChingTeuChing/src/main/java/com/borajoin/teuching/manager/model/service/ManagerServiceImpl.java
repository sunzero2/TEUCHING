package com.borajoin.teuching.manager.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.borajoin.teuching.manager.model.dao.ManagerDao;
import com.borajoin.teuching.manager.model.vo.ReviewReport;

@Service
public class ManagerServiceImpl implements ManagerService {

	@Autowired
	ManagerDao md;

	@Override
	public List<ReviewReport> selectRevReport() {
		return md.selectRevReport();
	}

}
