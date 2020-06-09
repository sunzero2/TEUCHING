package com.borajoin.teuching.review.model.service;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.borajoin.teuching.review.model.vo.Review;


public interface ReviewService {

	
	public Map<String,Object> selectReviewList(String orderby, int currentPage, int cntPerPage);
	public int insertReview(Review review);
	public int recUpdate();
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
