package com.oneteam.wo9wo9.mypage.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oneteam.wo9wo9.mypage.model.dao.MypageDao;
import com.oneteam.wo9wo9.mypage.model.vo.Coupon;
import com.oneteam.wo9wo9.member.model.vo.Member;
import com.oneteam.wo9wo9.mypage.model.vo.MypageOrderList;
import com.oneteam.wo9wo9.customercenter.model.vo.Question;
import com.oneteam.wo9wo9.mypage.model.vo.ReviewList;

@Service
public class MypageServiceImpl implements MypageService{

	@Autowired
	private MypageDao mypageDao;
	
	// 마이페이지 진입 로그인 유저 확인
	@Override
	public Member memberSearchUser(Map<String, String> param) {
		
		Member member = mypageDao.memberSearchUser(param);
		
		return member;
	}

	// 마이페이지 회원정보 수정
	@Override
	public int memberInfoEdit(Member member) {
		
		return mypageDao.memberInfoEdit(member);
	}

	// 마이페이지 문의 내역 조회
	@Override
	public List<Question> mypageInquiry(String memberId) {
		
		return mypageDao.mypageInquiry(memberId);
	}

	// 마이페이지 주문 내역 조회
	@Override
	public List<MypageOrderList> mypageOrderList(Map<String, String> param) {
		
		return mypageDao.mypageOrderList(param);
	}

	// 마이페이지 주문 취소 내역 조회
	@Override
	public int mypageOrderCancel(int orderNum) {
		
		return mypageDao.mypageOrderCancel(orderNum);
	}

	// 마이페이지 쿠폰 내역 조회
	@Override
	public List<Coupon> mypageCouponList(String memberId) {
		
		return mypageDao.mypageCouponList(memberId);
	}

	// 마이페이지 쿠폰 사용 내역 조회
	@Override
	public List<Coupon> mypageCouponUsingList(String memberId) {
		
		return mypageDao.mypageCouponUsingList(memberId);
	}

	// 탈퇴 사유
	@Override
	public int insertWithdrawal(Map<String, String> param) {
		
		return mypageDao.insertWithdrawal(param);
	}
	
	// 회원 탈퇴
	@Override
	public int mypageWithdrawal(Map<String, String> param) {
		
		return mypageDao.mypageWithdrawal(param);
	}

	// 리뷰 조회
	@Override
	public List<ReviewList> mypageReviewList(String memberId) {
		
		return mypageDao.mypageReviewList(memberId);
	}
	
}
