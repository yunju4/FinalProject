package com.oneteam.wo9wo9.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oneteam.wo9wo9.notice.model.vo.NoticeS;

@Repository
public class NoticeDaoImpl implements NoticeDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int noticeWrite(NoticeS notice) {
		
		return sqlSession.insert("notice.noticeWrite", notice);
	}

	@Override
	public List<NoticeS> noticeList() {
		
		return sqlSession.selectList("notice.noticeList");
	}

	@Override
	public int noticeDelete(int noticeNo) {
		
		return sqlSession.delete("notice.noticeDelete", noticeNo);
	}
	
	@Override
	public NoticeS noticeContent(int noticeNo) {
		return sqlSession.selectOne("notice.selectDetailView", noticeNo);
	}

}
