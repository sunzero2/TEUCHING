package com.borajoin.teuching.member.controller;

import javax.servlet.http.HttpSession;

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
		@RequestMapping("/member/mypage_M.do")
		public ModelAndView mypageM() {
			ModelAndView mav = new ModelAndView();
			System.out.println("일반회원 마이페이지");
			mav.setViewName("account/mypage_M");
				
			return mav;
		}
	
		@RequestMapping("/member/mypage_T.do")
		public ModelAndView mypageT() {
			ModelAndView mav = new ModelAndView();
			System.out.println("트레이너 마이페이지");
			mav.setViewName("account/mypage_T");
			
			return mav;
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
}
