package com.borajoin.teuching.member.model.service;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.borajoin.teuching.member.model.dao.MemberDao;
import com.borajoin.teuching.member.model.vo.Member;
import com.borajoin.teuching.member.model.vo.Trainer;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao md;
	
	//일반회원 회원가입
	@Override
	public int joinMember(Map<String, Object> commandMap) throws SQLException {
		int res = md.joinMember(commandMap);
	
		return res;
	}
	//트레이너 회원가입
	@Override
	public int joinTrainer(Map<String, Object> commandMap) throws SQLException {
		int res = md.joinTrainer(commandMap);
		
		return res;
	}
	
	
	
	// 일반회원 닉네임 중복체크
	@Override
	public int nickChk(String nickname){
		int res = md.nickChk(nickname);
		
		return res;
	}
	
	// 일반회원 이메일 중복체크
	@Override
	public int  emailChk(String email){
		int res = md.emailChk(email);
		
		return res;
	}

	// 트레이너 이메일 중복체크
	@Override
	public int t_emailChk(String email) {
		int res = md.t_emailChk(email);

		return res;
	}

	@Override
	public int insertFile(List<Map<String, Object>> fileData) {

		int res = 0;
		
		for(Map<String,Object> file : fileData) {
			
			md.insertFile(file);
			
			MultipartFile mf = (MultipartFile) file.get("file");
			File f = new File((String)file.get("savePath"));
			
			
			try {
				
				mf.transferTo(f);
				
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		
		
		return res;
	}

	
	
	
	
	
	
}
