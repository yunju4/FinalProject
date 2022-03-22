package com.oneteam.wo9wo9.customercenter.model.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oneteam.wo9wo9.customercenter.model.vo.Notice;
import com.oneteam.wo9wo9.customercenter.model.vo.PageInfo;
import com.oneteam.wo9wo9.customercenter.model.vo.Question;

@Repository
public class CustomerCenterDaoImpl implements CustomerCenterDao {
	
	@Autowired
	private SqlSession sqlSession;

	

	@Override
	public Notice detail(int noticeNo) {
		return sqlSession.selectOne("notice.detail",noticeNo);
	}

	@Override
	public Notice nextDetail(int noticeNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("notice.nextDetail",noticeNo);
	}

	@Override
	public Notice beforeDetail(int noticeNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("notice.beforeDetail",noticeNo);
	}

	@Override
	public int selectAllListCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("notice.selectAllListCount");
	}

	@Override
	public List<Notice> notice(PageInfo pi) {
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		
        int endRow = startRow + pi.getBoardLimit() - 1;
        
        Map<String, Integer> param = new HashMap<>(); // 다형성
		
		param.put("startRow", startRow);
		param.put("endRow", endRow);
		return sqlSession.selectList("notice.notice",param);
	}

	@Override
	public List<Notice> search(String keyword,PageInfo pi) {
		// TODO Auto-generated method stub
		
		
		return sqlSession.selectList("notice.search",keyword);
	}

	@Override
	public int selectSearchListCount(String keyword) {
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne("notice.selectSearchListCount",keyword);
	}

	@Override
	public int viewCount(int noticeNo) {
		// TODO Auto-generated method stub
		return sqlSession.update("notice.viewCount",noticeNo);
	}

	@Override
	public int questionListCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("question.questionListCount");
	}

	@Override
	public List<Question> questionList(PageInfo pi) {
		// TODO Auto-generated method stub
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		
        int endRow = startRow + pi.getBoardLimit() - 1;
        
        Map<String, Integer> param = new HashMap<>(); // 다형성
		
		param.put("startRow", startRow);
		param.put("endRow", endRow);
		return sqlSession.selectList("question.questionList",param);
	}


	@Override
	public int selectoneSearchListCount(Map<String, String> param) {
		
		return Integer.parseInt(String.valueOf((sqlSession.selectOne("question.selectoneSearchListCount",param).toString())));
	}

	@Override
	public List<Question> onesearch(Map<String, String> param) {
		// TODO Auto-generated method stub
		System.out.println("이게 뭘까???" + param.get("type"));
		System.out.println("이게 뭘까???" + param.get("keyword"));
		return sqlSession.selectList("question.onesearch",param);
	}

	@Override
	public Question onedetail(int noticeNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("question.onedetail", noticeNo);
	}

	@Override
	public int write(Question question) {
		// TODO Auto-generated method stub
		return sqlSession.insert("question.write", question);
	}

	@Override
	public int insertCoupon(Map<Object, Object> param) {
		// TODO Auto-generated method stub
		return sqlSession.insert("question.insertCoupon", param);
	}

	@Override
	public int CouponList(Map<Object, Object> param) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("question.CouponList",param);
	}

	@Override
	public int oneviewCount(int noticeNo) {
		// TODO Auto-generated method stub
		return sqlSession.update("question.oneviewCount",noticeNo);
	}

	


	

	
	

}
