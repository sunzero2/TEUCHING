package com.borajoin.teuching.review.model.service;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.borajoin.teuching.review.model.vo.Review;


public interface ReviewService {

	
	public Map<String,Object> selectReviewList(String orderby, int currentPage, int cntPerPage);
	public int uploadReview(Review review);
	public int recUpdate(Map<String, Object> data);
	public int reviewrecyn(Map<String, Object> data);
	public int recDelete(Map<String, Object> data);
	public int recCount(String no);	
	
	public Map<String,Object> selectTrainerInformation(String trainerEmail);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
