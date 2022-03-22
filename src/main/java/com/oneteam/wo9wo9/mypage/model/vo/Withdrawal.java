package com.oneteam.wo9wo9.mypage.model.vo;

import java.util.Date;

import lombok.Data;

@Data
public class Withdrawal {

	private int drawalNum; //	DRAWAL_NUM	NUMBER	NOT NULL,
	private int memberNum; //	MEMBER_NUM	NUMBER	NOT NULL,
	private Date drawalDate; //	DRAWAL_DATE	DATE    DEFAULT SYSDATE,
	private String dContent; //	D_CONTENT	VARCHAR2(100) NULL
}
