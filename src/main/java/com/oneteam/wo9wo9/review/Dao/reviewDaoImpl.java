package com.oneteam.wo9wo9.review.Dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oneteam.wo9wo9.review.vo.Review;

@Repository
public class reviewDaoImpl implements reviewDao{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Review> reviewList() {
		return sqlSession.selectList("review.reviewList");
	}

	@Override
	public int insertList(Map<Object, Object> param) {
		// TODO Auto-generated method stub
		return sqlSession.insert("review.insertList",param);
	}
}
