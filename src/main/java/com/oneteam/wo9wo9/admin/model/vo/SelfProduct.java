package com.oneteam.wo9wo9.admin.model.vo;

import lombok.Data;

@Data
public class SelfProduct {
	
	private int sideNum;	//	SIDE_NUM	NUMBER		NOT NULL,
	private int categoryNum;	//	CATEGORY_NUM	NUMBER		NOT NULL,       -- 요기요 (NUMBER 가 아니라 VARCHAR2 로 되어있었음
	private String sideName;	//	SIDE_NAME	VARCHAR2(100)		NOT NULL,
	private int price;	//	PRICE	NUMBER		NOT NULL,
	private String status;	//	STATUS	VARCHAR2(1)	DEFAULT 'Y'	NOT NULL,
	private int count;	//	COUNT	NUMBER	DEFAULT 0	NOT NULL

	private String titleImg;
	
	private int sumPrice;
}
