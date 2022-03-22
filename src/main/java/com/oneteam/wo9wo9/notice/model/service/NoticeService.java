package com.oneteam.wo9wo9.notice.model.service;

import java.util.List;

import com.oneteam.wo9wo9.notice.model.vo.NoticeS;

public interface NoticeService {
	
	// 공지사항 등록하기
	int noticeWrite(NoticeS notice);
	
	// 공지사항 리스트 기능 메소드 틀
	List<NoticeS> noticeList();
	
	// 공지사항 삭제하기
	int noticeDelete(int noticeNo);
	
	// 공지사항 상세조회용 메소드들 틀
	// 공지사항 조회
	NoticeS noticeContent(int noticeNo);
	
	
}
