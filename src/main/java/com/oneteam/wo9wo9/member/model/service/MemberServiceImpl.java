package com.oneteam.wo9wo9.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oneteam.wo9wo9.member.model.dao.MemberDao;
import com.oneteam.wo9wo9.member.model.vo.Member;

@Service // 서비스단
public class MemberServiceImpl implements MemberService {

	// 인터페이스의 추상메소드를 오버라이딩해서 쓸 것
	// 여기 내용물만 변경
	
	@Autowired
	private MemberDao memberDao;

	// 로그인 처리해주는 메소드
	@Override
	public Member login(Member member) {

		Member loginUser = memberDao.login(member);
		
		return loginUser;
	}
	
	// 아이디 찾기
	@Override
	public Member findId(Member member) {
		return memberDao.findId(member);
	}
	
	// 비밀번호 찾기
	@Override
	public Member findPwd(Member member) {
		return memberDao.findPwd(member);
	}
	
	// 회원가입 처리해주는 메소드
	@Override
	public int join(Member member) {

		// 결과값을 담은 변수 초기화
		int result = 0;

		//System.out.println(member);
		
		// 일단 아이디 중복체크 => SELECT 문
		Member findMem = memberDao.idCheck(member);

		// 중복되는 아이디 없으면 가입 진행 => INSERT 문
		if(findMem == null) { // 중복 아이디가 없다면 => 가입 진행
			result = memberDao.join(member);
		} // 성공하면 result == 1
		
		return result;
	}

	// 이메일 중복 체크
	@Override
	public int emailCheck(String email) {
		
		int result = memberDao.emailCheck(email);

		return result;

	}
	
	@Override
	public int idsCheck(String memberId) {
		int result = memberDao.idsCheck(memberId);
		System.out.println("아이디 : " + memberId);
		return result;
	}

	
	// ------------ 이영훈 ---------------
		@Override
		public List<Member> memberList() {
			
			List<Member> list = memberDao.memberList();
			
			return list;
		}

		@Override
		public int memberCrime(int memberNum) {
			
			int result = memberDao.memberCrime(memberNum);
			
			return result;
		}

		@Override
		public int memberCrimeRe(int memberNum) {
			
			int result = memberDao.memberCrimeRe(memberNum);
			
			return result;
		}
		
		// ------------ 이영훈 ---------------



	

}
