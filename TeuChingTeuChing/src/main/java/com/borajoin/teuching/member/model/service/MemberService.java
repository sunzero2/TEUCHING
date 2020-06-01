package com.borajoin.teuching.member.model.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.borajoin.teuching.member.model.vo.Member;
import com.borajoin.teuching.member.model.vo.Trainer;

public interface MemberService {

	//일반회원 회원가입
	public int joinMember(Map<String, Object> commandMap) throws SQLException;
	//트레이너 회원가입
	public int joinTrainer(Map<String, Object> commandMap) throws SQLException;
	
	
	//일반회원 닉네임 체크
	public int nickChk(Member nickname) throws SQLException;
	
	
	
	public int insertFile(List<Map<String,Object>>fileData);
	
	
	
	
	
	
}
