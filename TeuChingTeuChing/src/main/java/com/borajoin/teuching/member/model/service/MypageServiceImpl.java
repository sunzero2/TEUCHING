package com.borajoin.teuching.member.model.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.borajoin.teuching.matching.model.vo.Post;
import com.borajoin.teuching.member.model.dao.MypageDao;
import com.borajoin.teuching.member.model.vo.Member;
import com.borajoin.teuching.member.model.vo.Trainer;

@Service
public class MypageServiceImpl implements MypageService{

	@Autowired
	MypageDao mypageDao;
	
	@Override
	public List<Post> t_postlist(Map<String, String> data) {
		return mypageDao.t_postlist(data);
	}
	
	@Override
	public int t_count(Trainer t) {
		return mypageDao.t_count(t);
	}

	@Override
	public int photoUpdate(Map<String, Object> commandMap) throws SQLException {
		return mypageDao.photoUpdate(commandMap);
	}
	
	// 트레이너 회원정보 수정
	@Override
	public Trainer update_mypage_T(Map<String, Object> commandMap) throws Exception {
		mypageDao.update_mypage_T(commandMap);
		return mypageDao.t_login(commandMap);
	}
	
	// 일반회원 회원정보 수정
	@Override
	public Member update_mypage_M(Map<String, Object> commandMap) throws Exception {
		mypageDao.update_mypage_M(commandMap);
		return mypageDao.m_login(commandMap);
	}

	// 일반회원 로그인
	@Override
	public Member m_login(Map<String, Object> commandMap) throws SQLException {
		Member res = null;
		res = mypageDao.m_login(commandMap);
		return res;
	}

	// 트레이너 로그인
	@Override
	public Trainer t_login(Map<String, Object> commandMap) throws SQLException {
		Trainer res = null;
		res = mypageDao.t_login(commandMap);
		return res;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
