package com.borajoin.teuching.matching.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MatchingController {
	@RequestMapping("/matching/main.do")
	public ModelAndView goin() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("matching/matching");
		return mav;
	}
	
	@RequestMapping("/matching/searchword.do")
	@ResponseBody
	public String searchWord(String input) {
		System.out.println(input);
		return input;
	}
}
