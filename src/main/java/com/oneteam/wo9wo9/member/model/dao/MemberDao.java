package com.oneteam.wo9wo9.member.model.dao;

import java.util.List;

import com.oneteam.wo9wo9.member.model.vo.Member;

public interface MemberDao {

	//추상메소드 틀 정의
	
	//로그인 기능 메소드 틀
	Member login(Member member);
	
	// 아이디 중복 체크 메소드
	Member idCheck(Member member);
	
	// 회원가입
	int join(Member member);
	
	// 아이디 찾기
	Member findId(Member member);


	// 비밀번호 찾기
	Member findPwd(Member member);
	
	// 이메일 중복 체크
	int emailCheck(String email);
	
	int idsCheck(String memberId);
	
	// ------------ 이영훈 ---------------
	
	// 회원 전체조회기능 메소드 틀
	List<Member> memberList();
	
	// 회원 제재 기능 메소드 틀1
	int memberCrime(int memberNum);
	
	// 회원 제재 기능 메소드 틀2
	int memberCrimeRe(int memberNum);
	
	// ------------ 이영훈 ---------------
		
}
