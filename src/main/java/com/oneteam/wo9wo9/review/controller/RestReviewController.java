package com.oneteam.wo9wo9.review.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.oneteam.wo9wo9.member.model.vo.Member;
import com.oneteam.wo9wo9.review.Service.reviewService;
import com.oneteam.wo9wo9.review.vo.Review;



@RestController
@RequestMapping("/reply")
public class RestReviewController { 
	
	@Autowired
	private reviewService ReviewService;
	
	@Autowired
	private SqlSession sqlSession;
	
	@GetMapping("/list.do")
	public List<Review> reviewList() {
		
		List<Review> list = ReviewService.reviewList();
		System.out.println("list는? " + list);
		return list;
		
	}
	
	
	@PostMapping("/insert.do")
	public int insertList(@RequestParam String content,
			  @RequestParam String memberName,
			  @RequestParam int point,
			  HttpSession session) {
		
		int memberNum = ((Member)session.getAttribute("loginUser")).getMemberNum();
		
		Map<Object,Object> param = new HashMap<>();
		param.put("memberName", memberName);
		param.put("content", content);
		param.put("point", point);
		System.out.println("이름: " + memberName);
		int result = ReviewService.insertList(param);
		
		List<Review> list = sqlSession.selectList("review.reviewtest", memberNum);
		
		System.out.println("dldldl" + list);
		
		if(list.isEmpty())  {
			
			session.setAttribute("alertMsg", "주문한 고객님만 작성이 가능합니다.");
			
			int empty = 0;
			
			return empty;
			
		}
		else {
			
			
			System.out.println("아이작스 리절트 : " + result);
			
			return result;
		
		}
	}
		
	
}
