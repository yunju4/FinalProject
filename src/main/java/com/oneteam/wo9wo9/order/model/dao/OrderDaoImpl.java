package com.oneteam.wo9wo9.order.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oneteam.wo9wo9.order.model.vo.OrderList;

@Repository
public class OrderDaoImpl implements OrderDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<OrderList> orderList() {
		
		return sqlSession.selectList("order.selectList");
	}

	@Override
	public int orderDelete(int orderNum) {
		return sqlSession.update("order.orderDelete", orderNum);
	}

}
