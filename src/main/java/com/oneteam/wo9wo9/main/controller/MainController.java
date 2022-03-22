package com.oneteam.wo9wo9.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oneteam.wo9wo9.main.model.service.MainService;
import com.oneteam.wo9wo9.main.model.vo.Main;

@Controller
@RequestMapping("main")
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	// 메인화면 띄움 + 베스트 반찬 추천
	@GetMapping("/main.do")
	public String main(
			Model model) {
		
		//List<Main> list =  mainService.sideBest();
		
		//model.addAttribute("list", list);
		
		//System.out.println(list);
		
		// 반찬 베스트 3
		List<Main> bestSelfImg = mainService.bestSelfImg();
		
		model.addAttribute("bestSelfImg", bestSelfImg);
		
		// 패키지 베스트
		List<Main> bestPackage = mainService.bestPackage();
		
		model.addAttribute("bestPackage", bestPackage);
		
		//System.out.println("bestPackage" + bestPackage);
		
		// 밥 베스트 1
		List<Main> bestRice = mainService.bestRice();
		
		model.addAttribute("bestRice", bestRice);
		
		//System.out.println("bestRice" + bestRice);
		
		// 국 베스트
		List<Main> bestSoup = mainService.bestSoup();
		
		model.addAttribute("bestSoup", bestSoup);
		
		//MD 추천
		List<Main> mdPick = mainService.mdPick();
		
		model.addAttribute("mdPick", mdPick);
		
		
		
		
		
		return "common/main";
	}
	
	// 반찬 검색
	@GetMapping("/sideSearch.mi")
	public String sideSearch(
			@RequestParam String keyword,
			Model model) {
		
		//System.out.println(keyword);
		
        List<Main> list = mainService.sideSearch(keyword);
        
        //System.out.println(list);
        
        model.addAttribute("list", list);
        model.addAttribute("keyword",keyword);
        
        
		
		return "common/sideSearch";
	}
	
	// 헤더 베스트 상품
	@GetMapping("/bestProduct.mi")
	public String bestProduct(
			Model model) {
		// 반찬 베스트 3
		List<Main> bestside = mainService.bestSelfImg();
		System.out.println("이걸 확인해 : " + bestside);
		model.addAttribute("bestside", bestside);
		
		// 패키지 베스트
		List<Main> bestPackage = mainService.bestPackage();
		
		model.addAttribute("bestPackage", bestPackage);
		
		//System.out.println("bestPackage" + bestPackage);
		
		// 밥 베스트 1
		List<Main> bestRice = mainService.bestRice();
		
		model.addAttribute("bestRice", bestRice);
		
		//System.out.println("bestRice" + bestRice);
		
		// 국 베스트
		List<Main> bestSoup = mainService.bestSoup();
		
		model.addAttribute("bestSoup", bestSoup);
		
		return"common/bestProduct";
	}
	
	@GetMapping("/bestProductP.mi")
	public String bestProductP(
			Model model) {
		
		// 패키지 베스트
		List<Main> bestPackage = mainService.bestPackage();
		
		model.addAttribute("bestPackage", bestPackage);
		
		
		List<Main> bestC = mainService.bestC();
		model.addAttribute("bestC", bestC);
		
		List<Main> bestF = mainService.bestF();
		model.addAttribute("bestF", bestF);
		
		List<Main> bestG = mainService.bestG();
		System.out.println("뱃지: " + bestG);
		model.addAttribute("bestG", bestG);
		
		List<Main> bestP = mainService.bestP();
		model.addAttribute("bestP", bestP);
		
		
		
		return"common/bestProductP";
		
	}
	
}
