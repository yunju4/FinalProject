package com.oneteam.wo9wo9.notice.model.vo;


import lombok.Data;
@Data
public class NoticeS {
	
	private int noticeNo;	//	NOTICE_NO	NUMBER		NULL,
	private int memberNum;	//    MEMBER_NUM	NUMBER		NOT NULL,
	private int categoryNum;//    CATEGORY_NUM NUMBER NOT NULL,
	private String noticeTitle;	//	NOTICE_TITLE	VARCHAR2(100)		NULL,
	private String noticeContent;	//	NOTICE_CONTENT	VARCHAR2(500)		NULL,
	private String createDate;	//	CREATE_DATE	DATE		NULL,
	private String status;	//	STATUS	VARCHAR2(1)	DEFAULT 'Y'	NULL,
	private int count;
	private String noticeName;//    COUNT	NUMBER	DEFAULT 0	NULL
	
	
}

