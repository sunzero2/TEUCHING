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
	public int photoUpdate(Map<String, Object> commandMap) throws SQLException {
		return mypageDao.photoUpdate(commandMap);
	}
	
	// 트레이너 회원정보 수정
	@Override
	public Trainer update_mypage_T(Trainer trainer) throws Exception {
		mypageDao.update_mypage_T(trainer);
		return mypageDao.t_login(trainer);
	}
	
	// 일반회원 회원정보 수정
	@Override
	public Member update_mypage_M(Member member) throws Exception {
		mypageDao.update_mypage_M(member);
		return mypageDao.m_login(member);
	}

}
