package com.borajoin.teuching.member.controller;

import java.io.File;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.matching.model.vo.Post;
import com.borajoin.teuching.member.model.service.MypageService;
import com.borajoin.teuching.member.model.vo.Trainer;

@Controller
public class MypageController {

	@Autowired
	private MypageService mys;
	
	
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
		
		
		
		/**
		* @Method Name : t_postlist
		* @작성일 : 2020. 6. 18.
		* @작성자 : 이남규 
		* @Method 설명 : 트레이너 마이페이지 게시글 목록 불러오기
		*/
		@RequestMapping("/member/t_postlist.do")
		@ResponseBody
		public List<Post> t_postlist(@RequestParam Map<String, String> data) {
			return mys.t_postlist(data);
		}
		
		
		//세션 업데이트 메서드.
		// mypage 수정
		/*
		 * @RequestMapping(value = "/update_mypage.do", method = RequestMethod.POST)
		 * public String update_mypage(@ModelAttribute MemberDTO member, HttpSession
		 * session, RedirectAttributes rttr) throws Exception{
		 * session.setAttribute("member", service.update_mypage(member));
		 * rttr.addFlashAttribute("msg", "회원정보 수정 완료"); return
		 * "redirect:/member/mypage.do"; }
		 */
		
		// mypage 수정
		/*
		 * @RequestMapping(value = "/update_mypage.do", method = RequestMethod.POST)
		 * public String update_mypage(@ModelAttribute MemberDTO member, HttpSession
		 * session, RedirectAttributes rttr) throws Exception{
		 * session.setAttribute("member", service.update_mypage(member));
		 * rttr.addFlashAttribute("msg", "회원정보 수정 완료"); return
		 * "redirect:/member/mypage.do"; }
		 */
		
		
		
		
		/** 
		* @Method Name : photoUpdate
		* @작성일 : 2020. 6. 18.
		* @작성자 : 이남규 
		* @Method 설명 :  사진 업데이트하기
		*/
		@RequestMapping("/member/photoUpdate.do")
		public ModelAndView photoUpdate(@RequestParam Map<String, Object> commandMap, HttpServletRequest request, HttpSession session,
				MultipartHttpServletRequest mtf) throws SQLException {
			
			ModelAndView mav = new ModelAndView();
			
			Trainer res = new Trainer();
			session.removeAttribute("photo");

			//////////////////////////////////////////////////////////////////////////////
			// 파일 태그
			String fileTag = "file";
			// 업로드 파일이 저장될 경로
			String root = request.getSession().getServletContext().getRealPath("/");
			String filePath = root + "resources\\upload\\profileImg\\";
			// 파일에 넣기
			MultipartFile file = mtf.getFile(fileTag);
			System.out.println(file.getOriginalFilename());
			String filetype = StringUtils.getFilenameExtension(file.getOriginalFilename());
			String fileName = (String) commandMap.get("tr_email") + "." + filetype;

			// 기존 파일을 삭제
			new File(filePath + request.getParameter("photo")).delete();
			
			// 파일 전송
			try {
				file.transferTo(new File(filePath + fileName));
			} catch (Exception e) {
				System.out.println("파일 업로드 오류");
			}
			commandMap.put("photo", fileName);
			mys.photoUpdate(commandMap);
			///////////////////////////////////////////////////////////////////////////////
			
			res.setPhoto(fileName);
			session.setAttribute("loginInfo", res);
			mav.setViewName("account/mypage_T");
			
			return mav;
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
}
