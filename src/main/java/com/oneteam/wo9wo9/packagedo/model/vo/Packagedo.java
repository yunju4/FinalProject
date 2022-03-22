package com.oneteam.wo9wo9.packagedo.model.vo;

public class Packagedo {
	
	private int packageNum;
	private int packageNum2;
	private String packageName;
	private int packagePrice;
	private String status;
	
	private String titleImg;
	
	public Packagedo() {
		super();
	}

	public Packagedo(int packageNum, int packageNum2, String packageName, int packagePrice, String status,
			String titleImg) {
		super();
		this.packageNum = packageNum;
		this.packageNum2 = packageNum2;
		this.packageName = packageName;
		this.packagePrice = packagePrice;
		this.status = status;
		this.titleImg = titleImg;
	}



	public int getPackageNum() {
		return packageNum;
	}

	public void setPackageNum(int packageNum) {
		this.packageNum = packageNum;
	}

	public int getPackageNum2() {
		return packageNum2;
	}

	public void setPackageNum2(int packageNum2) {
		this.packageNum2 = packageNum2;
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public int getPackagePrice() {
		return packagePrice;
	}

	public void setPackagePrice(int packagePrice) {
		this.packagePrice = packagePrice;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	@Override
	public String toString() {
		return "Packagedo [packageNum=" + packageNum + ", packageNum2=" + packageNum2 + ", packageName=" + packageName
				+ ", packagePrice=" + packagePrice + ", status=" + status + ", titleImg=" + titleImg + "]";
	}

	
	
}
