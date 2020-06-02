package com.borajoin.teuching.review.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.borajoin.teuching.review.model.dao.ReviewDao;
import com.borajoin.teuching.review.model.vo.Review;

import common.util.Paging;

public class ReviewServiceImpl implements ReviewService {

	ReviewDao rd = new ReviewDao();
	
	@Override
	public Map<String, Object> selectReviewList(String orderby, int currentPage, int cntPerPage) {
		
		Map<String, Object> res = new HashMap<>();
		
		Paging page = new Paging(rd.contentCnt(), currentPage, cntPerPage);
		List<Review> nlist = rd.selectReviewList(page, orderby);
		res.put("paging", page);
		res.put("nlist", nlist);
	
		return res;
	}

}
