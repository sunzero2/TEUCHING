package com.borajoin.teuching.review.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.member.model.vo.Member;
import com.borajoin.teuching.review.model.service.ReviewService;
import com.borajoin.teuching.review.model.vo.Review;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService rs;

	/**
	 * @Method Name : reviewList
	 * @작성일 : 2020. 6. 8.
	 * @작성자 : 이보라
	 * @Method 설명 : 리뷰리스트 리뷰페이지에다가 뿌려주는 메소드임
	 */
	@RequestMapping("profile/review.do")
	public ModelAndView reviewList(@RequestParam Map<String, Object> commandMap) {

		ModelAndView mav = new ModelAndView();

		int currentPage = 1;
		int cntPerPage = 5;

		String orderby = "review_idx"; // 기준으로 orderby할 것 가져오기

		if (commandMap.get("reviewPage") != null) {
			currentPage = Integer.parseInt((String) commandMap.get("reviewPage"));
		}

		if (commandMap.get("cntPerPage") != null) {
			cntPerPage = Integer.parseInt((String) commandMap.get("cntPerPage"));
		}

		Map<String, Object> res = rs.selectReviewList(orderby, currentPage, cntPerPage);
		System.out.println("컨트롤 값 받아온거" + res);
		mav.addObject("reviewList", res);
		mav.setViewName("profile/review");

		return mav;

	}

	@RequestMapping("review/uploadreview.do")
	public ModelAndView uploadReview(Review review, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		/*
		 * Member member = (Member) session.getAttribute("logInInfo");
		 * member.setNickname(member.getNickname());
		 */

		int res = rs.insertReview(review);
		if (res == 0) {
			mav.addObject("msg", "게시글 등록에 실패하였습니다. 다시한번 확인해주세요.");
			mav.addObject("url", "/teuching/profile/review.do");
			mav.setViewName("common/result");
		}
		mav.addObject("msg", "게시글이 등록되었습니다.");
		mav.addObject("url", "/teuching/profile/review.do");
		mav.setViewName("common/result");

		return mav;

	}

	/**
	 * @Method Name : scheduledo
	 * @작성일 : 2020. 6. 8.
	 * @작성자 : 이보라
	 * @Method 설명 : 스케줄러로 이동한다ㅋ
	 */
	@RequestMapping("profile/schedule.do")
	public ModelAndView scheduledo() {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("profile/schedule");
		return mav;
	}

	/**
	 * @Method Name : recUpdate
	 * @작성일 : 2020. 6. 10.
	 * @작성자 : 이보라
	 * @Method 설명 : 추천수 업데이트
	 */
	@RequestMapping(value = "review/recupdate.do", method = RequestMethod.POST)
	@ResponseBody
	public int recUpdate(@RequestParam Map<String, Object> data) {
		int res = 0;
		int result = rs.reviewrecyn(data);
		if (result == 0) {
			// 추천을 한적 없다면 추천 추가
			res = rs.recUpdate(data);
		} else {
			// 추천 한적 있으면 다시 삭제
			res = rs.recDelete(data);
		}
		return res;
	}

	@RequestMapping(value = "review/reccount.do", method = RequestMethod.POST)
	@ResponseBody
	public int recCount(@RequestParam Map<String, Object> data) {
		// 추천수 구함
		int count = rs.recCount((String)data.get("nickname"));
		return count;
	}

}
