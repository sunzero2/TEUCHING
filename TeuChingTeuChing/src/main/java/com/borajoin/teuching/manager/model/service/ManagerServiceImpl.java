package com.borajoin.teuching.manager.model.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.borajoin.teuching.manager.model.dao.ManagerDao;
import com.borajoin.teuching.manager.model.vo.ReviewReport;
import com.borajoin.teuching.manager.model.vo.TrainerReport;

import common.util.File_Upload;
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

	@Override
	public TrainerReport traManagerDetail(int traid) {
		return md.traManagerDetail(traid);
	}

	@Override
	public ReviewReport revManagerDetail(int revid) {
		return md.revManagerDetail(revid);
	}

	@Override
	public int updateManagerDetail_rev(Map<String, Object> commandMap) {
		return md.updateManagerDetail_rev(commandMap);
	}

	@Override
	public int updateManagerDetail_tra(Map<String, Object> commandMap) {
		return md.updateManagerDetail_tra(commandMap);
	}

	@Override
	public int[] insertReport(Map<String, Object> commandMap) {
		int[] res = { 0, 0 };
		if (commandMap.get("type").equals("tra")) {
			res[0] = selectTraReportIdx();
			res[1] = md.insertReportTra(commandMap);
		}
		if (commandMap.get("type").equals("rev")) {
			res[0] = selectRevReportIdx();
			res[1] = md.insertReportRev(commandMap);
		}
		return res;
	}

	@Override
	public int selectTraReportIdx() {
		return md.selectTraReportIdx();
	}

	@Override
	public int selectRevReportIdx() {
		return md.selectRevReportIdx();
	}

	@Override
	public int insertFile(List<File_Upload> fileData) {
		int res = 0;
		for (File_Upload file : fileData) {
			res = md.insertFile(file);
			MultipartFile mf = (MultipartFile) file.getObj();
			File f = new File(file.getSavepath());
			try {
				mf.transferTo(f);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		return res;
	}

}
