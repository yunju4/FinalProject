package com.oneteam.wo9wo9.member.model.service;
import java.util.List;

import com.oneteam.wo9wo9.member.model.vo.Member;

public interface MemberService {
	// 이곳에는 메소드의 틀만 정의 (추상메소드)
	
	// public 생력 이유 : 어차피 재정의해서 써야하기 떄문
	
	// 로그인 메소드 틀
	Member login(Member member);
	
	//회원가입 메소드 틀
	int join(Member member);
	
	// 아이디 찾기
	Member findId(Member member);

	// 비밀번호 찾기
	Member findPwd(Member member);

	// 이메일 중복
	int emailCheck(String email);
	
	int idsCheck(String memberId);

	// ------------ 이영훈 ---------------
	
	// 회원전체조회 기능 메소드 틀
	List<Member> memberList();
	
	// 회원제재 기능 메소드 틀1
	int memberCrime(int memberNum);
	
	// 회원제재 기능 메소드 틀2
	int memberCrimeRe(int memberNum);
	
	// ------------ 이영훈 ---------------




}
