package com.borajoin.teuching.manager.model.vo;

import java.sql.Date;

public class ReviewReport {

	private int report_id; // 신고번호
	private int trainer_id; // 트레이너번호
	private int member_id; // 회원번호
	private String rep_cont; // 신고내용
	private String report_handle; // 처리결과
	private String handel_cont; // 처리내용
	private Date report_date; // 신고일자

	public ReviewReport() {
		super();
	}

	public int getReport_id() {
		return report_id;
	}

	public void setReport_id(int report_id) {
		this.report_id = report_id;
	}

	public int getTrainer_id() {
		return trainer_id;
	}

	public void setTrainer_id(int trainer_id) {
		this.trainer_id = trainer_id;
	}

	public int getMember_id() {
		return member_id;
	}

	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}

	public String getRep_cont() {
		return rep_cont;
	}

	public void setRep_cont(String rep_cont) {
		this.rep_cont = rep_cont;
	}

	public String getReport_handle() {
		return report_handle;
	}

	public void setReport_handle(String report_handle) {
		this.report_handle = report_handle;
	}

	public String getHandel_cont() {
		return handel_cont;
	}

	public void setHandel_cont(String handel_cont) {
		this.handel_cont = handel_cont;
	}

	public Date getReport_date() {
		return report_date;
	}

	public void setReport_date(Date report_date) {
		this.report_date = report_date;
	}

	@Override
	public String toString() {
		return "ReviewReport [report_id=" + report_id + ", trainer_id=" + trainer_id + ", member_id=" + member_id
				+ ", rep_cont=" + rep_cont + ", report_handle=" + report_handle + ", handel_cont=" + handel_cont
				+ ", report_date=" + report_date + "]";
	}

}
