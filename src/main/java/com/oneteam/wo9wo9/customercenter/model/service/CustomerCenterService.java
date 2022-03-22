package com.oneteam.wo9wo9.customercenter.model.service;



import java.util.List;
import java.util.Map;

import com.oneteam.wo9wo9.customercenter.model.vo.Notice;
import com.oneteam.wo9wo9.customercenter.model.vo.PageInfo;
import com.oneteam.wo9wo9.customercenter.model.vo.Question;

public interface CustomerCenterService {

	

	Notice detail(int noticeNo);

	Notice nextDetail(int noticeNo);

	Notice beforeDetail(int noticeNo);

	int selectAllListCount();

	List<Notice> notice(PageInfo pi);

	List<Notice> search(String keyword, PageInfo pi );

	int selectSearchListCount(String keyword);

	int viewCount(int noticeNo);

	int questionListCount();

	List<Question> questionList(PageInfo pi);

	int selectoneSearchListCount(Map<String, String> param);

	List<Question> onesearch(Map<String, String> param);

	Question onedetail(int noticeNo);

	int write(Question question);

	int insertCoupon(Map<Object, Object> param);

	int CouponList(Map<Object, Object> param);

	int oneviewCount(int noticeNo);




	

	





	



}
