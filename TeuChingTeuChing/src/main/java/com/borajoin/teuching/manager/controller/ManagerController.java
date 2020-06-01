package com.borajoin.teuching.manager.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.manager.model.service.ManagerService;

import common.util.Paging;

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
	public ModelAndView managerPage(Map<String, Object> commandMap) {

		ModelAndView mv = new ModelAndView();
		Map<String, Object> res = new HashMap<String, Object>();

		Integer revCurrentPage = (Integer) commandMap.get("revCurrentPage");
		Integer traCurrentPage = (Integer) commandMap.get("traCurrentPage");

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

}
