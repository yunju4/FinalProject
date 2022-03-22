package com.oneteam.wo9wo9.customercenter.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.oneteam.wo9wo9.customercenter.model.service.CustomerCenterService;

@RestController

@RequestMapping("/customercenterrest")
public class CustomerCenterRestController {
	
	@Autowired
	private CustomerCenterService customerCenterService; 
	
	
	@PostMapping("/disable.do")
	public int couponCheck(
						@RequestParam String couponName,
						@RequestParam int memberNum,
						Model model,
						HttpSession session) {
		System.out.println("쿠폰 번호: " + couponName);

		if(session.getAttribute("loginUser") == null) {  // 로그인 안했으면
			
			int a = -1;
			return a;
			
		}
		else {
			String str = couponName;
			String intStr = str.replaceAll("[^0-9]", "");
			int discount = Integer.parseInt(intStr);
			Map<Object,Object> param = new HashMap<>(); // 다형성
			
			param.put("memberNum",memberNum);
			param.put("couponName",couponName);
			param.put("discount",discount);
			int disableCount = customerCenterService.CouponList(param); 
			
			if(disableCount == 0) {
				
				int result = customerCenterService.insertCoupon(param);
				
				if(result>0) {
					model.addAttribute("disableCount",disableCount);
					return disableCount;
				}
				else {
					return disableCount;
				}
				
			}
			else {
				model.addAttribute("disableCount",disableCount);
				model.addAttribute("couponName",couponName);
				
				System.out.println("이미 받았는가? : " + disableCount);
				System.out.println("이미 받은 쿠폰의 이름? : " + couponName);
				System.out.println("이미 쿠폰을 다운 받았습니다.");
				
				return disableCount;
			}
		}
		
	}
	
}
