package com.oneteam.wo9wo9.basket.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oneteam.wo9wo9.basket.model.vo.PackageVo;
import com.oneteam.wo9wo9.basket.model.vo.Product;
import com.oneteam.wo9wo9.basket.model.vo.Self;
import com.oneteam.wo9wo9.card.model.vo.Card;
import com.oneteam.wo9wo9.member.model.vo.Member;
import com.oneteam.wo9wo9.mypage.model.vo.Coupon;

@Repository
public class BasketDaoImpl implements BasketDao{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Product> selfList(int mNum) {
		List<Product> list = sqlSession.selectList("basket.selfList", mNum);
		return list; 
	}
	
	@Override
	public List<Product> packageList(int mNum) {
		List<Product> list = sqlSession.selectList("basket.packageList", mNum);
		return list; 
	}

	@Override
	public int deleteBasket(int bNum) {
		return sqlSession.update("basket.deleteBasket",bNum);
	}

	@Override
	public List<Coupon> couponList(int mNum) {
		List<Coupon> cList = sqlSession.selectList("basket.couponList",mNum);	
		return cList;
	}

	@Override
	public Member orderMember(int mNum) {
		Member m= sqlSession.selectOne("basket.orderMember", mNum);
		return m;
	}

	@Override
	public Card cardCheck(String cardCom, String cardPwd, int mNum) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("cardCom", cardCom);
		map.put("cardPwd", cardPwd);
		map.put("mNum", mNum);
		Card c = sqlSession.selectOne("basket.cardCheck",map);
		return c;
	}

	@Override
	public int countUpdate(int count1, int bNum1) {
		Map<String,Integer> map = new HashMap<>();
		map.put("count", count1);
		map.put("bNum", bNum1);
		
		return sqlSession.update("basket.countUpdate",map);
	}

	@Override
	public int couponUpdate(int cName) {
		return sqlSession.update("basket.couponUpdate",cName);
	}

	@Override
	public int basketUpdate(int bNumi) {
		return sqlSession.update("basket.basketUpdate",bNumi);
	}

	@Override
	public int orderInsert(int bNumi) {
		return sqlSession.update("basket.orderInsert",bNumi);
	}

	@Override
	public Self paySeldoSelect(int bNum2) {
		return sqlSession.selectOne("basket.paySeldoSelect",bNum2);
	}

	@Override
	public int riceCountUpdate(int rice, int count1) {
		Map<String,Integer> map = new HashMap<>();
		map.put("side", rice);
		map.put("count", count1);
		System.out.println("rice: "+map);
		return sqlSession.update("basket.sideCountUpdate",map);
	}

	@Override
	public int soupCountUpdate(int soup, int count1) {
		Map<String,Integer> map = new HashMap<>();
		map.put("side", soup);
		map.put("count", count1);
		return sqlSession.update("basket.sideCountUpdate",map);
	}

	@Override
	public int side1CountUpdate(int side1, int count1) {
		Map<String,Integer> map = new HashMap<>();
		map.put("side", side1);
		map.put("count", count1);
		return sqlSession.update("basket.sideCountUpdate",map);
	}

	@Override
	public int side2CountUpdate(int side2, int count1) {
		Map<String,Integer> map = new HashMap<>();
		map.put("side", side2);
		map.put("count", count1);
		return sqlSession.update("basket.sideCountUpdate",map);
	}

	@Override
	public int side3CountUpdate(int side3, int count1) {
		Map<String,Integer> map = new HashMap<>();
		map.put("side", side3);
		map.put("count", count1);
		return sqlSession.update("basket.sideCountUpdate",map);
	}

	@Override
	public PackageVo payPackageSelect(int bNum2) {
		System.out.println("pado: "+bNum2);
		return sqlSession.selectOne("basket.payPackageSelect", bNum2);
	}

	@Override
	public int packageCountUpdeate(Map<String, Integer> map) {
		System.out.println(map);
		return sqlSession.update("basket.packageCountUpdate",map);
	}

}
