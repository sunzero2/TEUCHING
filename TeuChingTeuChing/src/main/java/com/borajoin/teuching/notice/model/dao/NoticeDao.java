package com.borajoin.teuching.notice.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.borajoin.teuching.notice.model.vo.Notice;

@Repository
public class NoticeDao {
	@Autowired
	SqlSession sqlSession;
	
	public List<Notice> noticeList(Map<String, String> data) {
		return sqlSession.selectList("Notice.selectNotice", data);
	}
}
