package com.oneteam.wo9wo9.packagedo.model.vo;

public class Basket {
	
	private int basketNum;
	private int dNum;
	private int packageNum;
	private int memberNum;
	private int count;
	private int price;
	private String status;
	
	public Basket() {
		super();
	}

	public Basket(int basketNum, int dNum, int packageNum, int memberNum, int count, int price, String status) {
		super();
		this.basketNum = basketNum;
		this.dNum = dNum;
		this.packageNum = packageNum;
		this.memberNum = memberNum;
		this.count = count;
		this.price = price;
		this.status = status;
	}

	public int getBasketNum() {
		return basketNum;
	}

	public void setBasketNum(int basketNum) {
		this.basketNum = basketNum;
	}

	public int getdNum() {
		return dNum;
	}

	public void setdNum(int dNum) {
		this.dNum = dNum;
	}

	public int getPackageNum() {
		return packageNum;
	}

	public void setPackageNum(int packageNum) {
		this.packageNum = packageNum;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
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

	@Override
	public String toString() {
		return "Basket [basketNum=" + basketNum + ", dNum=" + dNum + ", packageNum=" + packageNum + ", memberNum="
				+ memberNum + ", count=" + count + ", price=" + price + ", status=" + status + "]";
	}
	
	
}
