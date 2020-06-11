package com.borajoin.teuching.index.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	/**
	* @Method Name : index
	* @작성일 : 2020. 6. 12.
	* @작성자 : 이혜영 
	* @Method 설명 : landing 페이지로 이동
	*/
	@RequestMapping("index/index")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("landing/landing");
		return mav;
	}
	
	/**
	* @Method Name : aboutUs
	* @작성일 : 2020. 6. 12.
	* @작성자 : 이혜영 
	* @Method 설명 : 프로젝트 소개글로 이동
	*/
	@RequestMapping("index/aboutus")
	public ModelAndView aboutUs() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("landing/aboutUs");
		return mav;
	}
}
