package com.oneteam.wo9wo9.main.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.oneteam.wo9wo9.main.model.vo.Main;

public interface MainService {

	// 반찬 검색
	List<Main> sideSearch(String keyword);

	// 베스트 반찬
	List<Main> sideBest();

	// 베스트 반찬 이미지 까지
	List<Main> bestSelfImg();

	// 패키지 베스트
	List<Main> bestPackage();

	List<Main> bestRice();

	List<Main> bestSoup();

	List<Main> mdPick();

	List<Main> bestC();
	List<Main> bestF();
	List<Main> bestG();
	List<Main> bestP();
	

	
	

}
