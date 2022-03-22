package com.oneteam.wo9wo9.review.vo;

import lombok.Data;

@Data
public class Review {
	private int noticeNo;
	private int orderNum;
	private String noticeContent;
	private String createDate;
	private String status;
	private int point;
	private String memberName;
}
