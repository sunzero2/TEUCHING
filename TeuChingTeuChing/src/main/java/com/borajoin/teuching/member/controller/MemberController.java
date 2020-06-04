package com.borajoin.teuching.member.controller;

import java.sql.SQLException;
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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.member.model.service.MemberService;
import com.borajoin.teuching.member.model.vo.Member;
import com.borajoin.teuching.member.model.vo.Trainer;

@Controller
public class MemberController {

	@Autowired
	private MemberService ms;
	
	@GetMapping("/loginModal") 
	public String loginModal() { 
		return "/loginModal"; 
	}

	// 로그인 페이지로 이동
	@RequestMapping("/member/login.do")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("account/loginform");

		return mav;
	}
	
	//로그인 하기 
	@RequestMapping("/member/loginImple.do")
	public ModelAndView loginImple(@RequestParam Map<String,Object> commandMap, HttpSession session) throws SQLException {
		ModelAndView mav = new ModelAndView();
		
		if(commandMap.get("account").equals("member")) {
			Member res = ms.m_login(commandMap);
			
			if(res == null) {
				mav.setViewName("account/loginform");
			}else {
				mav.addObject("test", "member");
				session.setAttribute("loginInfo", res);
				mav.setViewName("landing/landing");
			}
		}else {
			Trainer res = ms.t_login(commandMap);
			
			if(res == null) {
				mav.setViewName("account/loginform");
			}else {
				mav.addObject("test", "trainer");
				session.setAttribute("loginInfo", res);
				mav.setViewName("landing/landing");
			}
		}
		return mav;
	}
	
	
	//로그아웃
	@RequestMapping("/member/logout.do")
	public ModelAndView logout(HttpSession session) {
	
		ModelAndView mav = new ModelAndView();
		
		if(session != null) {
			session.removeAttribute("loginInfo");
		}
		
		mav.setViewName("landing/landing");
		
		
		return mav;
		
	}
	
	//마이페이지 이동
	@RequestMapping("/member/mypage.do")
	public ModelAndView mypage(HttpSession session) {
	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("landing/landing");
		
		return mav;
	}
	
	
	
	
	
	
	
	

	// 회원가입 페이지로 이동
	@RequestMapping("/member/join.do")
	public ModelAndView join() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("account/memberJoin");
		
		return mav;
	}
	// 일반회원 회원가입 폼으로 이동
	@RequestMapping("/member/mjoin.do")
	public ModelAndView mjoin(String data) {
		ModelAndView mav = new ModelAndView();
		
		
		if(data.equals("member")) {
			mav.setViewName("account/joinform_M");
		}else {
			mav.setViewName("account/joinform_T");
		}
		
		return mav;
	}
	
	//일반 회원 회원가입
	@RequestMapping("/member/joinMemberImple.do")
	public ModelAndView joinMemberImple(@RequestParam Map<String,Object> commandMap) throws SQLException {
		ModelAndView mav = new ModelAndView();
		
		System.out.println(commandMap);
		
		int res = ms.joinMember(commandMap);
		if(res < 1) {
			mav.setViewName("common/result");
			mav.addObject("alertMsg","회원가입에 실패하였습니다.");
			mav.addObject("back","back");
		}else {
			mav.setViewName("landing/landing");
		}
		return mav;
	}
	
	//트레이너 회원가입
	@RequestMapping("/member/joinTrainerImple.do")
	public ModelAndView joinTrainerImple(@RequestParam Map<String,Object> commandMap) throws SQLException {
		ModelAndView mav = new ModelAndView();
		
		System.out.println(commandMap);
		
		int res = ms.joinTrainer(commandMap);
		if(res < 1) {
			mav.setViewName("common/result");
			mav.addObject("alertMsg","회원가입에 실패하였습니다.");
			mav.addObject("back","back");
		}else {
			mav.setViewName("landing/landing");
		}
		return mav;
	}
	
	
	// 일반회원 - 닉네임 중복체크
	@RequestMapping(value = "/nickChk.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String nickChk(HttpServletRequest request) throws SQLException {
		
		String nickname = request.getParameter("nickname");
		int result=ms.nickChk(nickname);
		return Integer.toString(result);
	}
	
	// 일반회원 - 이메일 중복체크
	@RequestMapping(value = "/emailChk.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String emailChk(@RequestParam Map<String,Object> data) throws SQLException {

		data.put("table", "tr_member");
		int result=ms.emailChk(data);
		
		if(result<1) {
			data.put("table", "tr_trainer");
			result=ms.emailChk(data);
		}
		
		
		return Integer.toString(result);
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
