package com.oneteam.wo9wo9.admin.model.vo;

import lombok.Data;

@Data
public class PackageAttachment {

	private int imgNum;	//	IMG_NUM	NUMBER		NOT NULL,
	private int packageNum;	//    PACKAGE_NUM	NUMBER		NOT NULL,
	private String originName;	//	ORIGIN_NAME	VARCHAR2(255)		NOT NULL,
	private String changeName;	//	CHANGE_NAME	VARCHAR2(255)		NOT NULL,
	private String filePath;	//	FILE_PATH	VARCHAR2(1000)		NOT NULL,
	private String status;	//	STATUS	CHAR(1)	DEFAULT 'Y'	NOT NULL
}
