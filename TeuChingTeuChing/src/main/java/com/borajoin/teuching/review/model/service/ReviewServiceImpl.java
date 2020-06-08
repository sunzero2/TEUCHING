package com.borajoin.teuching.review.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.borajoin.teuching.review.model.dao.ReviewDao;
import com.borajoin.teuching.review.model.vo.Review;

import common.util.Paging;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	ReviewDao rd;
	
	@Override
	public Map<String, Object> selectReviewList(String orderby, int currentPage, int cntPerPage) {
		
		Map<String, Object> res = new HashMap<>();
		System.out.println("서비스 임플입니다.");
		
		Paging page = new Paging(rd.contentCnt(), currentPage, cntPerPage);
		List<Review> rlist = rd.selectReviewList(page, orderby);
		System.out.println(rlist);
		res.put("paging", page);
		res.put("rlist", rlist);
	
		return res;
	}

}
