package com.borajoin.teuching.manager.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.borajoin.teuching.manager.model.dao.ManagerDao;
import com.borajoin.teuching.manager.model.vo.ReviewReport;
import com.borajoin.teuching.manager.model.vo.TrainerReport;

import common.util.Paging;

@Service
public class ManagerServiceImpl implements ManagerService {

	@Autowired
	ManagerDao md;

	@Override
	public Map<String, Object> selectRevReport(int revCurrentPage) {
		Map<String, Object> res = new HashMap<String, Object>();
		Paging pagingRev = new Paging(md.revCnt(), revCurrentPage, 3);
		res.put("pagingRev", pagingRev);
		res.put("selectRevReport", md.selectRevReport(pagingRev));
		return res;
	}

	@Override
	public Map<String, Object> selectTraReport(int traCurrentPage) {
		Map<String, Object> res = new HashMap<String, Object>();
		Paging pagingTra = new Paging(md.traCnt(), traCurrentPage, 3);
		res.put("pagingTra", pagingTra);
		res.put("selectTraReport", md.selectTraReport(pagingTra));
		return res;
	}

}
