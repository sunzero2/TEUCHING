package com.borajoin.teuching.manager.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.manager.model.service.ManagerService;

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

	@RequestMapping("/report/insertReport")
	public ModelAndView reportFileUpload(@RequestParam List<MultipartFile> files, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String root = request.getSession().getServletContext().getRealPath("");
//		ms.insertReport(commandMap);
		mv.setViewName("redirect:/profile/review.do");
		return mv;
	}

}
