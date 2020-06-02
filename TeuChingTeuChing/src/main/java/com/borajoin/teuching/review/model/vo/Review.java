package com.borajoin.teuching.review.model.vo;

public class Review {

	private int reviewIdx;
	private String trainerName;
	private String nickName;
	private String revCont;
	private int revScore;
	private int revPassword;
	private String reportYn;
	private int recommend;
	
	public Review() {
		
	}

	public int getReviewIdx() {
		return reviewIdx;
	}

	public void setReviewIdx(int reviewIdx) {
		this.reviewIdx = reviewIdx;
	}

	public String getTrainerName() {
		return trainerName;
	}

	public void setTrainerName(String trainerName) {
		this.trainerName = trainerName;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getRevCont() {
		return revCont;
	}

	public void setRevCont(String revCont) {
		this.revCont = revCont;
	}

	public int getRevScore() {
		return revScore;
	}

	public void setRevScore(int revScore) {
		this.revScore = revScore;
	}

	public int getRevPassword() {
		return revPassword;
	}

	public void setRevPassword(int revPassword) {
		this.revPassword = revPassword;
	}

	public String getReportYn() {
		return reportYn;
	}

	public void setReportYn(String reportYn) {
		this.reportYn = reportYn;
	}

	public int getRecommend() {
		return recommend;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}

	@Override
	public String toString() {
		return "Review [reviewIdx=" + reviewIdx + ", trainerName=" + trainerName + ", nickName=" + nickName
				+ ", revCont=" + revCont + ", revScore=" + revScore + ", revPassword=" + revPassword + ", reportYn="
				+ reportYn + ", recommend=" + recommend + "]";
	}
	
	
	
}
