package com.oneteam.wo9wo9.selfdo.model.vo;

public class Sidedo {

	
	private int sideNum;
	private int categoryNum;
	private String sideName;
	private int price;
	private String status;
	private int count;
	
	private String titleImg;
	
	public Sidedo() {
		super();
	}

	public Sidedo(int sideNum, int categoryNum, String sideName, int price, String status, int count, String titleImg) {
		super();
		this.sideNum = sideNum;
		this.categoryNum = categoryNum;
		this.sideName = sideName;
		this.price = price;
		this.status = status;
		this.count = count;
		this.titleImg = titleImg;
	}

	public int getSideNum() {
		return sideNum;
	}

	public void setSideNum(int sideNum) {
		this.sideNum = sideNum;
	}

	public int getCategoryNum() {
		return categoryNum;
	}

	public void setCategoryNum(int categoryNum) {
		this.categoryNum = categoryNum;
	}

	public String getSideName() {
		return sideName;
	}

	public void setSideName(String sideName) {
		this.sideName = sideName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	@Override
	public String toString() {
		return "Sidedo [sideNum=" + sideNum + ", categoryNum=" + categoryNum + ", sideName=" + sideName + ", price="
				+ price + ", status=" + status + ", count=" + count + ", titleImg=" + titleImg + "]";
	}
}
