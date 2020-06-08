package com.borajoin.teuching.review.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.review.model.service.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService rs;

	
	/**
	  * @Method Name : reviewList
	  * @작성일 : 2020. 6. 8.
	  * @작성자 : 이보라
	  * @Method 설명 : 리뷰리스트 리뷰페이지에다가 뿌려주는 메소드임
	  */
	@RequestMapping("profile/review.do")
	public ModelAndView reviewList(@RequestParam Map<String, Object> commandMap) {

		ModelAndView mav = new ModelAndView();

		int currentPage = 1;
		int cntPerPage = 5;

		String orderby = "review_idx"; // 기준으로 orderby할 것 가져오기

		if (commandMap.get("currentPage") != null) {
			currentPage = Integer.parseInt((String) commandMap.get("currentPage"));
		}

		if (commandMap.get("cntPerPage") != null) {
			cntPerPage = Integer.parseInt((String) commandMap.get("cntPerPage"));
		}
		
		Map<String,Object> res = rs.selectReviewList(orderby, currentPage, cntPerPage);
		System.out.println("컨트롤 값 받아온거"+res);
		mav.addObject("reviewList",res);
		mav.setViewName("profile/review");

		return mav;

	}
	
	
	
	
	

	/**
	  * @Method Name : scheduledo
	  * @작성일 : 2020. 6. 8.
	  * @작성자 : 이보라
	  * @Method 설명 : 스케줄러로 이동한다ㅋ
	  */
	@RequestMapping("profile/schedule.do")
	public ModelAndView scheduledo() {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("profile/schedule");
		return mav;
	}

	

}
