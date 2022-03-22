package com.oneteam.wo9wo9.mypage.model.dao;

import java.util.List;
import java.util.Map;

import com.oneteam.wo9wo9.mypage.model.vo.Coupon;
import com.oneteam.wo9wo9.member.model.vo.Member;
import com.oneteam.wo9wo9.mypage.model.vo.MypageOrderList;
import com.oneteam.wo9wo9.customercenter.model.vo.Question;
import com.oneteam.wo9wo9.mypage.model.vo.ReviewList;

public interface MypageDao {
	
	// 마이페이지 진입 로그인 유저 확인
	Member memberSearchUser(Map<String, String> param);
	
	// 마이페이지 회원정보 수정
	int memberInfoEdit(Member member);
	
	// 마이페이지 문의 내역 조회
	List<Question>mypageInquiry(String memberId);
	
	// 마이페이지 주문 내역 조회
	List<MypageOrderList>mypageOrderList(Map<String, String> param);
	
	// 마이페이지 주문 취소 내역 조회
	int mypageOrderCancel(int orderNum);
	
	// 마이페이지 쿠폰 내역 조회
	List<Coupon>mypageCouponList(String memberId);
	
	// 마이페이지 쿠폰 사용내역 조회
	List<Coupon>mypageCouponUsingList(String memberId);
	
	// 탈퇴사유 저장
	int insertWithdrawal(Map<String, String> param);
	
	// 회원 탈퇴
	int mypageWithdrawal(Map<String, String> param);
	
	// 리뷰 조회
	List<ReviewList>mypageReviewList(String memberId);
	
}
