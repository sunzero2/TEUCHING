package com.borajoin.teuching.member.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.member.model.service.MemberService;

@Controller
public class MypageController {

	@Autowired
	private MemberService ms;
	
	
		/**
		* @Method Name : mypageM
		* @작성일 : 2020. 6. 17.
		* @작성자 : 이남규
		* @Method 설명 : 마이 페이지로 이동
		*/
		@RequestMapping("/member/mypage_M.do")
		public ModelAndView mypageM() {
			ModelAndView mav = new ModelAndView();
			System.out.println("일반회원 마이페이지");
			mav.setViewName("account/mypage_M");
				
			return mav;
		}
	
		/**
		* @Method Name : mypageT
		* @작성일 : 2020. 6. 17.
		* @작성자 : 이남규
		* @Method 설명 : 트레이너 마이페이지 이동
		*/
		@RequestMapping("/member/mypage_T.do")
		public ModelAndView mypageT() {
			ModelAndView mav = new ModelAndView();
			System.out.println("트레이너 마이페이지");
			mav.setViewName("account/mypage_T");
			
			return mav;
		}
		
		
		/**
		* @Method Name : mypageUpdate_M
		* @작성일 : 2020. 6. 17.
		* @작성자 : 이남규
		* @Method 설명 : 일반회원 마이페이지 정보 업데이트
		*/
		@RequestMapping("/member/mypageUpdate_M.do")
		public ModelAndView mypageUpdate_M(@RequestParam Map<String, Object> commandMap, HttpSession session) {
			
			return null;
		}
		
		/**
		* @Method Name : mypageUpdate_T
		* @작성일 : 2020. 6. 17.
		* @작성자 : 이남규
		* @Method 설명 : 트레이너 마이페이지 정보 업데이트
		*/
		@RequestMapping("/member/mypageUpdate_T.do")
		public ModelAndView mypageUpdate_T(@RequestParam Map<String, Object> commandMap, HttpSession session) {
			
			return null;
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
}
