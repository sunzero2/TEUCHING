package com.borajoin.teuching.member.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.borajoin.teuching.member.model.vo.Member;
import com.borajoin.teuching.member.model.vo.Trainer;

@Repository
public class MemberDao {

	@Autowired
	private SqlSessionTemplate session;
	
	//일반 회원 회원가입
	public int joinMember(Map<String,Object> commandMap) {
		return session.insert("Member.joinMember", commandMap);
	}

	// 트레이너 회원가입
	public int joinTrainer(Map<String,Object> commandMap) {
		return session.insert("Member.joinTrainer", commandMap);
	}
	
	//닉네임 중복확인
	public int nickChk(Member nickname) {

		return session.selectOne("Member.nickChk", nickname);
	}
	
	//로그인
	
	
	public int insertFile(Map<String, Object> file) {

		return session.insert("Notice.insertFile", file);
	}

	public int deleteFile(int noticeNo) {

		return session.delete("Notice.deleteFile", noticeNo);
	}

}
