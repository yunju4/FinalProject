package com.oneteam.wo9wo9.mypage.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oneteam.wo9wo9.mypage.model.service.MypageService;
import com.oneteam.wo9wo9.mypage.model.vo.Coupon;
import com.oneteam.wo9wo9.member.model.vo.Member;
import com.oneteam.wo9wo9.mypage.model.vo.MypageOrderList;
import com.oneteam.wo9wo9.customercenter.model.vo.Question;
import com.oneteam.wo9wo9.mypage.model.vo.ReviewList;
import com.oneteam.wo9wo9.mypage.model.vo.Withdrawal;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	// 마이페이지 메인 페이지
	@Autowired
	private MypageService mypageService;
	
	@GetMapping("/main.wo")
	public String mypagemainLogin() {
		
		return "mypage/mypageMain";
	}
	
	// 마이페이지 진입 로그인
	@PostMapping("/main.wo")
	public String mypagemainLogin(
			@RequestParam String memberPwd,
			Model model,
			HttpSession session) {
		
		// 키값이 두개이므로 맵으로 가공
		Map<String, String> param = new HashMap<>();
		
		param.put("memberId", ((Member)session.getAttribute("loginUser")).getMemberId());
		param.put("memberPwd", memberPwd);
		
		// 조회될 자료는 하나이므로 객체로 충분
		Member member = mypageService.memberSearchUser(param);
		
		model.addAttribute("member", member);
		
		if(member != null) {
			
			session.setAttribute("alertMsg", "정보 확인이 성공하였습니다.");
			
			// session.setAttribute("loginUser", member); // 예비용 세션 사용자 정보
			
			return "mypage/mypageSuccess";
		} else {
			
			session.setAttribute("alertMsg", "정보 확인이 실패하였습니다.");
			
			return "redirect:main.wo";
		}
	}
	
	// 마이페이지 메인 본인확인 성공시 화면
	@GetMapping("/mypageSuccess.wo")
	public String mypageSuccess(
			Model model,
			HttpSession session) {
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:../main/main.do";
		}
	    else { // 로그인 했으면
		Map<String, String> param = new HashMap<>();
		
		param.put("memberId", ((Member)session.getAttribute("loginUser")).getMemberId());
		param.put("memberPwd", ((Member)session.getAttribute("loginUser")).getMemberPwd());
		
		Member member = mypageService.memberSearchUser(param);
		
		model.addAttribute("member", member);
		
		return "mypage/mypageSuccess";
	}
	}
	
	// 회원정보 수정
	@PostMapping("/infoEdit.wo")
	public String memberInfoEdit(
			@ModelAttribute Member m,
			Model model,
			HttpSession session) {
		
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:../main/main.do";
		}
	    else { // 로그인 했으면
		int result = mypageService.memberInfoEdit(m);
		

		
		if(result > 0) {
			
			Map<String, String> param = new HashMap<>();
			
			param.put("memberId", m.getMemberId());
			param.put("memberPwd", m.getMemberPwd());
			
			Member member = mypageService.memberSearchUser(param);
			
			model.addAttribute("member", member);
			
			session.setAttribute("alertMsg", "회원 정보 수정이 성공하였습니다.");
			
			session.setAttribute("loginUser", member); // 비밀번호 변경했을 때 변경할 세션 정보
			
			return "redirect:mypageSuccess.wo";
			
		} else {
			
			session.setAttribute("alertMsg", "정보 수정이 실패하였습니다.");
			return "redirect:mypageSuccess.wo";
			
		}
	    }
	}
	
	// 주문내역 조회
	@GetMapping("/mypageOrderList.wo")
	public String mypageOrderList(
			HttpSession session,
			Model model) {
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:../main/main.do";
		}
	    else { // 로그인 했으면
		
			String memberId = ((Member)session.getAttribute("loginUser")).getMemberId();
			
			Map<String, String> param = new HashMap<>();
			
			String type = "Y"; // 조회를 위한 type 값
			
			param.put("type", type);
			param.put("memberId", memberId);
			
			List<MypageOrderList> list = mypageService.mypageOrderList(param);
			
			model.addAttribute("list", list);
			
			return "mypage/mypageOrderList";
	}
	}
	// 주문취소
	@GetMapping("/mypageOrderCancel.wo")
	
	public String mypageOrderCancel(
			@RequestParam int orderNum,
			HttpSession session,
			Model model) {
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:../main/main.do";
		}
	    else { // 로그인 했으면
		String memberId = ((Member)session.getAttribute("loginUser")).getMemberId();
		
		Map<String, String> param = new HashMap<>();
		
		String type = "Y"; // 조회를 위한 type 값
		
		param.put("type", type);
		param.put("memberId", memberId);
		
		int result = mypageService.mypageOrderCancel(orderNum);
		
		if(result > 0) {
		
			List<MypageOrderList> list = mypageService.mypageOrderList(param);
			
			model.addAttribute("list", list);
			
			session.setAttribute("alertMsg", "주문 취소가 성공하였습니다.");
			
			return "redirect:mypageOrderList.wo";

		} else {
			
			session.setAttribute("alertMsg", "주문 취소가 실패하였습니다.");
			
			return "redirect:mypageOrderList.wo";
		}
	    }
		
	}
	
	// 주문 취소 조회
	@GetMapping("/mypageCancelList.wo")
	public String mypageCancelList(
			HttpSession session,
			Model model) {
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:../main/main.do";
		}
	    else { // 로그인 했으면
			String memberId = ((Member)session.getAttribute("loginUser")).getMemberId();
			
			Map<String, String> param = new HashMap<>();
			
			String type = "N"; // status를 이용한 조회를 위한 type 값
			
			param.put("type", type);
			param.put("memberId", memberId);
			
			List<MypageOrderList> list = mypageService.mypageOrderList(param);
			
			model.addAttribute("list", list);
			
			return "mypage/mypageOrderCancelList";
	}
	}
	// 쿠폰 조회
	@GetMapping("/mypageCouponList.wo")
	public String mypageCouponList(
			HttpSession session,
			Model model) {
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:../main/main.do";
		}
	    else { // 로그인 했으면
		String memberId = ((Member)session.getAttribute("loginUser")).getMemberId();
		
		// 쿠폰 사용가능 조회
		List<Coupon> list = mypageService.mypageCouponList(memberId);
		
		model.addAttribute("list", list);
		
		// 쿠폰 사용완료 조회
		List<Coupon> list2 = mypageService.mypageCouponUsingList(memberId);
		
		model.addAttribute("list2", list2);
		
		return "mypage/mypageCouponList";
	}
	}
	
	// 문의내역 조회
	@GetMapping("/mypageInquiry.wo")
	public String mypageInquiry(
			HttpSession session,
			Model model) {
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:../main/main.do";
		}
	    else { // 로그인 했으면
		String memberId = ((Member)session.getAttribute("loginUser")).getMemberId();
		
		List<Question> list = mypageService.mypageInquiry(memberId);
		
		model.addAttribute("list", list);
		
		// 응답뷰 지정
		return "mypage/mypageInquiryList";
	}
	}
	
	// 회원 탈퇴 진입 화면
	@GetMapping("/mypageWithdrawal.wo")
	public String mypageWithdrawal(
			HttpSession session) {

		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:../main/main.do";
		}
	    else { // 로그인 했으면
		String memberId = ((Member)session.getAttribute("loginUser")).getMemberId();
		
		session.setAttribute("memberId", memberId);
		
		return "mypage/mypageWithdrawal";
	}
	}
	
	
	@PostMapping("/mypageWithdrawal.wo")
	public String mypageWithdrawal(
			@RequestParam String memberPwd,
			@RequestParam String memberId,
			@RequestParam String dContent,
			HttpSession session,
			Model model) {
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:../main/main.do";
		}
	    else { // 로그인 했으면
		Map<String, String> param = new HashMap<>();
		
		
		
		param.put("memberId", memberId);
		param.put("memberPwd", memberPwd);
		param.put("dContent", dContent);
		
		
		Member member = mypageService.memberSearchUser(param);
		
		
		if(member != null) {
			
			// 탈퇴 사유 메소드
			int result1 = mypageService.insertWithdrawal(param);
		
			// 탈퇴 메소드
			int result2 = mypageService.mypageWithdrawal(param);
			
			int result = result1 + result2;
			
			if(result >= 2) {
				
				session.setAttribute("alertMsg", "회원 탈퇴가 되셨습니다. 더 나은 wo9wo9로 찾아뵙겠습니다.");
	
			}
			
		} else {
			
			session.setAttribute("alertMsg", "아이디와 비밀번호가 일치하지 않습니다.");
			
			return "redirect:mypageWithdrawal.wo";
		}
	    }

		return "redirect:main.wo";
	}
	
	@GetMapping("/mypageReviewList.wo")
	public String mypageReviewList(
			HttpSession session,
			Model model) {
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:../main/main.do";
		}
	    else { // 로그인 했으면
		String memberId = ((Member)session.getAttribute("loginUser")).getMemberId();	
		
		List<ReviewList> list = mypageService.mypageReviewList(memberId);
		System.out.println("list : " + list);
		model.addAttribute("list", list);
		
		return "mypage/mypageReviewList";
		
	}
	}
	
}
