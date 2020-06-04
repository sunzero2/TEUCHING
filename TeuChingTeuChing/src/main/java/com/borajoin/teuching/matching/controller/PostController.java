package com.borajoin.teuching.matching.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.borajoin.teuching.matching.model.service.PostService;
import com.borajoin.teuching.matching.model.vo.Post;

import common.util.File_Upload;

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
	
	/**
	* @Method Name : write
	* @작성일 : 2020. 6. 5.
	* @작성자 : 이혜영 
	* @Method 설명 : 게시글 업로드 메소드
	*/
	@RequestMapping("/post/write.do")
	public ModelAndView write(@RequestParam List<MultipartFile> images, String title, String content, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		
		// webapp까지의 경로를 잡아준다.
		String root = session.getServletContext().getRealPath("/");
		
		// 사용자가 올린 사진의 정보를 담을 List
		List<File_Upload> fileData = new ArrayList<>();
		int i = 0;
		
		for(MultipartFile mf : images) {
			File_Upload upload = new File_Upload();
			String savePath = root + "resources\\upload\\";
			String originFileName = mf.getOriginalFilename();
			UUID uuid = UUID.randomUUID();
			String renameFileName = uuid + "_post" + originFileName.substring(originFileName.lastIndexOf(".") + 1);
			savePath += renameFileName;
			
			upload.setOrigin_filename(originFileName);
			upload.setRename_filename(renameFileName);
			upload.setSavepath(savePath);
			upload.setObj(mf);
			System.out.println(upload);
			
			fileData.add(upload);
			i++;
		}
		
		mav.setViewName("matching/matching");
		return mav;
	}
}
