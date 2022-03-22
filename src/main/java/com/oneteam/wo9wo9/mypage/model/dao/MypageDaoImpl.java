package com.oneteam.wo9wo9.mypage.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oneteam.wo9wo9.mypage.model.vo.Coupon;
import com.oneteam.wo9wo9.member.model.vo.Member;
import com.oneteam.wo9wo9.mypage.model.vo.MypageOrderList;
import com.oneteam.wo9wo9.customercenter.model.vo.Question;
import com.oneteam.wo9wo9.mypage.model.vo.ReviewList;

@Repository
public class MypageDaoImpl implements MypageDao{

	@Autowired
	private SqlSession sqlSession;
	
	// 마이페이지 진입 로그인 유저 확인
	@Override
	public Member memberSearchUser(Map<String, String> param) {
		
		return sqlSession.selectOne("mypage.memberSearchUser", param);
	}

	// 마이페이지 회원정보 수정
	@Override
	public int memberInfoEdit(Member member) {
		
		return sqlSession.update("mypage.memberInfoEdit", member);
	}

	// 마이페이지 문의 내역 조회
	@Override
	public List<Question> mypageInquiry(String memberId) {
		
		return sqlSession.selectList("mypage.mypageInquiry", memberId);
	}

	// 마이페이지 주문 내역 조회
	@Override
	public List<MypageOrderList> mypageOrderList(Map<String, String> param) {
		
		return sqlSession.selectList("mypage.mypageOrderList", param);
	}
	
	// 마이페이지 주문 취소 내역 조회
	@Override
	public int mypageOrderCancel(int orderNum) {

		return sqlSession.update("mypage.mypageOrderCancel", orderNum);
	}

	// 마이페이지 쿠폰 내역 조회
	@Override
	public List<Coupon> mypageCouponList(String memberId) {
		
		return sqlSession.selectList("mypage.mypageCouponList", memberId);
	}

	// 마이페이지 쿠폰 사용 내역 조회
	@Override
	public List<Coupon> mypageCouponUsingList(String memberId) {
		
		return sqlSession.selectList("mypage.mypageCouponUsingList", memberId);
	}

	// 탈퇴 사유
	@Override
	public int insertWithdrawal(Map<String, String> param) {
		
		return sqlSession.insert("mypage.insertWithdrawal", param);
	}
	
	// 회원 탈퇴
	@Override
	public int mypageWithdrawal(Map<String, String> param) {
		
		return sqlSession.update("mypage.mypageWithdrawal", param);
	}

	// 리뷰 조회
	@Override
	public List<ReviewList> mypageReviewList(String memberId) {
		
		return sqlSession.selectList("mypage.mypageReviewList", memberId);
	}

}
