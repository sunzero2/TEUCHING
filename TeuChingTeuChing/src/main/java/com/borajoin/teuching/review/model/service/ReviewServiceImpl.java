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

	@Override
	public int insertReview(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void recUpdate(String nickname, String no) {
		
		rd.recUpdate(nickname, no);
		// 추천수 업데이트 시키기
		
		rd.insertreviewrrec(nickname, no);
		// reviewrec테이블에 데이터 넣기
		
	}

	@Override
	public int reviewrecyn(String nickname, String no) {
		
		int yn = rd.reviewrecyn(nickname, no);
		System.out.println("reviewrecyn 서비스단에서 나오는 값 : "+yn);
		
		
		return yn;
	}

	@Override
	public void recDelete(String nickname, String no) {
		
		rd.recDelete(nickname, no);
		
	}

	@Override
	public int recCount(String nickname, String no) {
		int res = rd.getLike(nickname);
		// 좋아요의 수 (업데이트된)
		System.out.println(res);
		return res;
	}

	
	

}
