package com.borajoin.teuching.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.manager.model.service.ManagerService;

@Controller
public class ManagerController {

	@Autowired
	ManagerService ms;

	@RequestMapping("/manager.do")
	public ModelAndView managerPage() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("viewReportList", ms.selectRevReport());
//		mv.addObject("viewReportList", ms.selectTraReport());
		mv.setViewName("manager/manager");
		return mv;
	}
	
}
