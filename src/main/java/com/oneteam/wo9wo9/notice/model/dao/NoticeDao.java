package com.oneteam.wo9wo9.notice.model.dao;

import java.util.List;

import com.oneteam.wo9wo9.notice.model.vo.NoticeS;

public interface NoticeDao {
	
	// 공지사항 등록하기
	int noticeWrite(NoticeS notice);
	
	// 공지사항 리스트기능 메소드 틀
	List<NoticeS> noticeList();
	
	// 공지사항 삭제기능 메소드 틀
	int noticeDelete(int noticeNo);
	
	// 공지사항 상세조회 메소드 틀
	NoticeS noticeContent(int noticeNo);
	
}
