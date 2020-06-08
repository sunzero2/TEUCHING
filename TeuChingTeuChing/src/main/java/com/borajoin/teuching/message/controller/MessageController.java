package com.borajoin.teuching.message.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.message.model.service.MessageService;

@Controller
public class MessageController {

	@Autowired
	MessageService ms;

	@RequestMapping("/message.do")
	public String message() {
		return "message/temporary";
	}

	@RequestMapping("/message/messagecheck.do")
	public String messageCheck() {
		return "message/messageCheck";
	}

	@RequestMapping("/message/sendmessage.do")
	public ModelAndView messageForm(String mem_email, String tr_email) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("mem_email", mem_email);
		mv.addObject("tr_email", tr_email);
		mv.setViewName("message/messageForm");
		return mv;
	}

	@RequestMapping("/message/insertmessage.do")
	public ModelAndView insertMessage(String tr_email, String mem_email, String msg_cont, String msg_title,
			HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Map<String, Object> commandMap = new HashMap<String, Object>();
		commandMap.put("tr_email", tr_email);
		commandMap.put("mem_email", mem_email);
		commandMap.put("msg_cont", msg_cont);
		commandMap.put("msg_title", msg_title);
		ms.insertMessage(commandMap);
		mv.addObject("msg", "메시지가 발송되었습니다");
		mv.setViewName("message/result");
		return mv;
	}

	@RequestMapping("/message/matchform.do")
	public ModelAndView matchForm(String tr_email, String mem_email) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("tr_email", tr_email);
		mv.addObject("mem_email", mem_email);
		mv.setViewName("message/messageMatchForm");
		return mv;
	}
	
	@RequestMapping("/message/message.do")
	public String meesss() {
		return "message/messageMatchForm";
	}

}
