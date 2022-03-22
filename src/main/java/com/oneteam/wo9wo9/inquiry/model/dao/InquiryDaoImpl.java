package com.oneteam.wo9wo9.inquiry.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oneteam.wo9wo9.inquiry.model.vo.Inquiry;

@Repository
public class InquiryDaoImpl implements InquiryDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Inquiry> inquiryList() {
		
		return sqlSession.selectList("inquiry.selectList");
		
	}

	@Override
	public Inquiry inquiryAnswer(int qNum) {
		
		return sqlSession.selectOne("inquiry.selectDetailView", qNum);
	}

	@Override
	public int inquiryWrite(Inquiry param) {
		
		return sqlSession.update("inquiry.inquiryWrite", param);
	}

}
