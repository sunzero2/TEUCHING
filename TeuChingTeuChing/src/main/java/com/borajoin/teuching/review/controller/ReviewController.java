package com.borajoin.teuching.review.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReviewController {

	/**
	 * @Method Name : reviewdo
	 * @작성일 : 2020. 6. 1.
	 * @작성자 : 이보라
	 * @Method 설명 :
	 */

	@RequestMapping("profile/review.do")
	public ModelAndView reviewdo() {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("profile/review");
		return mav;
	}

	@RequestMapping("profile/schedule.do")
	public ModelAndView scheduledo() {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("profile/schedule");
		return mav;
	}

	@RequestMapping("profile/sendreview.do")
	public ModelAndView reviewList(@RequestParam Map<String, Object> commandMap) {

		ModelAndView mav = new ModelAndView();

		int currentPage = 1;
		int cntPerPage = 5;
		
		String orderby = "review_idx";
		// 기준으로 orderby할 것 가져오기 

		if (commandMap.get("cPage") != null) {
			currentPage = Integer.parseInt((String) commandMap.get("cPage"));
		}

		if (commandMap.get("cntPerPage") != null) {
			cntPerPage = Integer.parseInt((String) commandMap.get("cntPerPage"));
		}

		return mav;

	}
	
	

}
