package com.oneteam.wo9wo9.customercenter.model.vo;

import lombok.Data;

@Data
public class Question {
	private int qNum;
	private int rowNum;
	private int memberNum;
	private int categoryNum;
	private String status;
	private String qTitle;
	private String qContent;
	private String qDate;
	private String aContent;
	private String aDate;
	private int count;
	private String memberId;
	private int noticeNo;
}
