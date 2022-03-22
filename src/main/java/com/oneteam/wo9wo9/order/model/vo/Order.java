package com.oneteam.wo9wo9.order.model.vo;

import com.oneteam.wo9wo9.order.model.vo.Order;

import lombok.Data;

@Data
public class Order {

	private int orderNum;	//		ORDER_NUM	NUMBER		NOT NULL, 주문번호
	private int basketNum;	//		BASKET_NUM	NUMBER		NOT NULL, 장바구니번호
	private int parcel; //			배송상태
	private String orderDate;	//	주문날짜	ORDER_DATE	DATE	DEFAULT SYSDATE	NOT NULL
	private String status;	//		N/Y VARCHAR2(1) 취소상태
	

}
