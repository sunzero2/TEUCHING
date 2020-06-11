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
		System.out.println("값담아서 넘어가는 다오임다"+ orderby);
		return sqlSession.selectList("Review.selectReviewList", data);

	}
	
	public int insertReview(Review review) {
		return sqlSession.insert("Review.insertReview",review);
	}
	
	
	// 추천 
	public void recUpdate(String nickname, String no) {
		
		System.out.println("실행됨?");
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("nickname",nickname);
		map.put("no",no);
		sqlSession.update("Review.recUpdate",map);
		
	}
	
	
	// reviewrec테이블에 데이터 추가
	public int insertreviewrrec(String nickname, String no) {
		System.out.println("실행됨?22");
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("nickname",nickname);
		map.put("no",no);
		return sqlSession.insert("Review.insertreviewrrec",map);
		
	}
	
	
	
	// 추천수 가져오기
	public int getLike(String nickname) {
		System.out.println(nickname);
		return sqlSession.selectOne("Review.getLike",nickname);
	}
	
	
	
	// 추천여부
	public int reviewrecyn(String nickname, String no) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("nickname",nickname);
		map.put("no",no);
		return (Integer) sqlSession.selectOne("Review.reviewrecyn",map);
	}
	
	
	// 추천 제거
	public void recDelete(String nickname, String no) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("nickname",nickname);
		map.put("no",no);
		sqlSession.update("Review.recDelete",map);
	}
	
	
}
