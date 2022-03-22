package com.oneteam.wo9wo9.review.Dao;

import java.util.List;
import java.util.Map;

import com.oneteam.wo9wo9.review.vo.Review;

public interface reviewDao {

	List<Review> reviewList();

	int insertList(Map<Object, Object> param);

}
