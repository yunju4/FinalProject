package com.oneteam.wo9wo9.notice.model.vo;

public class NoticeCategory {

	private int categoryNum;	//	CATEGORY_NUM	NUMBER		NOT NULL,
	private String noticeName;	//	NOTICE_NAME	VARCHAR2(20)		NULL
	
	public NoticeCategory() {
		super();
	}

	public NoticeCategory(int categoryNum, String noticeName) {
		super();
		this.categoryNum = categoryNum;
		this.noticeName = noticeName;
	}

	public int getCategoryNum() {
		return categoryNum;
	}

	public void setCategoryNum(int categoryNum) {
		this.categoryNum = categoryNum;
	}

	public String getNoticeName() {
		return noticeName;
	}

	public void setNoticeName(String noticeName) {
		this.noticeName = noticeName;
	}

	@Override
	public String toString() {
		return "NoticeCategory [categoryNum=" + categoryNum + ", noticeName=" + noticeName + "]";
	}
	
	
	
	
	
}
