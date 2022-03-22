package com.oneteam.wo9wo9.selfdo.model.dao;

import java.util.List;

import com.oneteam.wo9wo9.packagedo.model.vo.Basket;
import com.oneteam.wo9wo9.selfdo.model.vo.Selfdo;
import com.oneteam.wo9wo9.selfdo.model.vo.Sidedo;

public interface SelfdoDao {

	List<Sidedo> sidedoList();

	List<Sidedo> sidedoList2();

	List<Sidedo> sidedoList3();

	int putselfdo(Selfdo selfdo);

	int putbasket(Basket basket);

}
