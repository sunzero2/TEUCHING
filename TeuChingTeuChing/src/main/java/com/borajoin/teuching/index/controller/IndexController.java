package com.borajoin.teuching.index.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	@RequestMapping("index/index")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("landing/landing");
		return mav;
	}
}
