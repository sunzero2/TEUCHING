package com.borajoin.teuching.member.model.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.borajoin.teuching.matching.model.vo.Post;
import com.borajoin.teuching.member.model.vo.Member;
import com.borajoin.teuching.member.model.vo.Trainer;

public interface MypageService {

	public List<Post> t_postlist(Map<String, String> data);

	// 트레이너 프로필 사진 변경
	public int photoUpdate(Map<String, Object> commandMap) throws SQLException;

	// 트레이너 정보 업데이트
	public Trainer update_mypage_T(Trainer trainer) throws Exception;

	// 일반회원 정보 업데이트
	public Member update_mypage_M(Member member) throws Exception;

}
