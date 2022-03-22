package com.oneteam.wo9wo9.mypage.model.vo;

import lombok.Data;

@Data
public class MypageOrderList {

	private int oderListNum;
	private int orderNum;
	private String basketType;
	private String sideName;
	private int price;
	private int count;
	private int parcel;
	private String orderDate;
	private String status;
	
}
