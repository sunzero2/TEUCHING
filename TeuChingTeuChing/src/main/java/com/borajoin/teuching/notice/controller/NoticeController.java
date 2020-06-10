package com.borajoin.teuching.notice.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.notice.model.service.NoticeService;
import com.borajoin.teuching.notice.model.vo.Notice;

@Controller
public class NoticeController {
	@Autowired
	NoticeService noticeService;
	
	/**
	* @Method Name : noticeList
	* @작성일 : 2020. 6. 10.
	* @작성자 : 이혜영 
	* @Method 설명 : 공지사항 게시판으로 이동하는 메소드
	*/
	@RequestMapping("/notice/notice.do")
	public ModelAndView noticeList(@RequestParam Map<String, String> data) {
		ModelAndView mav = new ModelAndView();
		List<Notice> nList = noticeService.noticeList(data);
		
		mav.addObject("nList", nList);
		mav.setViewName("notice/noticeList");
		return mav;
	}
	
	@RequestMapping("/notice/detail.do")
	public ModelAndView noticeDetail(String noticeIdx) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("notice/noticeDetail");
		return mav;
	}
}
