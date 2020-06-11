package com.borajoin.teuching.review.model.service;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.borajoin.teuching.review.model.vo.Review;


public interface ReviewService {

	
	public Map<String,Object> selectReviewList(String orderby, int currentPage, int cntPerPage);
	public int insertReview(Review review);
	public void recUpdate(String nickname, String no);
	public int reviewrecyn(String nickname, String no);
	public void recDelete(String nickname, String no);
	public int recCount(String nickname, String no);	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
