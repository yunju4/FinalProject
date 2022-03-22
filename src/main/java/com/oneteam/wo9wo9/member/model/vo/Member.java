package com.oneteam.wo9wo9.member.model.vo;

public class Member {
	
	private int memberNum;//MEMBER_NUM	NUMBER		NOT NULL,
	private String memberId;//MEMBER_ID	VARCHAR2(20)		NOT NULL,
	private String memberPwd;//MEMBER_PWD	VARCHAR2(15)		NOT NULL,
	private String memberName;//MEMBER_NAME	VARCHAR2(20)		NOT NULL,
	private String phone;//PHONE	VARCHAR2(20)		NOT NULL,
	private String email;//EMAIL	VARCHAR2(20)		NOT NULL,
	private String postNo;//POST_NO	VARCHAR2(5)		NOT NULL,
	private String address;//ADDRESS	VARCHAR2(50)		NOT NULL,
	private String detailAddress;//DETAIL_ADDRESS	VARCHAR2(50)		NOT NULL,
	private String gender;//GENDER	VARCHAR2(1)	DEFAULT 'N'	NOT NULL,
	private String status;//STATUS	VARCHAR2(1)	DEFAULT 'Y'	NOT NULL,
	private String birth;//BIRTH	VARCHAR2(8)		NOT NULL
	
	public Member() {
		super();
	}
	
	public Member(int memberNum, String memberId, String memberPwd, String memberName, String phone, String email,
			String postNo, String address, String detailAddress, String gender, String status, String birth) {
		super();
		this.memberNum = memberNum;
		this.memberId = memberId;
		this.memberPwd = memberPwd;
		this.memberName = memberName;
		this.phone = phone;
		this.email = email;
		this.postNo = postNo;
		this.address = address;
		this.detailAddress = detailAddress;
		this.gender = gender;
		this.status = status;
		this.birth = birth;
	}
	
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPwd() {
		return memberPwd;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPostNo() {
		return postNo;
	}
	public void setPostNo(String postNo) {
		this.postNo = postNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	@Override
	public String toString() {
		return "Member [memberNum=" + memberNum + ", memberId=" + memberId + ", memberPwd=" + memberPwd
				+ ", memberName=" + memberName + ", phone=" + phone + ", email=" + email + ", postNo=" + postNo
				+ ", address=" + address + ", detailAddress=" + detailAddress + ", gender=" + gender + ", status="
				+ status + ", birth=" + birth + "]";
	}
	
	

}
