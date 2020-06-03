package com.borajoin.teuching.matching.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.borajoin.teuching.matching.model.service.PostService;
import com.borajoin.teuching.matching.model.vo.Post;

@Controller
public class PostController {

	@Autowired
	PostService postService;
	
	/**
	* @Method Name : postDetail
	* @작성일 : 2020. 6. 3.
	* @작성자 : 이혜영 
	* @Method 설명 : 상세페이지로 이동하는 메소드
	*/
	@RequestMapping("/post/detail.do")
	public ModelAndView postDetail(int postNo) {
		ModelAndView mav = new ModelAndView();
		Post data = new Post();
		data.setPostIdx(postNo);
		Post post = postService.postDetail(data);
		
		mav.addObject("post", post);
		mav.setViewName("post/postDetail");
		return mav;
	}
	
	/**
	* @Method Name : writePost
	* @작성일 : 2020. 6. 3.
	* @작성자 : 이혜영 
	* @Method 설명 : 게시글 쓰기 페이지로 이동하는 메소드
	*/
	@RequestMapping("/post/writePost.do")
	public ModelAndView writePost() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("post/writePost");
		return mav;
	}
	
	@RequestMapping("/post/write.do")
	public ModelAndView write(@RequestParam Map<String, String> data) {
		ModelAndView mav = new ModelAndView();
		System.out.println("PostController : " + data);
		mav.setViewName("matching/matching");
		return mav;
	}
}
