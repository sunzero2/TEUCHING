package com.borajoin.teuching.member.model.vo;

public class Trainer {

	private String eamil;
	private String password;
	private String name;
	private String gender;
	private int weight;
	private int height;
	private String cell;
	private String career;
	private String address;
	private String prefer1;
	private String prefer2;
	private String prefer3;
	private String photo;
	private int like;
	private String black_yn;
	private String leave_yn;
	
	
	public String getEamil() {
		return eamil;
	}
	public void setEamil(String eamil) {
		this.eamil = eamil;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public String getCell() {
		return cell;
	}
	public void setCell(String cell) {
		this.cell = cell;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPrefer1() {
		return prefer1;
	}
	public void setPrefer1(String prefer1) {
		this.prefer1 = prefer1;
	}
	public String getPrefer2() {
		return prefer2;
	}
	public void setPrefer2(String prefer2) {
		this.prefer2 = prefer2;
	}
	public String getPrefer3() {
		return prefer3;
	}
	public void setPrefer3(String prefer3) {
		this.prefer3 = prefer3;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	public String getBlack_yn() {
		return black_yn;
	}
	public void setBlack_yn(String black_yn) {
		this.black_yn = black_yn;
	}
	public String getLeave_yn() {
		return leave_yn;
	}
	public void setLeave_yn(String leave_yn) {
		this.leave_yn = leave_yn;
	}
	
	@Override
	public String toString() {
		return "Trainer [eamil=" + eamil + ", password=" + password + ", name=" + name + ", gender=" + gender
				+ ", weight=" + weight + ", height=" + height + ", cell=" + cell + ", career=" + career + ", address="
				+ address + ", prefer1=" + prefer1 + ", prefer2=" + prefer2 + ", prefer3=" + prefer3 + ", photo="
				+ photo + ", like=" + like + ", black_yn=" + black_yn + ", leave_yn=" + leave_yn + "]";
	}
	
	
	
	
}