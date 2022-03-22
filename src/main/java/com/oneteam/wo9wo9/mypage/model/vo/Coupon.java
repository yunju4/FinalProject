package com.oneteam.wo9wo9.mypage.model.vo;

import lombok.Data;

@Data
public class Coupon {
	
	private int coupon; //	COUPON	NUMBER		NOT NULL,
	private int memberNum; //	MEMBER_NUM	NUMBER		NOT NULL,
	private int discount; //	DISCOUNT	NUMBER		NOT NULL,
	private String status; //	STATUS	CHAR(1)	DEFAULT 'Y'	NOT NULL,
	private String couponName; //	COUPON_NAME	VARCHAR2(70)		NOT NULL
}
