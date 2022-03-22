package com.oneteam.wo9wo9.order.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.oneteam.wo9wo9.order.model.dao.OrderDao;
import com.oneteam.wo9wo9.order.model.vo.Order;
import com.oneteam.wo9wo9.order.model.vo.OrderList;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private OrderDao orderDao;
	
	@Override
	public List<OrderList> orderList() {
		
		List<OrderList> list = orderDao.orderList();
		
		return list;
	}

	@Override
	public int orderDelete(int orderNum) {
		return orderDao.orderDelete(orderNum);
	}

}
