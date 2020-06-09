package com.borajoin.teuching.message.controller;

import java.util.HashMap;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.member.model.vo.Member;
import com.borajoin.teuching.member.model.vo.Trainer;
import com.borajoin.teuching.message.model.service.MessageService;

@Controller
public class MessageController {

	@Autowired
	MessageService ms;

	@RequestMapping("/message.do")
	public String message() {
		return "message/temporary";
	}

//	@RequestMapping("/message/messagecheck.do")
//	public String messageCheck() {
//		return "message/messageCheck";
//	}
//
//	@RequestMapping("/message/sendmessage.do")
//	public ModelAndView messageForm(String mem_email, String tr_email) {
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("mem_email", mem_email);
//		mv.addObject("tr_email", tr_email);
//		mv.setViewName("message/messageForm");
//		return mv;
//	}
//	// ------위에 갖다버릴수도
//
//	@RequestMapping("/message/insertmessage.do")
//	public ModelAndView insertMessage(String tr_email, String mem_email, String msg_cont, String msg_title,
//			HttpServletRequest request) {
//		ModelAndView mv = new ModelAndView();
//		Map<String, Object> commandMap = new HashMap<String, Object>();
//		HttpSession session = request.getSession();
//		if (tr_email == null) {
//			Trainer t = (Trainer) session.getAttribute("loginInfo");
//			commandMap.put("tr_email", t.getTr_email());
//			commandMap.put("mem_email", mem_email);
//
//		}
//		if (mem_email == null) {
//			Member m = (Member) session.getAttribute("loginInfo");
//			commandMap.put("mem_email", m.getMem_email());
//			commandMap.put("tr_email", tr_email);
//		}
//		commandMap.put("msg_cont", msg_cont);
//		commandMap.put("msg_title", msg_title);
//		ms.insertMessage(commandMap);
//		mv.addObject("msg", "메시지가 발송되었습니다");
//		mv.setViewName("message/result");
//		return mv;
//	}
	// ----------------매칭폼

	/**
	 * @Method Name : matchForm
	 * @작성일 : 2020. 6. 10.
	 * @작성자 : 김지수
	 * @Method 설명 : 트레이너에게 상담신청 폼으로 연결
	 */
	@RequestMapping("/message/matchform.do")
	public ModelAndView matchForm(String tr_email, HttpSession session) {
		// -------확인
		ModelAndView mv = new ModelAndView();
		Member m = (Member) session.getAttribute("loginInfo");
		mv.addObject("tr_email", tr_email);
		mv.setViewName("message/messageMatchForm");
		return mv;
	}

	/**
	 * @Method Name : matchFormSend
	 * @작성일 : 2020. 6. 10.
	 * @작성자 : 김지수
	 * @Method 설명 : 트레이너에게 상담신청 메시지 발송
	 */
	@RequestMapping("/message/matchformsend.do")
	public ModelAndView matchFormSend(String tr_email, String msg_cont, String match_date, String match_time,
			HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Map<String, Object> commandMap = new HashMap<String, Object>();
		
		Member m = (Member) session.getAttribute("loginInfo");
		commandMap.put("tr_email", tr_email);
		commandMap.put("mem_email", m.getMem_email());
		commandMap.put("msg_cont", msg_cont);
		commandMap.put("match_date", match_date);
		commandMap.put("match_time", match_time);
		
		ms.insertMatchMessage(commandMap);
		ms.insertMatch(commandMap);
		
		mv.addObject("msg", "발송이 완료되었습니다");
		mv.setViewName("message/result");
		return mv;
	}

}
