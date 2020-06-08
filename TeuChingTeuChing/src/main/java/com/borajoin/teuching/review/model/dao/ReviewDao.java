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
		int res = 0;

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
}
