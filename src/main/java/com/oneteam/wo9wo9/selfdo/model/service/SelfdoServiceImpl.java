package com.oneteam.wo9wo9.selfdo.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oneteam.wo9wo9.packagedo.model.vo.Basket;
import com.oneteam.wo9wo9.selfdo.model.dao.SelfdoDao;
import com.oneteam.wo9wo9.selfdo.model.vo.Selfdo;
import com.oneteam.wo9wo9.selfdo.model.vo.Sidedo;

@Service
public class SelfdoServiceImpl implements SelfdoService {
	
	@Autowired
	private SelfdoDao selfdoDao;
	
	@Override
	public List<Sidedo> sidedoList() {
		// TODO Auto-generated method stub
		
		List<Sidedo> list = selfdoDao.sidedoList(); 
		return list;
	}

	@Override
	public List<Sidedo> sidedoList2() {
		// TODO Auto-generated method stub
		
		List<Sidedo> list2 = selfdoDao.sidedoList2();
		return list2;
	}

	@Override
	public List<Sidedo> sidedoList3() {
		// TODO Auto-generated method stub
		
		List<Sidedo> list3 = selfdoDao.sidedoList3();
		return list3;
	}

	@Override
	public int putselfdo(Selfdo selfdo) {
		// TODO Auto-generated method stub
		
		int result = selfdoDao.putselfdo(selfdo);
		return result;
	}

	@Override
	public int putbasket(Basket basket) {
		// TODO Auto-generated method stub
		int result = selfdoDao.putbasket(basket);
		return result;
	}

}
