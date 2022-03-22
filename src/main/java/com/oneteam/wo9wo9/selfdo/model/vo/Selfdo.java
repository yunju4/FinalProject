package com.oneteam.wo9wo9.selfdo.model.vo;

public class Selfdo {
	
	private int dNum;
	private int memberNum;
	private int rice;
	private int soup;
	private int side1;
	private int side2;
	private int side3;
	private int price;
	private String status;
	
	public Selfdo() {
		super();
	}

	public Selfdo(int dNum, int memberNum, int rice, int soup, int side1, int side2, int side3, int price,
			String status) {
		super();
		this.dNum = dNum;
		this.memberNum = memberNum;
		this.rice = rice;
		this.soup = soup;
		this.side1 = side1;
		this.side2 = side2;
		this.side3 = side3;
		this.price = price;
		this.status = status;
	}

	public int getdNum() {
		return dNum;
	}

	public void setdNum(int dNum) {
		this.dNum = dNum;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public int getRice() {
		return rice;
	}

	public void setRice(int rice) {
		this.rice = rice;
	}

	public int getSoup() {
		return soup;
	}

	public void setSoup(int soup) {
		this.soup = soup;
	}

	public int getSide1() {
		return side1;
	}

	public void setSide1(int side1) {
		this.side1 = side1;
	}

	public int getSide2() {
		return side2;
	}

	public void setSide2(int side2) {
		this.side2 = side2;
	}

	public int getSide3() {
		return side3;
	}

	public void setSide3(int side3) {
		this.side3 = side3;
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
		return "Selfdo [dNum=" + dNum + ", memberNum=" + memberNum + ", rice=" + rice + ", soup=" + soup + ", side1="
				+ side1 + ", side2=" + side2 + ", side3=" + side3 + ", price=" + price + ", status=" + status + "]";
	}
}
