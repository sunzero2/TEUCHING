package com.borajoin.teuching.review.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.borajoin.teuching.review.model.vo.Review;

import common.util.Paging;

@Repository
public class ReviewDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public int contentCnt() {

		// 게시글 갯수를 반환해줄 메서드

		return sqlSession.selectOne("Review.contentCnt");
	}

	public List<Review> selectReviewList(Paging page, String orderby) {
		System.out.println("리뷰 다오이비다..");
		Map<String, Object> data = new HashMap<>();
		data.put("page", page);
		data.put("orderby", orderby);
		return sqlSession.selectList("Review.selectReviewList", data);

	}
	
	public int insertReview(Review review) {
		return sqlSession.insert("Review.insertReview",review);
	}
	
	
	// 추천 
	public int recUpdate(Map<String, Object> data) {
		return sqlSession.update("Review.recUpdate", data);
	}
	
	
	// reviewrec테이블에 데이터 추가
	public int insertreviewrrec(Map<String, Object> data) {
		return sqlSession.insert("Review.insertreviewrrec", data);
	}
	
	
	
	// 추천수 가져오기
	public int getLike(String nickname) {
		return sqlSession.selectOne("Review.getLike",nickname);
	}
	
	
	
	// 추천여부
	public int reviewrecyn(Map<String, Object> data) {
		return sqlSession.selectOne("Review.reviewrecyn", data);
	}
	
	
	// 추천 제거
	public int recDelete(Map<String, Object> data) {
		return sqlSession.update("Review.recDelete", data);
	}
}
