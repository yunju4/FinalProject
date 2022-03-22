package com.oneteam.wo9wo9.basket.model.service;

import java.util.List;
import java.util.Map;

import com.oneteam.wo9wo9.basket.model.vo.PackageVo;
import com.oneteam.wo9wo9.basket.model.vo.Product;
import com.oneteam.wo9wo9.basket.model.vo.Self;
import com.oneteam.wo9wo9.card.model.vo.Card;
import com.oneteam.wo9wo9.member.model.vo.Member;
import com.oneteam.wo9wo9.mypage.model.vo.Coupon;

public interface BasketService {

	List<Product> selfList(int mNum);
	
	List<Product> packageList(int mNum);

	int deleteBasket(int bNum);

	List<Coupon> couponList(int mNum);

	Member orderMember(int mNum);

	Card cardCheck(String cardCom, String cardPwd, int mNum);

	int countUpdate(int count1, int bNum1);

	int couponUpdate(int cName);

	int basketUpdate(int bNumi);

	int orderInsert(int bNumi);

	Self paySeldoSelect(int bNum2);

	int riceCountUpdate(int rice, int count1);

	int soupCountUpdate(int soup, int count1);

	int side1CountUpdate(int side1, int count1);

	int side2CountUpdate(int side2, int count1);

	int side3CountUpdate(int side3, int count1);

	PackageVo payPakcageSelect(int bNum2);

	int packageCountUpdeate(Map<String, Integer> map);

	

	


	


}
