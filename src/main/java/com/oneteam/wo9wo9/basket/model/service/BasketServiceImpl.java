package com.oneteam.wo9wo9.basket.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oneteam.wo9wo9.basket.model.dao.BasketDao;
import com.oneteam.wo9wo9.basket.model.vo.PackageVo;
import com.oneteam.wo9wo9.basket.model.vo.Product;
import com.oneteam.wo9wo9.basket.model.vo.Self;
import com.oneteam.wo9wo9.card.model.vo.Card;
import com.oneteam.wo9wo9.member.model.vo.Member;
import com.oneteam.wo9wo9.mypage.model.vo.Coupon;

@Service
public class BasketServiceImpl implements BasketService{
	@Autowired
	private BasketDao basketDao;

	@Override
	public List<Product> selfList(int mNum) {
		return basketDao.selfList(mNum);
		
	}
	
	@Override
	public List<Product> packageList(int mNum) {
		return basketDao.packageList(mNum);
	}

	@Override
	public int deleteBasket(int bNum) {
		return basketDao.deleteBasket(bNum);
	}

	@Override
	public List<Coupon> couponList(int mNum) {
		return basketDao.couponList(mNum);
	}

	@Override
	public Member orderMember(int mNum) {
		return basketDao.orderMember(mNum);
	}

	@Override
	public Card cardCheck(String cardCom, String cardPwd, int mNum) {
		return basketDao.cardCheck(cardCom, cardPwd, mNum);
	}

	@Override
	public int countUpdate(int count1, int bNum1) {
		return basketDao.countUpdate(count1,bNum1);
	}

	@Override
	public int couponUpdate(int cName) {
		return basketDao.couponUpdate(cName);
	}

	@Override
	public int basketUpdate(int bNumi) {
		return basketDao.basketUpdate(bNumi);
	}

	@Override
	public int orderInsert(int bNumi) {
		return basketDao.orderInsert(bNumi);
	}

	@Override
	public Self paySeldoSelect(int bNum2) {
		return basketDao.paySeldoSelect(bNum2);
	}

	@Override
	public int riceCountUpdate(int rice, int count1) {
		return basketDao.riceCountUpdate(rice, count1);
	}

	@Override
	public int soupCountUpdate(int soup, int count1) {
		return basketDao.soupCountUpdate(soup,count1);
	}

	@Override
	public int side1CountUpdate(int side1, int count1) {
		return basketDao.side1CountUpdate(side1,count1);
	}

	@Override
	public int side2CountUpdate(int side2, int count1) {
		return basketDao.side2CountUpdate(side2, count1);
	}

	@Override
	public int side3CountUpdate(int side3, int count1) {
		return basketDao.side3CountUpdate(side3,count1);
	}

	@Override
	public PackageVo payPakcageSelect(int bNum2) {
		return basketDao.payPackageSelect(bNum2);
	}

	@Override
	public int packageCountUpdeate(Map<String, Integer> map) {
		return basketDao.packageCountUpdeate(map);
	}

	
}
