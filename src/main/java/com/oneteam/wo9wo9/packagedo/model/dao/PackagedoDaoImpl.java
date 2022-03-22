package com.oneteam.wo9wo9.packagedo.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oneteam.wo9wo9.packagedo.model.vo.Basket;
import com.oneteam.wo9wo9.packagedo.model.vo.Packagedo;

@Repository
public class PackagedoDaoImpl implements PackagedoDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Packagedo> packagedoList() {
		// TODO Auto-generated method stub
		
		return sqlSession.selectList("packagedo.packagedoList1");
		
	}

	@Override
	public int putbasket(Basket basket) {
		// TODO Auto-generated method stub
		return sqlSession.insert("packagedo.insert", basket);
	}

	@Override
	public List<Packagedo> packagedoList2() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("packagedo.packagedoList2");
	}

	@Override
	public List<Packagedo> packagedoList3() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("packagedo.packagedoList3");
	}

	@Override
	public List<Packagedo> packagedoList4() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("packagedo.packagedoList4");
	}

	@Override
	public List<Packagedo> packagedoList5() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("packagedo.packagedoList5");
	}

	@Override
	public List<Packagedo> packagedoList6() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("packagedo.packagedoList6");
	}

	@Override
	public List<Packagedo> packagedoList7() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("packagedo.packagedoList7");
	}

	@Override
	public List<Packagedo> packagedoList8() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("packagedo.packagedoList8");
	}
	
	
}
