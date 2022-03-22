package com.oneteam.wo9wo9.customercenter.model.vo;

import lombok.Data;

@Data
public class Notice {
	private int noticeNo;//	NOTICE_NO   NUMBER  NULL,
	private int memberNum;//    MEMBER_NUM  NUMBER  NOT NULL,
	private String noticeTitle;//    NOTICE_TITLE    VARCHAR2(100)   NULL,
	private String noticeContent;//    NOTICE_CONTENT  VARCHAR2(500)   NULL,
	private String createDate;//    CREATE_DATE DATE    NULL,
	private String status;//    STATUS CHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N'))
	private int count;
	private int categoryNum;
	private String noticeName;
	
}
