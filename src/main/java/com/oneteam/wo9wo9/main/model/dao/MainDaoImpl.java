package com.oneteam.wo9wo9.main.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oneteam.wo9wo9.main.model.vo.Main;

@Repository  
public class MainDaoImpl implements MainDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	// 베스트 반찬
	@Override
	public List<Main> sideBest() {
		return sqlSession.selectList("main.sideBest");
	}

	// 검색
	@Override
	public List<Main> sideSearch(String keyword) {
		
		
		return sqlSession.selectList("main.sideSearch",keyword);
	}
	
	// 반찬 이미지
	@Override
	public List<Main> bestSelfImg() {
		
		return sqlSession.selectList("main.bestSelfImg");
	}

	//패키지 베스트
	@Override
	public List<Main> bestPackage() {
		
		return sqlSession.selectList("main.bestPackage");
	}

	@Override
	public List<Main> bestRice() {
		
		return sqlSession.selectList("main.bestRice");
	}

	@Override
	public List<Main> bestSoup() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("main.bestSoup");
	}

	@Override
	public List<Main> mdPick() {
		return sqlSession.selectList("main.mdPick");
	}

	@Override
	public List<Main> bestC() {
		return sqlSession.selectList("main.bestC");
	}

	@Override
	public List<Main> bestF() {
		return sqlSession.selectList("main.bestF");
	}

	@Override
	public List<Main> bestG() {
		return sqlSession.selectList("main.bestG");
	}

	@Override
	public List<Main> bestP() {
		return sqlSession.selectList("main.bestP");
	}
	
	
	
}
