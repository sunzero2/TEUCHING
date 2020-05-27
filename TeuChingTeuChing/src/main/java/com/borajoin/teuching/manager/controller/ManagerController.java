package com.borajoin.teuching.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerController {

	@RequestMapping("/manager.do")
	public String managerPage() {
		return "manager/manager";
	}
}
