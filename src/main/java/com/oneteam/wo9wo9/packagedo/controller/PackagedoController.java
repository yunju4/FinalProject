package com.oneteam.wo9wo9.packagedo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oneteam.wo9wo9.packagedo.model.service.PackagedoService;
import com.oneteam.wo9wo9.packagedo.model.vo.Basket;
import com.oneteam.wo9wo9.packagedo.model.vo.Packagedo;
import com.oneteam.wo9wo9.review.vo.Review;
import com.oneteam.wo9wo9.member.model.vo.Member;

@Controller
@RequestMapping("/packagedo")
public class PackagedoController {
    
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private PackagedoService packagedoService;
	
	// 패키지 도시락 카테고리 
	@GetMapping("/category.do")
	public String pdCategory() {
		return "packagedo/packagedoCategory";
	}
	
	// 키토제닉 식단
	@GetMapping("/meal1.do")
	public String Meal1(Model model) {
		
		// 메뉴랑 가격 option 조회
		List<Packagedo> list = packagedoService.packagedoList();
		model.addAttribute("list", list);
		
		// 패키진 메뉴 조회
		List<Packagedo> list2 = packagedoService.packagedoList2();
		model.addAttribute("list2", list2);
		
		
		return "packagedo/packagedoMeal1";
	}
	
	// 키토제닉 식단 장바구니에 넣기
	@PostMapping("/meal1.do")
	public String Meal1(
			@RequestParam int packageNum,
			HttpSession session) {	
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redire	ct:meal1.do";
		}
	    else { // 로그인 했으면
	    	    	
	    	int memberNum = ((Member)session.getAttribute("loginUser")).getMemberNum();
	    	
			Packagedo packagedo = sqlSession.selectOne("packagedo.select", packageNum);

			Basket basket = new Basket();
			basket.setPackageNum(packageNum);
			basket.setMemberNum(memberNum);
			basket.setPrice(packagedo.getPackagePrice());
			
			int result = packagedoService.putbasket(basket);
		
	    	session.setAttribute("alertMsg", "장바구니 담기 완료!");
	    	
	    	return "redirect:../basket/list"; // 장바구니로 가게해야 함.
	    }	
	}
	
	
	// 채식주의 식단
	@GetMapping("/meal2.do")
	public String Meal2(Model model) {
		
		// 메뉴랑 가격 option 조회
		List<Packagedo> list3 = packagedoService.packagedoList3();
		model.addAttribute("list3", list3);
		
		// 패키진 메뉴 조회
		List<Packagedo> list4 = packagedoService.packagedoList4();
		model.addAttribute("list4", list4);
		return "packagedo/packagedoMeal2";
	}
	
	// 채식주의 식단 장바구니에 넣기
	@PostMapping("/meal2.do")
	public String Meal2(
			@RequestParam int packageNum,
			HttpSession session) {
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:meal2.do";
		}
	    else { // 로그인 했으면
	    	    	
	    	int memberNum =((Member)session.getAttribute("loginUser")).getMemberNum();
	    	
			Packagedo packagedo = sqlSession.selectOne("packagedo.select", packageNum);

			Basket basket = new Basket();
			basket.setPackageNum(packageNum);
			basket.setMemberNum(memberNum);
			basket.setPrice(packagedo.getPackagePrice());
			
			int result = packagedoService.putbasket(basket);
		
	    	session.setAttribute("alertMsg", "장바구니 담기 완료!");
	    	
	    	return "redirect:../basket/list"; // 장바구니로 가게해야 함.
	    }	
	}
	
	
	
	// 지중해식 식단
	@GetMapping("/meal3.do")
	public String Meal3(Model model) {
		
		// 메뉴랑 가격 option 조회
		List<Packagedo> list5 = packagedoService.packagedoList5();
		model.addAttribute("list5", list5);
		
		// 패키진 메뉴 조회
		List<Packagedo> list6 = packagedoService.packagedoList6();
		model.addAttribute("list6", list6);
		
		return "packagedo/packagedoMeal3";
	}
	
	// 지중해식  식단 장바구니에 넣기
	@PostMapping("/meal3.do")
	public String Meal3(
			@RequestParam int packageNum,
			HttpSession session) {
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:meal3.do";
		}
	    else { // 로그인 했으면
	    	    	
	    	int memberNum =((Member)session.getAttribute("loginUser")).getMemberNum();
	    	
			Packagedo packagedo = sqlSession.selectOne("packagedo.select", packageNum);

			Basket basket = new Basket();
			basket.setPackageNum(packageNum);
			basket.setMemberNum(memberNum);
			basket.setPrice(packagedo.getPackagePrice());
			
			int result = packagedoService.putbasket(basket);
		
	    	session.setAttribute("alertMsg", "장바구니 담기 완료!");
	    	
	    	return "redirect:../basket/list"; // 장바구니로 가게해야 함.
	    }	
	}
	
	// 단백질 식단
	@GetMapping("/meal4.do")
	public String Meal4(Model model) {
		
		// 메뉴랑 가격 option 조회
		List<Packagedo> list7 = packagedoService.packagedoList7();
		model.addAttribute("list7", list7);
		
		// 패키진 메뉴 조회
		List<Packagedo> list8 = packagedoService.packagedoList8();
		model.addAttribute("list8", list8);
		
		return "packagedo/packagedoMeal4";
	}
	
	// 단백질 식단 장바구니에 넣기
	@PostMapping("/meal4.do")
	public String Meal4(
			@RequestParam int packageNum,
			HttpSession session) {
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:meal4.do";
		}
	    else { // 로그인 했으면
	    	    	
	    	int memberNum =((Member)session.getAttribute("loginUser")).getMemberNum();
	    	
			Packagedo packagedo = sqlSession.selectOne("packagedo.select", packageNum);

			Basket basket = new Basket();
			basket.setPackageNum(packageNum);
			basket.setMemberNum(memberNum);
			basket.setPrice(packagedo.getPackagePrice());
			
			int result = packagedoService.putbasket(basket);
		
	    	session.setAttribute("alertMsg", "장바구니 담기 완료!");
	    	
	    	return "redirect:../basket/list"; // 장바구니로 가게해야 함.
	    }	
	}
}
