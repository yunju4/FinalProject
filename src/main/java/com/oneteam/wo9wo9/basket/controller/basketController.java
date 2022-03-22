package com.oneteam.wo9wo9.basket.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oneteam.wo9wo9.basket.model.service.BasketService;
import com.oneteam.wo9wo9.basket.model.vo.PackageVo;
import com.oneteam.wo9wo9.basket.model.vo.Product;
import com.oneteam.wo9wo9.basket.model.vo.Self;
import com.oneteam.wo9wo9.card.model.vo.Card;
import com.oneteam.wo9wo9.member.model.vo.Member;
import com.oneteam.wo9wo9.mypage.model.vo.Coupon;

@Controller
@RequestMapping("/basket")
public class basketController {
	@Autowired
	private BasketService basketService;
	@GetMapping("/list")
	public String basketList(Model model,
							HttpServletRequest request,
							HttpSession session) {
		
		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:../main/main.do";
		}
	    else { // 로그인 했으면
	    	int mNum = ((Member)session.getAttribute("loginUser")).getMemberNum();
			
			List<Product> selfList = basketService.selfList(mNum);
			List<Product> packageList = basketService.packageList(mNum);
			//쿠폰조회
			List<Coupon> cList = basketService.couponList(mNum);
			
			int a = 0;
			for(Product b : selfList) {
				a += (b.getPrice() * b.getCount());
				
			}
			
			int d = 0;
			for(Product c : packageList) {
				d += (c.getPrice() * c.getCount());
			}
			
			model.addAttribute("cList",cList);
			request.setAttribute("subSummary", a+d);
			model.addAttribute("selfList",selfList);
			model.addAttribute("packageList",packageList);
				
			return "basket/basketList";
	    }
		
	}
	
	
	//x 누를 시 장바구니에서 삭제 메소드(ajax)
	@GetMapping("/delete/{bNum}")
	public String deleteSelf(@PathVariable int bNum,
							Model model,
							HttpServletRequest session) {
		//@PathVariable
		int result=basketService.deleteBasket(bNum);
		
		if(result>0) {
			session.setAttribute("alertMsg", "장바구니 목록이 삭제되었습니다.");
			return "redirect:/basket/list";
		}
		else {
			session.setAttribute("alertMsg", "장바구니 목록이 삭제되지 않았습니다.");
			return "redirect:/basket/list";
		}
	}
	
	
	//basketList로 값 받아서 checkout로 넘겨주는
	@PostMapping("/toPay")
	public String toPay(@RequestParam(required=false) List<String> productName,
						@RequestParam(required=false) List<Integer> bNum,
						@RequestParam(required=false) String subSummary,
						@RequestParam(required=false) String total,
						@RequestParam(required=false) List<Integer> count,
						@RequestParam(required=false) int couponNo,
						HttpSession session,
						HttpServletRequest request) {
		

		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			session.setAttribute("alertMsg", "로그인을 해주세요.");
			
			return "redirect:../main/main.do";
		}
	    else { // 로그인 했으면
	    	int mNum = ((Member)session.getAttribute("loginUser")).getMemberNum();
		Member m = basketService.orderMember(mNum);
		System.out.println("coupon: "+couponNo);
		request.setAttribute("count", count);
		request.setAttribute("productName", productName);
		request.setAttribute("bNum", bNum);
		request.setAttribute("subSummary", subSummary);
		request.setAttribute("total", total);
		request.setAttribute("couponNo", couponNo);
		request.setAttribute("m", m);
		
		return "basket/checkout";
	    }
		
	}
	
	@ResponseBody
	@PostMapping("/cardCheck")
	public Card cardCheck(@RequestParam String cardCom,
							@RequestParam String cardPwd) {
		int mNum = 2;
		
		Card c = basketService.cardCheck(cardCom, cardPwd, mNum);
		
		return c;
	}
	

	@PostMapping("/checkout")
	public String checkout(@RequestParam List<String> count,
						   @RequestParam int couponNo,
						   @RequestParam List<String> bNum,
						   HttpSession session) {
		
		int result1=0; //장바구니 수량 변경사항 값을 담아주는 값
		int result2=0; //쿠폰 변경사항 값을 담아주는 값
		int result3=0; //장바구니 뺀 값을 담아주는 값
		int result4=0;
		int result5=0 ;
		
		//장바구니 수량 변경
		for(int i=0; i<count.size(); i++) {
			int count1= Integer.parseInt(count.get(i));
			int bNum1= Integer.parseInt(bNum.get(i));
			
			result1= basketService.countUpdate(count1,bNum1);
		}
		
		//쿠폰 사용여부 업데이트
		if(result1>0) {
			if(couponNo>0) {
				result2 = basketService.couponUpdate(couponNo);
			}
			else {
				result2 = 1;
			}
		}
		
		//장바구니 N으로
		if(result2>0) {
			for(int i=0; i<bNum.size(); i++) {
				int bNumi= Integer.parseInt(bNum.get(i));
				result3 = basketService.basketUpdate(bNumi);
			}
		}
		
		//장바구니 오더리스트로
		if(result3>0) {
			for(int i=0; i<bNum.size(); i++) {
				int bNumi=Integer.parseInt(bNum.get(i));
				result4=basketService.orderInsert(bNumi);
				
			}
		}
		
		System.out.println("result4: "+result4);
		//상품 판매량 변경할 셀도 셀렉트
		if(result4>0) {
			Self s = new Self();
			PackageVo p = new PackageVo();
			
			for(int i=0; i<bNum.size(); i++) {
				int bNum2 = Integer.parseInt(bNum.get(i));
				System.out.println(bNum2);
				
				s=basketService.paySeldoSelect(bNum2);
				System.out.println("s: "+s);
				
				if(s!=null) {
					System.out.println("s: "+ s);
					//if 밖에서 먼저 뽑아오면 else()나 if(s==null)이 데드코드 남
					int count1 = s.getCount();
					int rice = s.getRice();
					int soup = s.getSoup();
					int side1 = s.getSide1();
					int side2 = s.getSide2();
					int side3 = s.getSide3();
					
					int rice1 = basketService.riceCountUpdate(rice, count1);
					int suop1 =  basketService.soupCountUpdate(soup, count1);
					int side11 = basketService.side1CountUpdate(side1, count1);
					int side21 = basketService.side2CountUpdate(side2, count1);
					int side31 = basketService.side3CountUpdate(side3, count1);
					result5 = 1;
				}
				else {
					p=basketService.payPakcageSelect(bNum2);
					System.out.println("p: "+ p);
					if(p != null) {
						
						int count2 = p.getCount();
						int package1 = p.getPackageNum();
						
						Map<String,Integer> map = new HashMap<>();
						map.put("count", count2);
						map.put("package1", package1);
						
						int package2 = basketService.packageCountUpdeate(map);
						
						result5=1;
					}
				}
			}	
		}
		
		//오더리스트 추가 후 구매완료 alert
		if(result5>0) {
			session.setAttribute("alertMsg", "결제가 완료되었습니다.");
			return "redirect:../main/main.do";
		}
		else {
			session.setAttribute("alertMsg", "결제 실패했습니다.");
			return "redirect:../main/main.do";
		}
		
		
		
	}	
	
}
