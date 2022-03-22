package com.oneteam.wo9wo9.review.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/review")
public class reviewController {
	
	@GetMapping("/reviewList.do")
	public String reviewList() {
		
		return "review/review";
	}
}
