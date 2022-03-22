package com.oneteam.wo9wo9.order.model.vo;

import lombok.Data;

@Data
public class OrderList {

	private int orderListNum;
	private String basketType;
	private String sideName;
	private int price;
	private int count;
	private String orderDate;
	private int orderNum;
	private String memberId;
	private int parcel;
	private String status;
	
	
}
