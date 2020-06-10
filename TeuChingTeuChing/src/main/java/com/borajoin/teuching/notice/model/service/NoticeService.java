package com.borajoin.teuching.notice.model.service;

import java.util.List;
import java.util.Map;

import com.borajoin.teuching.notice.model.vo.Notice;

public interface NoticeService {
	public List<Notice> noticeList(Map<String, String> data);
}
