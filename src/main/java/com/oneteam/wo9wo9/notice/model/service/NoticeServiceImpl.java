package com.oneteam.wo9wo9.notice.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oneteam.wo9wo9.notice.model.dao.NoticeDao;
import com.oneteam.wo9wo9.notice.model.vo.NoticeS;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeDao noticeDao;

	// 공지사항 등록
	@Override
	public int noticeWrite(NoticeS notice) {
		
		return noticeDao.noticeWrite(notice);
	}
	
	// 공지사항리스트 기능 메소드 틀
	@Override
	public List<NoticeS> noticeList() {
		
		List<NoticeS> list = noticeDao.noticeList();
		
		return list;
	}
	
	// 공지사항삭제 기능 메소드 틀
	@Override
	public int noticeDelete(int noticeNo) {
		
		int result = noticeDao.noticeDelete(noticeNo);
		
		return result;
	}
	
	// 공지사항 상세조회 기능 메소드 틀
	@Override
	public NoticeS noticeContent(int noticeNo) {
		
		NoticeS notice = noticeDao.noticeContent(noticeNo);
		
		return notice;
	}
	
	
}
