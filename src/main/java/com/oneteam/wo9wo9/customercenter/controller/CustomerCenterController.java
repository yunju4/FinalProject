package com.oneteam.wo9wo9.customercenter.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.oneteam.wo9wo9.customercenter.model.service.CustomerCenterService;
import com.oneteam.wo9wo9.customercenter.model.vo.Notice;
import com.oneteam.wo9wo9.customercenter.model.vo.PageInfo;
import com.oneteam.wo9wo9.customercenter.model.vo.Question;

@Controller

@RequestMapping("/customercenter")
public class CustomerCenterController {
	
	@Autowired
	private CustomerCenterService customerCenterService; 
	
	@GetMapping("/maincenter.do")
	public String maincenter() {
		
		return "customercenter/maincenter";
	}
	
	@GetMapping("/write.do")
	public String write() {
		
		return "customercenter/write";
	}
	
	@GetMapping("/detail.do")
	public String detail(
			@RequestParam int noticeNo,
			Model model) {
		
		
		Notice notice = customerCenterService.detail(noticeNo);
		Notice nextNotice = customerCenterService.nextDetail(noticeNo);
		Notice beforeNotice = customerCenterService.beforeDetail(noticeNo);
		int result = customerCenterService.viewCount(noticeNo);
		System.out.println(notice);
		
		
		
		if(result > 0) {
		
			model.addAttribute("notice", notice);
			model.addAttribute("nextNotice", nextNotice);
			model.addAttribute("beforeNotice", beforeNotice);
			
			//응답뷰 지정
			return "customercenter/noticedetail";
		}
		else {
			// 실패 했다면
			return "redirect:notice.do";
		}
		
		
	}
	
	@GetMapping("/notice.do")
	public String notice(
			@RequestParam(defaultValue="1") int currentPage 
			,Model model) {
		int listCount; 
		int pageLimit; 
		int boardLimit; 
		
		int maxPage; 
		int startPage; 
		int endPage; 
		
		listCount = customerCenterService.selectAllListCount();
		System.out.println("리스트 카운트 : " + listCount);
		
		pageLimit = 10;

		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		List<Notice> list = customerCenterService.notice(pi); 
		System.out.println(list);
		System.out.println(pi.getCurrentPage());
		System.out.println(listCount);
		System.out.println(pi.getPageLimit());
		System.out.println(pi.getBoardLimit());
		System.out.println(pi.getMaxPage());
		System.out.println(pi.getStartPage());
		System.out.println(pi.getEndPage());
		
		model.addAttribute("currentPage", pi.getCurrentPage());
		model.addAttribute("listCount", listCount);
		model.addAttribute("pageLimit", pi.getPageLimit());
		model.addAttribute("boardLimit", pi.getBoardLimit());
		model.addAttribute("maxPage", pi.getMaxPage());
		model.addAttribute("startPage", pi.getStartPage());
		model.addAttribute("endPage", pi.getEndPage());
		
		model.addAttribute("list", list);
		
		return "customercenter/notice";
	}
	
	@GetMapping("/faq.do")
	public String faq() {
		return "customercenter/faq";
	}
	
	@GetMapping("/onevsone.do")
	public String onevsone(
			@RequestParam int currentPage,
			Model model) {
		
		int listCount; 
		int pageLimit; 
		int boardLimit; 
		
		int maxPage; 
		int startPage; 
		int endPage;
		
		listCount = customerCenterService.questionListCount();
		System.out.println("리스트 카운트 1:1 문의 : " + listCount);
		
		pageLimit = 10;

		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		
		List<Question> list = customerCenterService.questionList(pi);
		System.out.println(list);
		System.out.println(pi.getCurrentPage());
		System.out.println(listCount);
		System.out.println(pi.getPageLimit());
		System.out.println(pi.getBoardLimit());
		System.out.println(pi.getMaxPage());
		System.out.println(pi.getStartPage());
		System.out.println(pi.getEndPage());
		
		model.addAttribute("currentPage", pi.getCurrentPage());
		model.addAttribute("listCount", listCount);
		model.addAttribute("pageLimit", pi.getPageLimit());
		model.addAttribute("boardLimit", pi.getBoardLimit());
		model.addAttribute("maxPage", pi.getMaxPage());
		model.addAttribute("startPage", pi.getStartPage());
		model.addAttribute("endPage", pi.getEndPage());
		
		
		model.addAttribute("list", list);
		
		return "customercenter/onevsone";
	}
	
	@GetMapping("/onedetail.do")
	public String onedetail(
			@RequestParam int noticeNo,
			Model model) {
		System.out.println("번호: " + noticeNo);
		Question question = customerCenterService.onedetail(noticeNo);
		int count = customerCenterService.oneviewCount(noticeNo);
		
		
		System.out.println("카운트 증가 값 : " + count);
		model.addAttribute("question",question);
		return "customercenter/onevsonedetail";
	}
	
	@GetMapping("/search.do")
	public String search(
			@RequestParam String keyword,
			@RequestParam int currentPage,
			Model model) {
		
		int listCount; 
		int pageLimit; 
		int boardLimit; 
		
		int maxPage; 
		int startPage; 
		int endPage; 
		
		listCount = customerCenterService.selectSearchListCount(keyword);
		System.out.println("리스트 카운트 : " + listCount);
		
		pageLimit = 10;

		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		List<Notice> list = customerCenterService.search(keyword,pi); 
		
		System.out.println(currentPage);
		
		model.addAttribute("currentPage", pi.getCurrentPage());
		model.addAttribute("listCount", listCount);
		model.addAttribute("pageLimit", pi.getPageLimit());
		model.addAttribute("boardLimit", pi.getBoardLimit());
		model.addAttribute("maxPage", pi.getMaxPage());
		model.addAttribute("startPage", pi.getStartPage());
		model.addAttribute("endPage", pi.getEndPage());
		model.addAttribute("currentPage",currentPage);
		model.addAttribute("list",list);
		
		
		return "customercenter/notice";
	}
	@GetMapping("/onesearch.do")
	public String onesearch(
			@RequestParam(required = false) String type,
			@RequestParam(required = false) String keyword,
			@RequestParam int currentPage,
			Model model) {
		
		if(keyword == "") {
			List<Question> list = null;
		}
		else {
			int listCount; 
			int pageLimit; 
			int boardLimit; 
			
			int maxPage; 
			int startPage; 
			int endPage; 
			Map<String, String> param = new HashMap<>();
			
			// type, keyword 를 키-밸류 세트로 put
			param.put("type", type);
			param.put("keyword", keyword);
			listCount = customerCenterService.selectoneSearchListCount(param);
			System.out.println("1:1에서 검색된 리스트 카운트 : " + listCount);
			
			pageLimit = 10;
	
			boardLimit = 10;
			
			maxPage = (int)Math.ceil((double)listCount / boardLimit);
			startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
			endPage = startPage + pageLimit - 1;
			
			if(endPage > maxPage) {
				endPage = maxPage;
			}
			PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
			
			List<Question> list = customerCenterService.onesearch(param); 
			
			System.out.println("검색된 리스트 : " + list);
			System.out.println(currentPage);
			System.out.println(pi.getCurrentPage());
			System.out.println(listCount);
			System.out.println(pi.getPageLimit());
			System.out.println(pi.getBoardLimit());
			System.out.println(pi.getMaxPage());
			System.out.println(pi.getStartPage());
			System.out.println(pi.getEndPage());
			
			model.addAttribute("currentPage", pi.getCurrentPage());
			model.addAttribute("listCount", listCount);
			model.addAttribute("pageLimit", pi.getPageLimit());
			model.addAttribute("boardLimit", pi.getBoardLimit());
			model.addAttribute("maxPage", pi.getMaxPage());
			model.addAttribute("startPage", pi.getStartPage());
			model.addAttribute("endPage", pi.getEndPage());
			model.addAttribute("currentPage",currentPage);
			model.addAttribute("list",list);
			
			
		}
		return "customercenter/onevsone";
	}
	@PostMapping("/enrollQuestion.do")
	public String enrollQuestion(@ModelAttribute Question question) {
		
		System.out.println(question);
		
		int result = customerCenterService.write(question);
		System.out.println("리절트의 결과 : " + result);
		if(result > 0) {
			System.out.println("성공");
			return "redirect:onevsone.do?currentPage=1";
		}
		else {
			System.out.println("실패");
			return "redirect:";
		}
	}
	
//	@PostMapping("/event.do")
//	public String event(
//			@RequestParam String couponName,
//			Model model) {
//		
//		System.out.println("쿠폰 번호: " + couponName);
//		int userNo = 1;
//		String str = couponName;
//		String intStr = str.replaceAll("[^0-9]", "");
//		int discount = Integer.parseInt(intStr);
//		Map<Object,Object> param = new HashMap<>(); // 다형성
//		
//		param.put("userNo",userNo);
//		param.put("couponName",couponName);
//		param.put("discount",discount);
//		int disableCount = customerCenterService.CouponList(param); 
//		
//		if(disableCount == 0) {
//			
//			int result = customerCenterService.insertCoupon(param);
//			
//			if(result>0) {
//				model.addAttribute("disableCount",disableCount);
//				return "redirect:event.do";
//			}
//			else {
//				return "redirect:event.do";
//			}
//			
//		}
//		else {
//			model.addAttribute("disableCount",disableCount);
//			model.addAttribute("couponName",couponName);
//			
//			System.out.println("이미 받았는가? : " + disableCount);
//			System.out.println("이미 받은 쿠폰의 이름? : " + couponName);
//			System.out.println("이미 쿠폰을 다운 받았습니다.");
//			
//			return "redirect:event.do";
//		}
//		
//		
//		
//	}
	@GetMapping("/event.do")
	public String event() {
		
		
		
		return "customercenter/event";
		
	}
	
	
}
