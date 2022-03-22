package com.oneteam.wo9wo9.main.model.dao;

import java.util.List;

import com.oneteam.wo9wo9.main.model.vo.Main;

public interface MainDao {
	List<Main> mdPick();

	List<Main> bestSoup();

	List<Main> sideSearch(String keyword);

	List<Main> sideBest();

	List<Main> bestSelfImg();

	List<Main> bestPackage();

	List<Main> bestRice();
	
	List<Main> bestC();
	List<Main> bestF();
	List<Main> bestG();
	List<Main> bestP();

}
