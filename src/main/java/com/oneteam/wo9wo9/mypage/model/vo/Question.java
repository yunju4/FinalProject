package com.oneteam.wo9wo9.mypage.model.vo;

import lombok.Data;

@Data
public class Question {
	
	private int rownum;
	private int qNum; //	Q_NUM	NUMBER		NOT NULL,
	private int memberNum; //	MEMBER_NUM	NUMBER		NOT NULL,
	private int categoryNum; //	CATEGORY_NUM	NUMBER	DEFAULT 4	NOT NULL,
	private String status; //	STATUS	VARCHAR2(1)	DEFAULT 'N'	NOT NULL,
	private String qTitle; //	Q_TITLE	VARCHAR2(200)		NOT NULL,
	private String qContent; //	Q_CONTENT	VARCHAR2(1000)		NOT NULL,
	private String qDate;//	Q_DATE	DATE	DEFAULT SYSDATE	NOT NULL,
	private String aContent; //	A_CONTENT	VARCHAR2(1000)		NULL,
	private String aDate; //	A_DATE	DATE		NULL


}
