package com.oneteam.wo9wo9.selfdo.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oneteam.wo9wo9.packagedo.model.vo.Basket;
import com.oneteam.wo9wo9.selfdo.model.vo.Selfdo;
import com.oneteam.wo9wo9.selfdo.model.vo.Sidedo;

@Repository
public class SelfdoDaoImpl implements SelfdoDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Sidedo> sidedoList() {
		// TODO Auto-generated method stub
		
		return sqlSession.selectList("selfdo.selfdoList1");
	}

	@Override
	public List<Sidedo> sidedoList2() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("selfdo.selfdoList2");
	}

	@Override
	public List<Sidedo> sidedoList3() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("selfdo.selfdoList3");
	}

	@Override
	public int putselfdo(Selfdo selfdo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("selfdo.insert", selfdo);
	}

	@Override
	public int putbasket(Basket basket) {
		// TODO Auto-generated method stub
		return sqlSession.insert("selfdo.insertbasket", basket);
	}

}
