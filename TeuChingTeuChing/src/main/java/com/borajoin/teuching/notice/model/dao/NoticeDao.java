package com.borajoin.teuching.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.borajoin.teuching.notice.model.vo.Notice;

@Repository
public class NoticeDao {
	@Autowired
	SqlSession sqlSession;
	
	public List<Notice> noticeList() {
		return sqlSession.selectList("Notice.selectNotice");
	}
}
