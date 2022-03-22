package com.oneteam.wo9wo9.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oneteam.wo9wo9.member.model.vo.Member;

// Repository : 저장소라는 뜻 ,  스프링에서는 주로 db와 관련된 작업을 처리
//				db와 관려된 작업이라고 하면 CRUD를 일컫는다( =="영속성" 작업)
@Repository  // Dao 단임을 명시
public class MemberDaoImpl implements MemberDao {
	
	//실제 메소드를 오버라이딩해서 구현할 것
	
	@Autowired
	private SqlSession sqlSession;
	
	// 로그인 진행 메소드 => SELECT
	@Override
	public Member login(Member member) {

		return sqlSession.selectOne("member.loginMember", member);

	}
	
	// 아이디 찾기
	@Override
	public Member findId(Member member) {

		return sqlSession.selectOne("member.findId", member);
		
	}
	
	// 비밀번호 찾기
	@Override
	public Member findPwd(Member member) {

		return sqlSession.selectOne("member.findPwd", member);
		
	}
	

	// 아이디 중복 체크
	@Override
	public Member idCheck(Member member) {

		Member findMem =  sqlSession.selectOne("member.idCheck", member.getMemberId());
	
		return findMem;
	}
	
	// 회원가입
	@Override
	public int join(Member member) {

		int result = sqlSession.insert("member.join", member);
		
		return result;
	}

	// 이메일 중복 체크
	@Override
	public int emailCheck(String email) {
		
		int result = sqlSession.selectOne("member.emailCheck", email);
		
		return result;
	}
	
	@Override
	public int idsCheck(String memberId) {
		int result = sqlSession.selectOne("member.idsCheck", memberId);
		
		System.out.println("아이디 : " + memberId);
		return result;
	}
	

	// ------------ 이영훈 ---------------
	
		@Override
		public List<Member> memberList() {
			
			return sqlSession.selectList("member.selectList");
			
		}
		
		
		@Override
		public int memberCrime(int memberNum) {
			
			return sqlSession.update("member.memberCrime", memberNum);
		}

		@Override
		public int memberCrimeRe(int memberNum) {
			
			return sqlSession.update("member.memberCrimeRe", memberNum);
		}
		
		// ------------ 이영훈 ---------------

	
}
