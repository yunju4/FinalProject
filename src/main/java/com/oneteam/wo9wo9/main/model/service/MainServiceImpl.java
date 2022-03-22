package com.oneteam.wo9wo9.main.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oneteam.wo9wo9.main.model.dao.MainDao;
import com.oneteam.wo9wo9.main.model.vo.Main;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	private MainDao mainDao;
	
	// 베스트 반찬
	@Override
	public List<Main> sideBest() {
		
		return mainDao.sideBest();
	}
	
	// 반찬 검색
	@Override
	public List<Main> sideSearch(String keyword) {
		
		return mainDao.sideSearch(keyword);
	}

	// 베스트 반찬 정보 + 이미지 불러오기
	@Override
	public List<Main> bestSelfImg() {
		
		return mainDao.bestSelfImg();
	}
	
	// 패스트 패키지
	@Override
	public List<Main> bestPackage() {
		
		return mainDao.bestPackage();
	}

	@Override
	public List<Main> bestRice() {
		
		return  mainDao.bestRice();
	}

	@Override
	public List<Main> bestSoup() {
		return mainDao.bestSoup();
	}

	@Override
	public List<Main> mdPick() {
		
		return mainDao.mdPick();
	}

	@Override
	public List<Main> bestC() {
		return mainDao.bestC();
	}

	@Override
	public List<Main> bestF() {
		return mainDao.bestF();
	}

	@Override
	public List<Main> bestG() {
		return mainDao.bestG();
	}

	@Override
	public List<Main> bestP() {
		return mainDao.bestP();
	}
}
