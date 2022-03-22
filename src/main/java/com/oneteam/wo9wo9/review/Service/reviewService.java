package com.oneteam.wo9wo9.review.Service;

import java.util.List;
import java.util.Map;

import com.oneteam.wo9wo9.review.vo.Review;

public interface reviewService {

	List<Review> reviewList();

	int insertList(Map<Object, Object> param);

}
