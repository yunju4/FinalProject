package com.oneteam.wo9wo9.review.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oneteam.wo9wo9.review.Dao.reviewDao;
import com.oneteam.wo9wo9.review.vo.Review;

@Service
public class reviewServiceImpl implements reviewService {
	@Autowired
	private reviewDao ReviewDao;
	
	@Override
	public List<Review> reviewList() {
		return ReviewDao.reviewList();
	}

	@Override
	public int insertList(Map<Object, Object> param) {
		// TODO Auto-generated method stub
		return ReviewDao.insertList(param);
	}

}
