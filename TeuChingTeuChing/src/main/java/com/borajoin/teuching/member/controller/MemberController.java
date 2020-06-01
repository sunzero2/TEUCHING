package com.borajoin.teuching.member.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.member.model.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService ms;
	
	@RequestMapping("/member/join.do")
	public ModelAndView join() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("account/memberJoin");
		
		return mav;
	}
	
	@RequestMapping("/member/mjoin.do")
	public ModelAndView mjoin() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("account/joinform_M");
		
		return mav;
	}
	
	@RequestMapping("/member/tjoin.do")
	public ModelAndView tjoin() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("account/joinform_T");
		
		return mav;
	}
	
	
	
	
	
	
	@RequestMapping("/notice/noticeupload.do")
	public ModelAndView fileUpload(@RequestParam List<MultipartFile> files, HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		
		String root = request.getSession().getServletContext().getRealPath("/");
			List<Map<String,Object>> fileData = new ArrayList<Map<String,Object>>();
		
		HttpSession session = request.getSession();

		int i =0;
		for(MultipartFile mf :files) {
			//
			String savePath = root + "resources\\upload\\";
			String originFileName = mf.getOriginalFilename();
			
			//파일의 이름을 현재시간으로 만들고 확장자 넣기
			HashMap<String, Object> data = new HashMap<>();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String renameFileName 
			= sdf.format(new Date()) + i
			+ "." + originFileName.substring(originFileName.lastIndexOf(".")+1);
			
			//매번 초기화
			savePath += renameFileName;
			
			//map에 다 넣기
			data.put("originFileName", originFileName);
			data.put("renameFileName", renameFileName);
			data.put("savePath", savePath);
			data.put("file", mf);
			
			fileData.add(data);
			i++;
		}
			
		int res = ms.insertFile(fileData);
		
		mav.setViewName("redirect:noticelist.do");
		
		return mav;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
