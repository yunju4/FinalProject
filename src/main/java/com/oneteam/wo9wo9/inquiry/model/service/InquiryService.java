package com.oneteam.wo9wo9.inquiry.model.service;

import java.util.List;

import com.oneteam.wo9wo9.inquiry.model.vo.Inquiry;
import com.oneteam.wo9wo9.notice.model.vo.NoticeS;

public interface InquiryService {

	// 문의사항 리스트 기능 메소드 틀
	List<Inquiry> inquiryList();
	
	// 문의사항 조회
	Inquiry inquiryAnswer(int qNum);
	
	// 문의사항 답변하기
	int inquiryWrite(Inquiry param);
	
}
