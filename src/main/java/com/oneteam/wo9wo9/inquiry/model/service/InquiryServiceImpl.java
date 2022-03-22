package com.oneteam.wo9wo9.inquiry.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oneteam.wo9wo9.inquiry.model.dao.InquiryDao;
import com.oneteam.wo9wo9.inquiry.model.vo.Inquiry;
import com.oneteam.wo9wo9.notice.model.vo.NoticeS;

@Service
public class InquiryServiceImpl implements InquiryService{
	
	@Autowired
	private InquiryDao inquiryDao;
	
	@Override
	public List<Inquiry> inquiryList() {
		
		List<Inquiry> list = inquiryDao.inquiryList();
		
		return list;
	}
	
	// 문의사항 조회 기능 메소드 틀
	@Override
	public Inquiry inquiryAnswer(int qNum) {
		
		Inquiry inquiry = inquiryDao.inquiryAnswer(qNum);
		
		return inquiry;
	}
	
	// 문의사항 등록
	@Override
	public int inquiryWrite(Inquiry param) {
		
		return inquiryDao.inquiryWrite(param);
	}
	
}
