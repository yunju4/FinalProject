package com.oneteam.wo9wo9.customercenter.model.service;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oneteam.wo9wo9.customercenter.model.dao.CustomerCenterDao;
import com.oneteam.wo9wo9.customercenter.model.vo.Notice;
import com.oneteam.wo9wo9.customercenter.model.vo.PageInfo;
import com.oneteam.wo9wo9.customercenter.model.vo.Question;

@Service
public class CustomerCenterServiceImpl implements CustomerCenterService {
	@Autowired
	private CustomerCenterDao customerCenterDao;

	

	@Override
	public Notice detail(int noticeNo) {
		// TODO Auto-generated method stub
		return customerCenterDao.detail(noticeNo);
	}

	@Override
	public Notice nextDetail(int noticeNo) {
		// TODO Auto-generated method stub
		return customerCenterDao.nextDetail(noticeNo);
	}

	@Override
	public Notice beforeDetail(int noticeNo) {
		// TODO Auto-generated method stub
		return customerCenterDao.beforeDetail(noticeNo);
	}

	@Override
	public int selectAllListCount() {
		// TODO Auto-generated method stub
		return customerCenterDao.selectAllListCount();
	}

	@Override
	public List<Notice> notice(PageInfo pi) {
		// TODO Auto-generated method stub
		return customerCenterDao.notice(pi);
	}

	@Override
	public List<Notice> search(String keyword, PageInfo pi) {
		// TODO Auto-generated method stub
		return customerCenterDao.search(keyword,pi);
	}

	@Override
	public int selectSearchListCount(String keyword) {
		// TODO Auto-generated method stub
		return customerCenterDao.selectSearchListCount(keyword);
	}

	@Override
	public int viewCount(int noticeNo) {
		// TODO Auto-generated method stub
		return customerCenterDao.viewCount(noticeNo);
	}

	@Override
	public int questionListCount() {
		// TODO Auto-generated method stub
		return customerCenterDao.questionListCount();
	}

	@Override
	public List<Question> questionList(PageInfo pi) {
		// TODO Auto-generated method stub
		return customerCenterDao.questionList(pi);
	}

	@Override
	public int selectoneSearchListCount(Map<String, String> param) {
		// TODO Auto-generated method stub
		return customerCenterDao.selectoneSearchListCount(param);
	}

	@Override
	public List<Question> onesearch(Map<String, String> param) {
		// TODO Auto-generated method stub
		return customerCenterDao.onesearch(param);
	}

	@Override
	public Question onedetail(int noticeNo) {
		// TODO Auto-generated method stub
		return customerCenterDao.onedetail(noticeNo);
	}

	@Override
	public int write(Question question) {
		// TODO Auto-generated method stub
		return customerCenterDao.write(question);
	}

	@Override
	public int insertCoupon(Map<Object, Object> param) {
		// TODO Auto-generated method stub
		return customerCenterDao.insertCoupon(param);
	}

	@Override
	public int CouponList(Map<Object, Object> param) {
		// TODO Auto-generated method stub
		return customerCenterDao.CouponList(param);
	}

	@Override
	public int oneviewCount(int noticeNo) {
		// TODO Auto-generated method stub
		return customerCenterDao.oneviewCount(noticeNo);
	}

	

	

	


	
	
}
