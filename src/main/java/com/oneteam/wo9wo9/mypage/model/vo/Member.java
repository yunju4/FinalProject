package com.oneteam.wo9wo9.mypage.model.vo;

import lombok.Data;

@Data
public class Member {
	
	private int memberNum; //	MEMBER_NUM	NUMBER		NOT NULL,
	private String memberId;//	MEMBER_ID	VARCHAR2(20)		NOT NULL,
	private String memberPwd; //	MEMBER_PWD	VARCHAR2(15)		NOT NULL,
	private String memberName; //	MEMBER_NAME	VARCHAR2(20)		NOT NULL,
	private String phone; //	PHONE	VARCHAR2(20)		NOT NULL,
	private String email; //	EMAIL	VARCHAR2(20)		NOT NULL,
	private String postNo; //	POST_NO	VARCHAR2(5)		NOT NULL,
	private String address; //	ADDRESS	VARCHAR2(50)		NOT NULL,
	private String detailAddress; //	DETAIL_ADDRESS	VARCHAR2(50)		NOT NULL,
	private String gender; //	GENDER	VARCHAR2(1)	DEFAULT 'N'	NOT NULL,
	private String status; //	STATUS	VARCHAR2(1)	DEFAULT 'Y'	NOT NULL,
	private String birth; //	BIRTH	VARCHAR2(8)		NOT NULL	
}
