package com.oneteam.wo9wo9.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.oneteam.wo9wo9.admin.model.service.AdminService;
import com.oneteam.wo9wo9.admin.model.vo.PackageAttachment;
import com.oneteam.wo9wo9.admin.model.vo.PackageProduct;
import com.oneteam.wo9wo9.admin.model.vo.SelfAttachment;
import com.oneteam.wo9wo9.admin.model.vo.SelfProduct;
import com.oneteam.wo9wo9.common.MyFileRenamePolicy;
import com.oneteam.wo9wo9.member.model.vo.Member;


@Controller
@RequestMapping("/admin")

public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("/adminmain.do")
	public String main(
			Model model
		  , HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			List<SelfProduct> sList = adminService.selectPList();
			List<PackageProduct> pList = adminService.selectDList();
			
			model.addAttribute("sList", sList);
			model.addAttribute("pList", pList);
			
			return "admin/adminMain";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
	}
	
	@GetMapping("/productmain.do")
	public String productmain(Model model
			, HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			List<SelfProduct> sList = adminService.selectPList();
			List<PackageProduct> pList = adminService.selectDList();
			
			model.addAttribute("sList", sList);
			model.addAttribute("pList", pList);
			
			return "admin/productManager/main";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
	}
	
	@GetMapping("/addselfEnroll.ad")
	public String addselfEnroll(HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			return "admin/productManager/selfProduct/addSelfEnroll";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}

	}
	
	@GetMapping("/addPackageEnroll.ad")
	public String addPackageEnroll(HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			return "admin/productManager/packageProduct/addPackageEnroll";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
	}
	
	@GetMapping("/updatePackageEnroll.ad")
	public String updatePackageEnroll(
			@RequestParam int packageNum
		  , @RequestParam int packageNum2
		  , @RequestParam String packageName
		  , @RequestParam int packagePrice
		  , Model model
		  , HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			PackageProduct packageProduct = new PackageProduct();
			packageProduct.setPackageNum(packageNum);
			packageProduct.setPackageNum2(packageNum2);
			packageProduct.setPackageName(packageName);
			packageProduct.setPackagePrice(packagePrice);
			
			PackageProduct packageProductImg = adminService.selectPackImg(packageNum);
			
			System.out.println("파일 경로 나와라!!!! : " + packageProductImg);
			
			model.addAttribute("packAtt",packageProductImg);
			model.addAttribute("pack", packageProduct);
			
			return "admin/productManager/packageProduct/updatePackageEnroll";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
		
	}
	
	@GetMapping("/updateSelfEnroll.ad")
	public String updateSelfEnroll(@RequestParam int sideNum
			                     , @RequestParam int categoryNum
			                     , @RequestParam String sideName
			                     , @RequestParam int price
			                     , Model model
			                     , HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			SelfProduct selfProduct = new SelfProduct();
			selfProduct.setSideNum(sideNum);
			selfProduct.setCategoryNum(categoryNum);
			selfProduct.setSideName(sideName);
			selfProduct.setPrice(price);
			
			SelfProduct selfProductImg =  adminService.selectOriginImg(sideNum);
			
			System.out.println("나ㅣ와라ㅏㅏ : " + selfProductImg);
			
			model.addAttribute("selfAtt", selfProductImg);
			model.addAttribute("self", selfProduct);
			
			return "admin/productManager/selfProduct/updateSelfEnroll";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
	}
	
//	// 셀프 메뉴 이미지 가져오기
//	public String selectOriginImg(
//			@RequestParam int sideNum
//		  , HttpSession session
//		  , Model model) {
//		
//		List<SelfAttachment> list = adminService.selectOriginImg(sideNum);
//		
//		model.addAttribute("list", list);
//		
//		return "redirect:/admin/updateSelfEnroll.ad";
//		
//	}
	
// ----- 셀프 도시락-----
// 셀프 메뉴 조회 메소드
	@GetMapping("/selfList.do")
	public String selfProductList(Model model, HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			List<SelfProduct> list = adminService.selectPList();
			
			model.addAttribute("list", list);
			
			System.out.println(list);
			
			return "admin/productManager/selfProduct/selfList";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
	}


	// 셀프 상품 활성화
	@GetMapping("/activation.ad")
	public String activation(
			@RequestParam int sideNum
		  , HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			int result = adminService.activation(sideNum);
			
			if(result > 0) {
				session.setAttribute("alertMsg", "활성화 되었습니다.");
			} else {
				session.setAttribute("alertMsg", "오류~~~~~~");
			}
			
			return "redirect:/admin/selfList.do";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
		
	}
	// 셀프 상품 비활성화
	@GetMapping("/unactivation.ad")
	public String unactivation(
			@RequestParam int sideNum
		  , HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			int result = adminService.unactivation(sideNum);
			
			if(result > 0) {
				session.setAttribute("alertMsg", "비활성화 되었습니다.");
			} else {
				session.setAttribute("alertMsg", "오류!!!!!");
			}
			
			return "redirect:/admin/selfList.do";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
		

	}

	
// 셀프 메뉴 추가 메소드	
//	@ModelAttribute UploadVO uploadVO,
	@PostMapping("/addSelf.ad")
	public String addSelf(
			@RequestParam int categoryNum,
			@RequestParam String sideName,
			@RequestParam int price,
			@RequestParam MultipartFile upfile,
			HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			SelfProduct selfProduct = new SelfProduct();
			selfProduct.setCategoryNum(categoryNum);
			selfProduct.setSideName(sideName);
			selfProduct.setPrice(price);
			
			// SIDE 테이블에 들어갔는지 확인하는 result1
			int result1 = adminService.insertSelf(selfProduct);

			if(result1 > 0) {
				String filePath = session.getServletContext().getRealPath("/resources/selfUpfiles/");
				String changeName = new MyFileRenamePolicy().rename(upfile.getOriginalFilename());
				String originName = upfile.getOriginalFilename();
					
				// 우선 File 객체를 만들고
				File target = new File(filePath, changeName);
				
				// MultipartFile 객체에서 제공하는 transferTo 메소드를 이용해서 이관시켜줌
				try {
					upfile.transferTo(target);
					
					SelfAttachment selfAttachment = new SelfAttachment();
					selfAttachment.setOriginName(originName);
					selfAttachment.setChangeName(changeName);
					selfAttachment.setFilePath("resources/selfUpfiles/");
					
					// 상품 이미지 테이블에 들어갔는지 확인하는 result1
					int result2 = adminService.insertSelfAtt(selfAttachment);
					
					if(result1 > 0 || result2 > 0) {
						session.setAttribute("alertMsg", "상품이 성공적으로 추가되었습니다.");
					} else {
						session.setAttribute("alertMsg", "상품 추가중 오류가 발생하였습니다. 확인해 주세요.");
						return "redirect:/admin/selfList.do";
					}
					
				} catch (IllegalStateException | IOException e) {
					session.setAttribute("alertMsg", "상품 추가중 오류가 발생하였습니다. 확인해 주세요.");
					e.printStackTrace();
				}
			}
			return "redirect:/admin/selfList.do";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
	}
	
// 셀프 메뉴 수정  메소드
@PostMapping("/updateSelf.ad")
public String updateSelf(@RequestParam int sideNum
		               , @RequestParam int categoryNum
					   , @RequestParam String sideName
					   , @RequestParam int price
					   , HttpSession session) {
	
	Member loginUser = (Member)session.getAttribute("loginUser");
	
	if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
		SelfProduct selfProduct = new SelfProduct();
		selfProduct.setSideNum(sideNum);
		selfProduct.setCategoryNum(categoryNum);
		selfProduct.setSideName(sideName);
		selfProduct.setPrice(price);
		
		int result = adminService.updateSelf(selfProduct);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "정보 수정 성공");
		} else {
			session.setAttribute("alertMsg", "정소 수정 실패 ㅠㅠ. 정보를 확인해 주세요.");
		}
		
		return "redirect:/admin/selfList.do";
	} else {
		session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
		return "redirect:/member/login.do";
	}
}



	
// 셀프 메뉴 삭제 메소드
@GetMapping("/deleteSelf.ad")
public String deleteSelf(
		@RequestParam int sideNum
	  , HttpSession session) {
	
	
	Member loginUser = (Member)session.getAttribute("loginUser");
	
	if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
		int result1 = adminService.deleteSelfAtt(sideNum);
		int result2 = adminService.deleteSelf(sideNum);
		
		if(result1 > 0 && result2 > 0) {
			session.setAttribute("alertMsg", "상품 정보 삭제 성공!!");
			return "redirect:/admin/selfList.do";
		} else {
			session.setAttribute("alertMsg", "상품 정보 삭제 실패 ㅠㅠ");
			return "redirect:/admin/selfList.do";
		}
	} else {
		session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
		return "redirect:/member/login.do";
	}
	
	
}



// ----- 패키지-----
// 패키지 도시락 조회 메소드
@GetMapping("/packageList.ad")
public String packageList(Model model, HttpSession session) {
	
	Member loginUser = (Member)session.getAttribute("loginUser");
	
	if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
		List<PackageProduct> list = adminService.selectDList();
		
		model.addAttribute("list", list);
		
		return "admin/productManager/packageProduct/packageList";
	} else {
		session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
		return "redirect:/member/login.do";
	}
	
}

// 패키지 도시락 추가 메소드
//@ModelAttribute UploadVO uploadVO,
@PostMapping("/addPackage.ad")
public String addPackage(
		@RequestParam int packageNum2,
		@RequestParam String packageName,
		@RequestParam int packagePrice,
		@RequestParam MultipartFile upfile,
		HttpSession session) {
	

	Member loginUser = (Member)session.getAttribute("loginUser");
	
	if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
		PackageProduct packageProduct = new PackageProduct();
		packageProduct.setPackageNum2(packageNum2);
		packageProduct.setPackageName(packageName);
		packageProduct.setPackagePrice(packagePrice);
		
		// SIDE 테이블에 들어갔는지 확인하는 result1
		int result1 = adminService.insertPack(packageProduct);

		if(result1 > 0) {
			String filePath = session.getServletContext().getRealPath("/resources/packUpfiles/");
			String changeName = new MyFileRenamePolicy().rename(upfile.getOriginalFilename());
			String originName = upfile.getOriginalFilename();
				
			// 우선 File 객체를 만들고
			File target = new File(filePath, changeName);
			
			// MultipartFile 객체에서 제공하는 transferTo 메소드를 이용해서 이관시켜줌
			try {
				upfile.transferTo(target);
				
				PackageAttachment packageAttachment = new PackageAttachment();
				packageAttachment.setOriginName(originName);
				packageAttachment.setChangeName(changeName);
				packageAttachment.setFilePath(filePath);
				
				// 상품 이미지 테이블에 들어갔는지 확인하는 result1
				int result2 = adminService.insertPackAtt(packageAttachment);
				
				if(result1 > 0 || result2 > 0) {
					session.setAttribute("alertMsg", "패키지가 성공적으로 추가되었습니다.");
				} else {
					session.setAttribute("alertMsg", "패키지가 추가중 오류가 발생하였습니다. 확인해 주세요.");
				}
				
			} catch (IllegalStateException | IOException e) {
				session.setAttribute("alertMsg", "패키지가 추가중 오류가 발생하였습니다. 확인해 주세요.");
			}
		}
		return "redirect:/admin/packageList.ad";
	} else {
		session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
		return "redirect:/member/login.do";
	}

}

// 패키지 도시락 수정 메소드
@PostMapping("/updatePack.ad")
public String updataPack(
		@RequestParam int packageNum
	  , @RequestParam int packageNum2
	  , @RequestParam String packageName
	  , @RequestParam int packagePrice
	  , HttpSession session) {
	
	
	Member loginUser = (Member)session.getAttribute("loginUser");
	
	if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
		PackageProduct packageProduct = new PackageProduct();
		packageProduct.setPackageNum(packageNum);
		packageProduct.setPackageNum2(packageNum2);
		packageProduct.setPackageName(packageName);
		packageProduct.setPackagePrice(packagePrice);
		
		int result1 = adminService.updatePack(packageProduct);
		
		if(result1 > 0) {
			session.setAttribute("alertMsg", "패키지 정보 수정 성공!!");
		} else {
			session.setAttribute("alertMsg", "패키지 정보 수정이 잘못됬다고!? 이대로 가면 이상해지니 다시 수정해!!!!!!!!!!");
		}
		
		return "redirect:/admin/packageList.ad";
	} else {
		session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
		return "redirect:/member/login.do";
	}
	
	
	
	
	
}
// 패키지 도시락 삭제 메소드
@GetMapping("/deletePack.ad")
public String deletePack(
		@RequestParam int packageNum
	  , HttpSession session) {
	
	
//	List<PackageAttachment> list = adminService.selectPackImg(packageNum);
//	
//	System.out.println(list);
//	
//	//파일 경로 지정
//	String path = ServletContext.getRealPath("C:/Framework-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/FinalProject/resources/packUpfiles/");
//	//현재 게시판에 존재하는 파일객체를 만듬
//	File file = new File(path + "\\" + "저장된 파일 이름");
//	if(file.exists()) { 
//		// 파일이 존재하면
//		file.delete(); // 파일 삭제
//		}
//	}
	
	Member loginUser = (Member)session.getAttribute("loginUser");
	
	if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
		int result2 = adminService.deletePackAtt(packageNum);
		
		int result1 = adminService.deletePack(packageNum);
		

		
		if(result1 > 0 && result2 > 0) {
			session.setAttribute("alertMsg", "패키지 삭제 성공");
			return "redirect:/admin/packageList.ad";
		} else {
			session.setAttribute("alertMsg", "패키지 삭제 실패");
			return "redirect:/admin/packageList.ad";
		}
	} else {
		session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
		return "redirect:/member/login.do";
	}
}

//셀프 상품 활성화
	@GetMapping("/activationPack.ad")
	public String activationPack(
			@RequestParam int packageNum
		  , HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			int result = adminService.activationPack(packageNum);
			
			if(result > 0) {
				session.setAttribute("alertMsg", "활성화 되었습니다.");
			} else {
				session.setAttribute("alertMsg", "오류~~~~~~");
			}
			
			return "redirect:/admin/packageList.ad";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
	}
	// 셀프 상품 비활성화
	@GetMapping("/unactivationPack.ad")
	public String unactivationPack(
			@RequestParam int packageNum
		  , HttpSession session) {
		
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if( loginUser != null && loginUser.getMemberId().equals("admin") && loginUser.getMemberPwd().equals("admin")) {
			int result = adminService.unactivationPack(packageNum);
			
			if(result > 0) {
				session.setAttribute("alertMsg", "비활성화 되었습니다.");
			} else {
				session.setAttribute("alertMsg", "오류!!!!!");
			}
			
			return "redirect:/admin/packageList.ad";
		} else {
			session.setAttribute("alertMsg", "관리자로그인 시에만 접속할 수 있습니다.");
			return "redirect:/member/login.do";
		}
		
	}

	
	
	// ---------------------------------------------------------------------------------
	// 로그아웃시
	@GetMapping("/logout.ad")
	public String logout(HttpSession session) {
		session.setAttribute("loginUser", null);
		
		session.setAttribute("alertMsg", "로그아웃에 성공하였습니다.");
		
		return "redirect:/member/login.do";
	}
	
}


