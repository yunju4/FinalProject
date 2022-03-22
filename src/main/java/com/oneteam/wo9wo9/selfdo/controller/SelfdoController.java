package com.oneteam.wo9wo9.selfdo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oneteam.wo9wo9.member.model.vo.Member;
import com.oneteam.wo9wo9.packagedo.model.vo.Basket;
import com.oneteam.wo9wo9.selfdo.model.service.SelfdoService;
import com.oneteam.wo9wo9.selfdo.model.vo.Selfdo;
import com.oneteam.wo9wo9.selfdo.model.vo.Sidedo;

@Controller
@RequestMapping("/selfdo")
public class SelfdoController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private SelfdoService selfdoService;
	
	// 셀프 도시락
	@GetMapping("/meal.do")
	public String meal(Model model) {
		
		// 밥 리스트 뽑기
		List<Sidedo> list = selfdoService.sidedoList();
		model.addAttribute("list", list);
		
		// 국 리스트 뽑기
		List<Sidedo> list2 = selfdoService.sidedoList2();
		model.addAttribute("list2", list2);
		
		// 반찬 리스트 뽑기
		List<Sidedo> list3 = selfdoService.sidedoList3();
		model.addAttribute("list3", list3);
			
		return "selfdo/selfdoMeal";
	}
	
	@PostMapping("/meal.do")
	public String meal(
			@RequestParam int sideNum1,
			@RequestParam int sideNum2,
			@RequestParam int sideNum3,
			@RequestParam int sideNum4,
			@RequestParam int sideNum5,
			Model model,
			HttpSession session) {
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:meal.do";
		}
	    else { // 로그인 했으면
	    	
	    	if((sideNum1 == 0) || (sideNum2 == 0) || (sideNum3 == 0) || (sideNum4 == 0) || (sideNum5 == 0)) {
	    		
				session.setAttribute("alertMsg", "선택이 모두 완료되지 않았습니다.");
				
				return "redirect:meal.do";
	    	}
	    	else {
	    		
				// 밥,국,반찬 가격 뽑아오기
				Sidedo sidedo1 = sqlSession.selectOne("selfdo.selectprice1", sideNum1);
				Sidedo sidedo2 = sqlSession.selectOne("selfdo.selectprice2", sideNum2);
				Sidedo sidedo3 = sqlSession.selectOne("selfdo.selectprice3", sideNum3);
				Sidedo sidedo4 = sqlSession.selectOne("selfdo.selectprice4", sideNum4);
				Sidedo sidedo5 = sqlSession.selectOne("selfdo.selectprice5", sideNum5);		
				int price = sidedo1.getPrice() + sidedo2.getPrice() + sidedo3.getPrice()
				            + sidedo4.getPrice() + sidedo5.getPrice();
				int memberNum =((Member)session.getAttribute("loginUser")).getMemberNum();
				
				// 셀프 테이블에 insert
				Selfdo selfdo = new Selfdo();
				selfdo.setMemberNum(memberNum);
				selfdo.setRice(sideNum1);
				selfdo.setSoup(sideNum2);
				selfdo.setSide1(sideNum3);
				selfdo.setSide2(sideNum4);
				selfdo.setSide3(sideNum5);
				selfdo.setPrice(price);
				int result = selfdoService.putselfdo(selfdo);	
		    	
				// 구성된 도시락 보여주기
				List<Sidedo> list_1 = sqlSession.selectList("selfdo.selectsidedo_com1", sideNum1);
				model.addAttribute("list_1", list_1);
				List<Sidedo> list_2 = sqlSession.selectList("selfdo.selectsidedo_com2", sideNum2);
				model.addAttribute("list_2", list_2);
				List<Sidedo> list_3 = sqlSession.selectList("selfdo.selectsidedo_com3", sideNum3);
				model.addAttribute("list_3", list_3);
				List<Sidedo> list_4 = sqlSession.selectList("selfdo.selectsidedo_com4", sideNum4);
				model.addAttribute("list_4", list_4);
				List<Sidedo> list_5 = sqlSession.selectList("selfdo.selectsidedo_com5", sideNum5);
				model.addAttribute("list_5", list_5);
				
				model.addAttribute("price", price);
				
				// 셀프 도시락 PK 빼오기
				Selfdo selfdo1 = new Selfdo();
				selfdo1.setMemberNum(memberNum);
				selfdo1.setRice(sideNum1);
				selfdo1.setSoup(sideNum2);
				selfdo1.setSide1(sideNum3);
				selfdo1.setSide2(sideNum4);
				selfdo1.setSide3(sideNum5);
				
				Selfdo selfdo2 = sqlSession.selectOne("selfdo.selectdNum", selfdo1);		
				int dNum = selfdo2.getdNum();
				model.addAttribute("dNum", dNum);
						
				session.setAttribute("alertMsg", "셀프 도시락 구성 완료!");
				
				return "selfdo/selfdoMeal";
	    	}
	    	
	    }			

		
	}
	
	@PostMapping("/deletemeal.do")
	public String deletemeal(
			@RequestParam int dNum,
			HttpSession session) {
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:meal.do";
		}
		else { // 로그인 했으면
			
			int memberNum =((Member)session.getAttribute("loginUser")).getMemberNum();
			
			Selfdo selfdo = new Selfdo();
			selfdo.setMemberNum(memberNum);
			selfdo.setdNum(dNum);
			
			int result2 = sqlSession.delete("selfdo.delete", selfdo);
			
			session.setAttribute("alertMsg", "셀프 도시락 초기화 완료!");
			
			return "redirect:meal.do";
		}
	
	}
	
	@PostMapping("/basket.do")
	public String basket(
			@RequestParam(defaultValue="0") int price,
			@RequestParam(defaultValue="0") int dNum,
			HttpSession session){
			
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:meal.do";
		}
		else { // 로그인 했으면
			
			if((dNum == 0) || (price == 0) ) {
				
				session.setAttribute("alertMsg", "도시락을 구성해주세요.");
				
				return "redirect:meal.do";
			}
			
			else {
				
				int memberNum =((Member)session.getAttribute("loginUser")).getMemberNum();
				
				Basket basket = new Basket();
				basket.setdNum(dNum);
				basket.setMemberNum(memberNum);
				basket.setPrice(price);
				
				int result = selfdoService.putbasket(basket);
				
				
				session.setAttribute("alertMsg", "장바구니 담기 완료!");
				
				return "redirect:meal.do"; // 장바구니로 가게해야 함.
			}			
		}
			
	}
	
}
