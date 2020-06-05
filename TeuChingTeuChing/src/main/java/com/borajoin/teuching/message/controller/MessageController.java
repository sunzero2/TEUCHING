package com.borajoin.teuching.message.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

	@RequestMapping("/messageform.do")
	public String messageform() {
		return "message/messageForm";
	}

	@RequestMapping("/messagecheck.do")
	public String messageCheck() {
		return "message/messageCheck";
	}

	@RequestMapping("/messageans.do")
	public ModelAndView messageAns() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("message/messageForm");
		return mv;
	}

}
