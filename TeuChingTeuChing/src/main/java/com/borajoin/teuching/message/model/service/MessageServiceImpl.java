package com.borajoin.teuching.message.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.borajoin.teuching.message.model.dao.MessageDao;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	MessageDao md;
}
