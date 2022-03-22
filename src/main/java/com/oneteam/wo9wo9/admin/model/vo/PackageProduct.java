package com.oneteam.wo9wo9.admin.model.vo;

import lombok.Data;

@Data
public class PackageProduct {
	
	private int packageNum;	//	PACKAGE_NUM	NUMBER		NOT NULL,
	private int packageNum2;	//	PACKAGE_NUM2	NUMBER		NOT NULL, (�뙣�궎吏� 遺꾨쪟 踰덊샇)
	private String packageName;	//	PACKAGE_NAME	VARCHAR2(100)		NOT NULL,
	private int packagePrice;	//	PACKAGE_PRICE	NUMBER		NOT NULL,
	private String status;	//	STATUS	VARCHAR2(1)	DEFAULT 'Y'	NOT NULL
	private int count;
	
	private String titleImg;
	
	private String bestPackageImg;
	
	private String bestCImg;
	private String bestFImg;
	private String bestGImg;
	private String bestPImg;

	
}
