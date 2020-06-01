package com.borajoin.teuching.matching.model.vo;

import java.sql.Date;

public class Post {
	private int postIdx;
	private int trainerIdx;
	private String postTitle;
	private String postCont;
	private String keyword;
	private int price;
	private Date writeDate;

	public Post() {
		super();
	}

	public Post(int postIdx, int trainerIdx, String postTitle, String postCont, String keyword, int price,
			Date writeDate) {
		super();
		this.postIdx = postIdx;
		this.trainerIdx = trainerIdx;
		this.postTitle = postTitle;
		this.postCont = postCont;
		this.keyword = keyword;
		this.price = price;
		this.writeDate = writeDate;
	}

	public int getPostIdx() {
		return postIdx;
	}

	public void setPostIdx(int postIdx) {
		this.postIdx = postIdx;
	}

	public int getTrainerIdx() {
		return trainerIdx;
	}

	public void setTrainerIdx(int trainerIdx) {
		this.trainerIdx = trainerIdx;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostCont() {
		return postCont;
	}

	public void setPostCont(String postCont) {
		this.postCont = postCont;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	@Override
	public String toString() {
		return "Post [postIdx=" + postIdx + ", trainerIdx=" + trainerIdx + ", postTitle=" + postTitle + ", postCont="
				+ postCont + ", keyword=" + keyword + ", price=" + price + ", writeDate=" + writeDate + "]";
	}
}
