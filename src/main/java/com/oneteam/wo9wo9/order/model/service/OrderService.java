package com.oneteam.wo9wo9.order.model.service;

import java.util.List;

import com.oneteam.wo9wo9.order.model.vo.Order;
import com.oneteam.wo9wo9.order.model.vo.OrderList;

public interface OrderService {
	
	// 주문관리조회 기능 메소드 틀
	List<OrderList> orderList();

	// 주문 취소 메소드
	int orderDelete(int orderNum);
	
}
