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
		System.out.println("==>일반회원 회원가입");
		return session.insert("Member.joinMember", commandMap);
	}

	// 트레이너 회원가입
	public int joinTrainer(Map<String,Object> commandMap) {
		System.out.println("==>트레이너 회원가입");
		return session.insert("Trainer.joinTrainer", commandMap);
	}
	
	//일반회원 닉네임 중복확인
	public int nickChk(String nickname) {
		System.out.println("==>일반회원 닉네임 중복체크!");
		int res = session.selectOne("Member.nickChk", nickname);
		return res;
	}
	
	//일반회원 이메일 중복확인
	public int emailChk(String email) {
		System.out.println("==>일반 회원 이메일 중복체크!");
		int res = session.selectOne("Member.emailChk", email);
		return res;
	}
	
	//일반회원 이메일 중복확인
	public int t_emailChk(String email) {
		System.out.println("==>트레이너 이메일 중복체크!");
		int res = session.selectOne("Trainer.t_emailChk", email);
		return res;
	}
	
	
	
	
	
	//로그인
	
	
	
	
	// 트레이너 프로필 사진 넣기
	public int insertFile(Map<String, Object> file) {

		return session.insert("Notice.insertFile", file);
	}
	// 트레이너 프로필 사진 삭제?
	public int deleteFile(int noticeNo) {

		return session.delete("Notice.deleteFile", noticeNo);
	}

	
	
	
	
	
	
	
	
	
	
}
