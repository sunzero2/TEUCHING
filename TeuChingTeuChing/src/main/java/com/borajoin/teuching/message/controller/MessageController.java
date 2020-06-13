package com.borajoin.teuching.message.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.member.model.vo.Member;
import com.borajoin.teuching.member.model.vo.Trainer;
import com.borajoin.teuching.message.model.service.MessageService;
import com.borajoin.teuching.message.model.vo.Message;
import com.sun.mail.auth.MD4;

@Controller
public class MessageController {

	@Autowired
	MessageService ms;

	/**
	 * @Method Name : msgBoxSend
	 * @작성일 : 2020. 6. 12.
	 * @작성자 : 김지수
	 * @Method 설명 : 받은 쪽지함 목록 띄우기
	 */
	@RequestMapping("/message/msgboxsend.do")
	public ModelAndView msgBoxSend(HttpSession session, Integer currentpage) {
		ModelAndView mv = new ModelAndView();
		Map<String, Object> res = new HashMap<String, Object>();
		String type = "";
		if (currentpage == null) {
			currentpage = 1;
		}

		if (session.getAttribute("loginInfo").getClass().getTypeName().contains("Member")) {
			type = "Member";
			Member m = (Member) session.getAttribute("loginInfo");
			res = ms.selectMsgBoxSend(m.getMem_email(), currentpage, type);
		}
		if (session.getAttribute("loginInfo").getClass().getTypeName().contains("Trainer")) {
			type = "Trainer";
			Trainer t = (Trainer) session.getAttribute("loginInfo");
			res = ms.selectMsgBoxSend(t.getTr_email(), currentpage, type);
		}
		mv.addObject("res", res);
		mv.addObject("type", type);
		mv.setViewName("message/msgBoxSend");
		return mv;
	}

	/**
	 * @Method Name : msgBoxRecv
	 * @작성일 : 2020. 6. 12.
	 * @작성자 : 김지수
	 * @Method 설명 : 보낸 쪽지 함 목록띄우기
	 */
	@RequestMapping("/message/msgboxrecv.do")
	public ModelAndView msgBoxRecv(HttpSession session, Integer currentpage) {
		ModelAndView mv = new ModelAndView();
		Map<String, Object> res = new HashMap<String, Object>();
		String type = "";
		if (currentpage == null)
			currentpage = 1;

		if (session.getAttribute("loginInfo").getClass().getTypeName().contains("Trainer")) {
			type = "Trainer";
			Trainer t = (Trainer) session.getAttribute("loginInfo");
			res = ms.selectMsgBoxRecv(t.getTr_email(), currentpage, type);
		}
		if (session.getAttribute("loginInfo").getClass().getTypeName().contains("Member")) {
			type = "Member";
			Member m = (Member) session.getAttribute("loginInfo");
			res = ms.selectMsgBoxRecv(m.getMem_email(), currentpage, type);
		}
		mv.addObject("res", res);
		mv.addObject("type", type);
		mv.setViewName("message/msgBoxRecv");
		return mv;
	}

	/**
	 * @Method Name : msgRecvDetail
	 * @작성일 : 2020. 6. 12.
	 * @작성자 : 김지수
	 * @Method 설명 : 받은 메시지 자세히 보기
	 */
	@RequestMapping("/message/msgrecvdetail.do")
	public ModelAndView msgRecvDetail(HttpSession session, int message_idx) {
		ModelAndView mv = new ModelAndView();
		Message m = ms.selectMsgDetail(message_idx);
		Map<String, Object> commandMap = new HashMap<String, Object>();
		commandMap.put("tr_email", m.getTr_email());
		commandMap.put("mem_email", m.getMem_email());
		if (session.getAttribute("loginInfo").getClass().getTypeName().contains("Trainer")) {
			// 트레이너일경우 받은 메시지 폼 체크
			mv.setViewName("message/msgRecvTra");
		}
		if (session.getAttribute("loginInfo").getClass().getTypeName().contains("Member")) {
			// 회원일 경우 트레이너에게 받은 메시지
			mv.setViewName("message/msgRecvMem");
		}
		mv.addObject("match", ms.showMatchInfo(commandMap));
		mv.addObject("res", m);
		return mv;
	}

	/**
	 * @Method Name : msgSendDetail
	 * @작성일 : 2020. 6. 12.
	 * @작성자 : 김지수
	 * @Method 설명 :보낸메시지 자세히 보기
	 */
	@RequestMapping("/message/msgsenddetail.do")
	public ModelAndView msgSendDetail(HttpSession session, int message_idx) {
		ModelAndView mv = new ModelAndView();
		Message m = ms.selectMsgDetail(message_idx);
		Map<String, Object> commandMap = new HashMap<String, Object>();
		commandMap.put("tr_email", m.getTr_email());
		commandMap.put("mem_email", m.getMem_email());
		if (session.getAttribute("loginInfo").getClass().getTypeName().contains("Trainer")) {
			// 매칭정보
			mv.setViewName("message/msgSendTra");
		}
		if (session.getAttribute("loginInfo").getClass().getTypeName().contains("Member")) {
			mv.setViewName("message/msgSendMem");
		}

		mv.addObject("match", ms.showMatchInfo(commandMap));
		mv.addObject("res", m);

		return mv;
	}


	/**
	 * @Method Name : msgAnsTra
	 * @작성일 : 2020. 6. 13.
	 * @작성자 : 김지수
	 * @Method 설명 : 트레이너가 회원에게 보내는 답장
	 */
	@RequestMapping("/message/msganstra.do")
	public ModelAndView msgAnsTra(HttpSession session, String msg_cont, String mem_email) {
		ModelAndView mv = new ModelAndView();
		Map<String, Object> commandMap = new HashMap<String, Object>();
		Trainer t = (Trainer) session.getAttribute("loginInfo");

		commandMap.put("msg_cont", msg_cont);
		commandMap.put("mem_email", mem_email);
		commandMap.put("tr_email", t.getTr_email());

		ms.insertMsgAnsTra(commandMap);

		mv.addObject("msg", "발송이 완료 되었습니다");
		mv.setViewName("message/result");

		return mv;
	}

	/**
	 * @Method Name : matchForm
	 * @작성일 : 2020. 6. 10.
	 * @작성자 : 김지수
	 * @Method 설명 : 트레이너에게 상담신청 폼으로 연결
	 */
	@RequestMapping("/message/matchform.do")
	public ModelAndView matchForm(String tr_email, HttpSession session, String date) {
		// -------확인
		ModelAndView mv = new ModelAndView();
		Member m = (Member) session.getAttribute("loginInfo");
		mv.addObject("tr_email", tr_email);
		mv.addObject("date", date);
		mv.setViewName("message/messageMatchForm");
		return mv;
	}

	/**
	 * @Method Name : matchFormSend
	 * @작성일 : 2020. 6. 10.
	 * @작성자 : 김지수
	 * @Method 설명 : 트레이너에게 상담신청 메시지 발송 & 매칭 요청
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

	/**
	 * @Method Name : msgAccept
	 * @작성일 : 2020. 6. 13.
	 * @작성자 : 김지수
	 * @Method 설명 : 트레이너의 매칭 요청 수락 ajax처리
	 */
	@ResponseBody
	@RequestMapping("/message/msgaccept.do")
	public String msgAccept(int match_idx) {
		String matchYn = "";
		if (ms.matchYnCheck(match_idx) > 0) {
			ms.updateMatchYn(match_idx);
			matchYn = "success";
		} else {
			matchYn = "fail";
		}
		return matchYn;
	}
	
	/**
	* @Method Name : msgAnsMem
	* @작성일 : 2020. 6. 13.
	* @작성자 : 김지수
	* @Method 설명 : 회원이 트레이너에게 보내는 답장
	*/
	@RequestMapping("/message/msgansmem.do")
	public ModelAndView msgAnsMem(String mem_email, String tr_email, String msg_cont) {
		ModelAndView mv = new ModelAndView();
		Map<String, Object> commanMap = new HashMap<String, Object>();
		commanMap.put("mem_email", mem_email);
		commanMap.put("tr_email", tr_email);
		commanMap.put("msg_cont", msg_cont);
		ms.insertMsgAnsMem(commanMap);
		mv.addObject("msg","발송이 완료되었습니다");
		mv.setViewName("message/result");
		return mv;
	}
}
