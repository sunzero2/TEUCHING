package com.borajoin.teuching.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReviewController {

	@RequestMapping("mypage/review.do")
	public ModelAndView reviewdo() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("mypage/profile");
		return mav;
	}
	
	@RequestMapping("mypage/schedule.do")
	public ModelAndView scheduledo() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("mypage/schedule");
		return mav;
	}
	
	
	
	
	
}
