package com.borajoin.teuching.matching.model.vo;

import java.sql.Date;

public class Post {
	private int postIdx;
	private int trainerIdx;
	private String postTitle;
	private String postCont;
	private String purpose;
	private String sports;
	private String area;
	private String classSize;
	private String gender;
	private String place;
	private int price;
	private Date writeDate;
	private String writer;

	public Post() {
		super();
	}

	public Post(int postIdx, int trainerIdx, String postTitle, String postCont, String purpose, String sports,
			String area, String classSize, String gender, String place, int price, Date writeDate, String writer) {
		super();
		this.postIdx = postIdx;
		this.trainerIdx = trainerIdx;
		this.postTitle = postTitle;
		this.postCont = postCont;
		this.purpose = purpose;
		this.sports = sports;
		this.area = area;
		this.classSize = classSize;
		this.gender = gender;
		this.place = place;
		this.price = price;
		this.writeDate = writeDate;
		this.writer = writer;
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

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public String getSports() {
		return sports;
	}

	public void setSports(String sports) {
		this.sports = sports;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getClassSize() {
		return classSize;
	}

	public void setClassSize(String classSize) {
		this.classSize = classSize;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
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

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	@Override
	public String toString() {
		return "Post [postIdx=" + postIdx + ", trainerIdx=" + trainerIdx + ", postTitle=" + postTitle + ", postCont="
				+ postCont + ", purpose=" + purpose + ", sports=" + sports + ", area=" + area + ", classSize="
				+ classSize + ", gender=" + gender + ", place=" + place + ", price=" + price + ", writeDate="
				+ writeDate + "]";
	}
}
