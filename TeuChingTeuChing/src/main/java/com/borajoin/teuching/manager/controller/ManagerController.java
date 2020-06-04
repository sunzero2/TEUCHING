package com.borajoin.teuching.manager.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.manager.model.service.ManagerService;

import common.util.File_Upload;

@Controller
public class ManagerController {

	@Autowired
	ManagerService ms;

	/**
	 * @Method Name : managerPage
	 * @작성일 : 2020. 6. 1.
	 * @작성자 : 김지수
	 * @Method 설명 : 관리자 페이지 내 리뷰신고, 트레이너 신고 게시판 구현
	 */
	@RequestMapping("/manager.do")
	public ModelAndView managerPage(Integer revCurrentPage, Integer traCurrentPage) {

		ModelAndView mv = new ModelAndView();
		Map<String, Object> res = new HashMap<String, Object>();

		if (revCurrentPage == null) {
			revCurrentPage = 1;
		}
		if (traCurrentPage == null) {
			traCurrentPage = 1;
		}

		res.put("resRev", ms.selectRevReport(revCurrentPage));
		res.put("resTra", ms.selectTraReport(traCurrentPage));

		mv.addObject("res", res);
		mv.setViewName("manager/manager");

		return mv;
	}

	@RequestMapping("/managerdetail.do")
	public ModelAndView managerDetail(Integer revid, Integer traid) {
		ModelAndView mv = new ModelAndView();

		if (revid == null) {
			mv.addObject("type", "tra");
			mv.addObject("res", ms.traManagerDetail(traid));
		}
		if (traid == null) {
			// getClass해서 ~일경우로 가능할듯
			mv.addObject("type", "rev");
			mv.addObject("res", ms.revManagerDetail(revid));
		}
		mv.setViewName("manager/managerDetail");
		return mv;
	}

	@PostMapping("/managerdetail/answer.do")
	public ModelAndView managerDetailAnswer(@RequestParam Map<String, Object> commandMap) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("res", commandMap);
		mv.setViewName("manager/managerAnswer");
		return mv;
	}

	@PostMapping("/managerdetail/modify.do")
	public ModelAndView managerDetailModify(@RequestParam Map<String, Object> commandMap) {
		ModelAndView mv = new ModelAndView();
		if (commandMap.get("type").equals("tra")) {
			ms.updateManagerDetail_tra(commandMap);
			mv.setViewName("redirect:/managerdetail.do?traid=" + commandMap.get("report_idx"));
		}
		if (commandMap.get("type").equals("rev")) {
			ms.updateManagerDetail_rev(commandMap);
			mv.setViewName("redirect:/managerdetail.do?revid=" + commandMap.get("report_idx"));
		}
		return mv;
	}

	@RequestMapping("/report/viewreport.do")
	public ModelAndView reportView(@RequestParam Map<String, Object> commandMap) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("res", commandMap);
		mv.setViewName("manager/writeReport");
		return mv;
	}

	@PostMapping("/report/insertReport")
	public ModelAndView reportFileUpload(@RequestParam Map<String, Object> commandMap, List<MultipartFile> files,
			HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String root = request.getSession().getServletContext().getRealPath("");
		List<File_Upload> fileData = new ArrayList<File_Upload>();
		ms.insertReport(commandMap);
		// 게시물 insert 가 먼저, 해당 게시물 idx를 가져와서 파일 테이블에 담아야하니까
		for (MultipartFile mf : files) {
			UUID uuid = UUID.randomUUID();
			if (mf.getSize() > 0) {
				String savepath = root + "/resources/upload/";
				String type = "";
				String origin_filename = mf.getOriginalFilename();

				File_Upload file = new File_Upload();
				if (commandMap.get("type").equals("tra")) {
					file.setTable_idx(ms.selectTraReportIdx());
					type = "TraReport";
				}
				if (commandMap.get("type").equals("rev")) {
					file.setTable_idx(ms.selectRevReportIdx());
					type = "RevReport";
				}
				String rename_filename = uuid + "_" + type
						+ origin_filename.substring(origin_filename.lastIndexOf("."));
				savepath += rename_filename;

				file.setOrigin_filename(origin_filename);
				file.setRename_filename(rename_filename);
				file.setSavepath(savepath);
				file.setObj(mf);
				fileData.add(file);
			}
		}
		ms.insertFile(fileData);
		mv.setViewName("redirect:/profile/review.do");
		return mv;
	}

}
