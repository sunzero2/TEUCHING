package com.borajoin.teuching.notice.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.borajoin.teuching.notice.model.dao.NoticeDao;
import com.borajoin.teuching.notice.model.vo.Notice;

@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	NoticeDao noticeDao;

	@Override
	public List<Notice> noticeList() {
		return noticeDao.noticeList();
	}
}
