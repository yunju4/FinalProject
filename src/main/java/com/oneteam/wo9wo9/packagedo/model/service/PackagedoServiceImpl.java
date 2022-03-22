package com.oneteam.wo9wo9.packagedo.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oneteam.wo9wo9.packagedo.model.dao.PackagedoDao;
import com.oneteam.wo9wo9.packagedo.model.vo.Basket;
import com.oneteam.wo9wo9.packagedo.model.vo.Packagedo;

@Service
public class PackagedoServiceImpl implements PackagedoService{
	
	@Autowired
	private PackagedoDao packagedoDao;

	@Override
	public List<Packagedo> packagedoList() {
		// TODO Auto-generated method stub
		
		List<Packagedo> list = packagedoDao.packagedoList();
		return list;
	}


	@Override
	public int putbasket(Basket basket) {
		// TODO Auto-generated method stub
		
		int result = packagedoDao.putbasket(basket);
		return result;
	}


	@Override
	public List<Packagedo> packagedoList2() {
		// TODO Auto-generated method stub
		
		List<Packagedo> list = packagedoDao.packagedoList2();
		return list;
	}


	@Override
	public List<Packagedo> packagedoList3() {
		// TODO Auto-generated method stub
		
		List<Packagedo> list = packagedoDao.packagedoList3();
		return list;
	}


	@Override
	public List<Packagedo> packagedoList4() {
		// TODO Auto-generated method stub
		
		List<Packagedo> list = packagedoDao.packagedoList4();
		return list;
	}


	@Override
	public List<Packagedo> packagedoList5() {
		// TODO Auto-generated method stub
		
		List<Packagedo> list = packagedoDao.packagedoList5();
		return list;
	}


	@Override
	public List<Packagedo> packagedoList6() {
		// TODO Auto-generated method stub
		
		List<Packagedo> list = packagedoDao.packagedoList6();
		return list;
	}


	@Override
	public List<Packagedo> packagedoList7() {
		// TODO Auto-generated method stub
		
		List<Packagedo> list = packagedoDao.packagedoList7();
		return list;
	}


	@Override
	public List<Packagedo> packagedoList8() {
		// TODO Auto-generated method stub
		
		List<Packagedo> list = packagedoDao.packagedoList8();
		return list;
	}

}
