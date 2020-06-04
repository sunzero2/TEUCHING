package com.borajoin.teuching.message.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Message {
	
	private int message_idx;
	private int post_idx;
	private String tr_email;
	private String mem_email;
	private String msg_title;
	private String msg_cont;
	private Date write_date;

	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getMessage_idx() {
		return message_idx;
	}

	public void setMessage_idx(int message_idx) {
		this.message_idx = message_idx;
	}

	public int getPost_idx() {
		return post_idx;
	}

	public void setPost_idx(int post_idx) {
		this.post_idx = post_idx;
	}

	public String getTr_email() {
		return tr_email;
	}

	public void setTr_email(String tr_email) {
		this.tr_email = tr_email;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getMsg_title() {
		return msg_title;
	}

	public void setMsg_title(String msg_title) {
		this.msg_title = msg_title;
	}

	public String getMsg_cont() {
		return msg_cont;
	}

	public void setMsg_cont(String msg_cont) {
		this.msg_cont = msg_cont;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	@Override
	public String toString() {
		return "Message [message_idx=" + message_idx + ", post_idx=" + post_idx + ", tr_email=" + tr_email
				+ ", mem_email=" + mem_email + ", msg_title=" + msg_title + ", msg_cont=" + msg_cont + ", write_date="
				+ write_date + "]";
	}

}