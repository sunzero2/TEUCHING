package com.borajoin.teuching.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.member.model.service.MemberService;

@Controller
public class MypageController {

	@Autowired
	private MemberService ms;
	
	
	// 마이 페이지로 이동
		@RequestMapping("/mypage/mypage.do")
		public ModelAndView login() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("account/mypage");
			
			return mav;
		}
	
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
}
