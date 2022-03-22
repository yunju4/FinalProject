package com.oneteam.wo9wo9.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oneteam.wo9wo9.admin.model.vo.PackageProduct;
import com.oneteam.wo9wo9.admin.model.vo.SelfProduct;
import com.oneteam.wo9wo9.inquiry.model.service.InquiryService;
import com.oneteam.wo9wo9.inquiry.model.vo.Inquiry;
import com.oneteam.wo9wo9.member.model.service.MemberService;
import com.oneteam.wo9wo9.member.model.vo.Member;
import com.oneteam.wo9wo9.notice.model.service.NoticeService;
import com.oneteam.wo9wo9.notice.model.vo.NoticeS;
import com.oneteam.wo9wo9.order.model.service.OrderService;
import com.oneteam.wo9wo9.order.model.vo.OrderList;

@Controller
//@RequestMapping("/admin")
public class AdminControllers {
	
	/*
	@GetMapping("/adminmain.do")
	public String main() {
		return "admin/productManager/main";
	}
	
	@GetMapping("/selfList.do")
	public String selfList() {
		return "admin/productManager/selfProduct/selfList";
	}
	
	@GetMapping("/addself.ad")
	public String addself() {
		return "admin/productManager/selfProduct/addSelf";
	}
	
	@GetMapping("/packageList.ad")
	public String packageList() {
		return "admin/productManager/packageProduct/packageList";
	}
	
	@GetMapping("/addPackage.ad")
	public String addPackage() {
		return "admin/productManager/packageProduct/addPackage";
	}
	
	@GetMapping("/updatePackage")
	public String updatePackage() {
		return "admin/productManager/packageProduct/updatePackage";
	}
	
	@GetMapping("/updateSelf")
	public String updateSelf() {
		return "admin/productManager/selfProduct/updateSelf";
	}
	*/
	
	// 이영훈꺼
	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private InquiryService inquiryService;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private MemberService memberService;
	
	// 회원 정보 리스트 화면을 띄워주는 메소드
	@GetMapping("/memberList")
	public String memberList(
			Model model, 
			HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			// 화면을 뿌려주기 전에
			// 조회부터 할거 => DB 에 저장된 회원의 정보를 싹 다 긁어와야함 (SELECT)
			// Spring + MyBatis => 도구를 가져다 쓰겠다고 연동 먼저(==객체 생성, @Autowired)
			// 도구이름 : sqlSession
			
			// 모듈화 전
			// List<Member> list = sqlSession.selectList("member.selectList");
			
			// 모듈화 후
			// Service 단으로 토스
			List<Member> list = memberService.memberList();
			
			// 조회를 다했다면 => 수하물 붙이고 (Model 객체를 이용해서 addAttribute 메소드 이용)
			model.addAttribute("list", list);
			
			// 응답뷰 지정
			return "admin/memberManager/memberList"; // "/WEB-INF/views/admin/memberList.jsp"
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}

	}
	
	// 회원 제재 메소드1
	@GetMapping("/memberCrime")
	public String memberCrime(
		Model model,
		@RequestParam int memberNum,
		HttpSession session
			) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			System.out.println(memberNum);
			int result = memberService.memberCrime(memberNum);
			
			if(result > 0) { // 성공
				
				session.setAttribute("alertMsg", "회원 활성화");
				
				return "redirect:memberList";
			}
			else { // 실패
				
				session.setAttribute("alertMsg", "회원 활성화 실패");
				
				return "redirect:memberList";
			}
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
	
	}
	
	// 회원 제재 메소드2
	@GetMapping("/memberCrimeRe")
	public String memberCrimeRe(
		Model model,
		@RequestParam int memberNum,
		HttpSession session
			) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			System.out.println(memberNum);
			int result = memberService.memberCrimeRe(memberNum);
			
			if(result > 0) { // 성공
				
				session.setAttribute("alertMsg", "회원재제 성공"); 
				
				return "redirect:memberList";
			}
			else { // 실패
				
				session.setAttribute("alertMsg", "회원재제 실패");
				
				return "redirect:memberList";
			}
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
	}
	
	// 문의사항 리스트
	@GetMapping("/inquiryList")
	public String inquiryList(
			Model model,
			HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			// 모듈화 후
			// Service 단으로 토스
			List<Inquiry> list = inquiryService.inquiryList();
			
			// 조회를 다했다면 => 수하물 붙이고 (Model 객체를 이용해서 addAttribute 메소드 이용)
			model.addAttribute("list", list);
			
			System.out.println(list);
			
			return "admin/inquiryManager/inquiryList";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
	}
	
	
	// 문의사항 조회하기
	@GetMapping("/inquiryAnswer")
	public String inquiryAnswer(
			@RequestParam int qNum,
			Model model,
			HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			Inquiry inquiry = inquiryService.inquiryAnswer(qNum);
			System.out.println(inquiry);
			 
			 // 수하물 붙이기
			 model.addAttribute("inquiry", inquiry);
			 
			 // 응답뷰 지정
			return "admin/inquiryManager/inquiryAnswer";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
	}
	
	// 문의사항 답변하기
	@PostMapping("/inquiryWrite")
	public String inquiryWrite(
			@RequestParam String aContent,
			@RequestParam int qNum,
			HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			Inquiry param = new Inquiry();
			param.setAContent(aContent);
			param.setQNum(qNum);
			
			System.out.println(param);
			
			// Service 단으로 토스
			int result = inquiryService.inquiryWrite(param);
			
			// 결과에 따라서 메세지 띄우고 응답뷰를 지정
			if(result > 0) { 
				
				session.setAttribute("alertMsg", "답변이 등록되었습니다.");
				return "redirect:inquiryList"; 
			}
			else { 
				return "redirect:inquiryAnswer";
			}
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}

		
	}
	
	// 공지사항 리스트 보여주기
	@GetMapping("/noticeList")
	public String noticeList(
			Model model,
			HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			// 화면을 뿌려주기 전에
			// 조회부터 할거 => DB 에 저장된 회원의 정보를 싹 다 긁어와야함 (SELECT)
			// Spring + MyBatis => 도구를 가져다 쓰겠다고 연동 먼저(==객체 생성, @Autowired)
			// 도구이름 : sqlSession
			
			// 모듈화 전
			// List<Member> list = sqlSession.selectList("member.selectList");
			
			// 모듈화 후
			// Service 단으로 토스
			List<NoticeS> list = noticeService.noticeList();
			
			// 조회를 다했다면 => 수하물 붙이고 (Model 객체를 이용해서 addAttribute 메소드 이용)
			model.addAttribute("list", list);
			
			System.out.println(list);
			
			return "admin/noticeManager/noticeList";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
		
		
	}
	
	// 공지사항 상세보기
	 @GetMapping("/noticeContent")
	 public String noticeContent(
			 @RequestParam int noticeNo,
			 Model model,
			 HttpSession session) {
		 
		 	Member loginUser = (Member)session.getAttribute("loginUser");
			
			if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
				 NoticeS notice = noticeService.noticeContent(noticeNo);
				 System.out.println(notice);
				 
				 // 수하물 붙이기
				 model.addAttribute("notice", notice);
				 
				 // 응답뷰 지정
				 return "admin/noticeManager/noticeContent";
			} else {
				session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
				return "redirect:/member/login.do";
			}
		 
	 }
	
	// 공지사항 삭제하기
	@GetMapping("/noticeDelete")
	public String noticeDelete(
			Model model,
			@RequestParam int noticeNo,
			HttpSession session) {
		
	 	Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			System.out.println(noticeNo);
			int result = noticeService.noticeDelete(noticeNo);
			
			if(result > 0) { // 성공
				
				session.setAttribute("alertMsg", "공지사항 삭제 성공");
				
				return "redirect:noticeList";
			}
			else { // 실패
				session.setAttribute("alertMsg", "공지사항 삭제 실패");
				return "redirect:noticeList";
			}
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
	}
	
	// 공지사항 등록 폼 보여주기
	@GetMapping("/noticeEnroll")
	public String noticeEnroll(
			Model model,
			HttpSession session) {
		
	 	Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			return "admin/noticeManager/noticeEnroll";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
	
	}
	
	// 공지사항 등록 처리를 위한 메소드
	@PostMapping("/noticeEnroll.wo")
	public String noticeWrite(
			@ModelAttribute NoticeS notice,
			HttpSession session) {
		
	 	Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			// Service 단으로 토스
			int result = noticeService.noticeWrite(notice);
			
			// 결과에 따라서 메세지 띄우고 응답뷰를 지정
			if(result > 0) { 
				
				session.setAttribute("alertMsg", "공지사항이 등록되었습니다.");
				return "redirect:noticeList"; 
			}
			else { 
				return "redirect:noticeEnroll";
			}
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
	}
	
	// 주문관리 조회 리스트
	@GetMapping("/orderList")
	public String orderList(
			Model model,
			HttpSession session) {
		
	 	Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			// 모듈화 후
			// Service 단으로 토스
			List<OrderList> list = orderService.orderList();
			
			System.out.println(list);
			
			// 조회를 다했다면 => 수하물 붙이고 (Model 객체를 이용해서 addAttribute 메소드 이용)
			model.addAttribute("list", list);
			
			return "admin/orderManager/orderList";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
		
	}
	
	
	@GetMapping("/deleteOrder")
    public String deleteOrder(
            @RequestParam int orderNum
          , HttpSession session) {
		
	 	Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			int result = orderService.orderDelete(orderNum);
	        
	        if(result > 0) {
	            session.setAttribute("alertMsg", "주문 취소 완료");
	            return "redirect:/orderList";
	        } else {
	            session.setAttribute("alertMsg", "주문 취소 실패!!!!!!!!!!!!!!");
	            return "redirect:/orderList";
	        }
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}

    }
	
	
	
	
	
	
	
	
	
	
	
	
	/*
	@GetMapping("/faqList")
	public String faqList() {
		return "admin/faqManager/faqList";
	}
	
	@GetMapping("/addFaq")
	public String addFaq() {
		return "admin/faqManager/addFaq";
	}
	
	@GetMapping("/faqUpdate")
	public String faqUpdate() {
		return "admin/faqManager/faqUpdate";
	}
	*/
	
	
	
}
