package com.borajoin.teuching.member.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.borajoin.teuching.matching.model.vo.Post;
import com.borajoin.teuching.member.model.vo.Member;
import com.borajoin.teuching.member.model.vo.Trainer;

@Repository
public class MypageDao {

	@Autowired
	private SqlSessionTemplate session;
	
	// 일반회원 세션 새로 가져오기용
	public Member m_login(Member member) {
		return session.selectOne("Member.m_login", member);
	}

	// 트레이너 세션 새로 가져오기용
	public Trainer t_login(Trainer trainer) {
		return session.selectOne("Member.t_login", trainer);
	}
	
	// 일반회원 회원정보 업데이트
	public int update_mypage_M(Member member){
		return session.update("Member.update_mypage_M", member);
	}
	
	// 트레이너 회원정보 업데이트
	public int update_mypage_T(Trainer trainer){
		return session.update("Member.update_mypage_T", trainer);
	}

	
	//트레이너 프로필사진 업데이트
	public int photoUpdate(Map<String, Object> commandMap) {
		return session.update("Member.photoUpdate", commandMap);
	}
	
	//트레이너 게시글 리스트
	public List<Post> t_postlist(Map<String, String> data) {
		return session.selectList("Member.t_postlist", data);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
