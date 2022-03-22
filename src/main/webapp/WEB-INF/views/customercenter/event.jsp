<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>공지사항</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
	
    <!-- Css Styles -->
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/style.css" type="text/css">
    <style>
    	
        .eventele{
        	background-color:rgb(247, 247, 236);
            padding: 5px;
            width: 70%;
            height: 100%;
            font-size: 20px;
        }
        .image-box {
		    width:70%x;
		    height:200px;
		    overflow:hidden;
		    margin:0 auto;
		}
		
		.image-thumbnail {
		    width:100%;
		    height:100%;
		    object-fit:cover;
		}
		
    </style>
</head>
	
	<body>
	    <!-- Page Preloder -->
	    <div id="preloder">
	        <div class="loader"></div>
	    </div>
	
	    <!-- Humberger Begin -->
	    <div class="humberger__menu__overlay"></div>
	   
	    <header class="header">
	        <%@ include file="../common/main_top.jsp" %>
	    </header>
	    <!-- Hero Section End -->
	
	    <!-- Breadcrumb Section Begin -->
	    <section class="breadcrumb-section set-bg" data-setbg="../resources/img/breadcrumb.jpg">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-12 text-center">
	                    <div class="breadcrumb__text">
	                        <h2>이벤트</h2>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
	    <!-- Breadcrumb Section End -->
		<div class="container" align="center">
		  <br>
		  <h2>wo9wo9의 특별한 이벤트를 경험해 보세요!</h2>            
		  <br>
		  <table class="table" width="100%" border="1">
		    
		    <tbody align="center">
		      <tr>
		        <td>
		        	<div class="image-box">
						<img class="image-thumbnail" src="../resources/img/slide01.PNG" >
					</div>
		        </td>
		        <td width="20%">
		        	<div id="coupon_1">
		        		
						<input type="button" id="btn1" class="btn btn-success" value="쿠폰받기" style="width:200px; height:200px;font-size : 30px">						
				
		        	</div>
		        	
		        </td>
		      <tr>
		        <td>
		        	<div class="image-box">
						<img class="image-thumbnail" src="../resources/img/slide02.PNG" >
					</div>
		        </td>
		        <td width="20%">
		        	<div id="coupon_2">
		        		<input type="hidden" name="couponName" value="싱그러운 점심 10% 할인쿠폰">
		        			
						<input type="button" id="btn2" class="btn btn-success" value="쿠폰받기" style="width:200px; height:200px;font-size : 30px">									
								
		        		
		        	</div>
		        </td>
		      </tr>
		      <tr>
		        <td>
		        	<div class="image-box">
						<img class="image-thumbnail" src="../resources/img/slide03.PNG" >
					</div>
		        </td>
		        <td width="20%">
		        	<div id="coupon_3">
		        		<input type="hidden" name="couponName" value="오래오래 함께해요 5% 할인쿠폰">	
						<input type="button" id="btn3" class="btn btn-success" value="쿠폰받기" style="width:200px; height:200px;font-size : 30px">
		        	</div>
		        </td>
		      </tr>
		      <tr>
		        <tr>
		        <td width="80%">
		        	<div class="image-box">
						<img class="image-thumbnail" src="../resources/img/slide04.PNG" >
					</div>
		        </td>
		        <td width="20%">
		        	<div id="coupon_4">
		        
		        		<input type="hidden" name="couponName" value="대박기원 7% 할인쿠폰">
		     	
						<input type="button" id="btn4" class="btn btn-success" value="쿠폰받기" style="width:200px; height:200px;font-size : 30px">						
						<input type="hidden" id="memberNum" value="${loginUser.memberNum }">
		        	</div>
		        </td>
		      </tr>
		    
				  
		      
		    </tbody>
		  </table>
		</div>
	    
	
	    <!-- Footer Section Begin -->
	    <footer class="footer spad">
	        <%@ include file="../common/main_bottom.jsp" %>
	    </footer>
	    <!-- Footer Section End -->
		
		<script src="../resources/js/jquery-3.3.1.min.js"></script>
	    <script src="../resources/js/bootstrap.min.js"></script>
	    <script src="../resources/js/jquery.nice-select.min.js"></script>
	    <script src="../resources/js/jquery-ui.min.js"></script>
	    <script src="../resources/js/jquery.slicknav.js"></script>
	    <script src="../resources/js/mixitup.min.js"></script>
	    <script src="../resources/js/owl.carousel.min.js"></script>
	    <script src="../resources/js/main.js"></script>
		<script>
			
			$("#btn1").click(function() {
			
			$.ajax({
				url : "${ pageContext.request.contextPath }/customercenterrest/disable.do",
				type : "post",
				data : { couponName : "신규 가입 30% 할인쿠폰",
					     memberNum : $("#memberNum").val()
					     },
				success : function(result) {
					//console.log(result);
					if(result < 0){
						alert("로그인을 하세요!");
					}
					else{
						if(result > 0 ){
							var str ="<input type='button' id='btn1' disabled class='btn btn-success' value='쿠폰받기' style='width:200px; height:200px;font-size : 30px'>"
							alert("이미 받았어 자식아");
						}
						if(result == 0){
							var str ="<input type='button' id='btn1' disabled class='btn btn-success' value='쿠폰받기' style='width:200px; height:200px;font-size : 30px'>"						
							alert("쿠폰이 발급 되었습니다.");
						}
					}
					
				
					$("#coupon_1").html(str);
					},
					error : function() {
						alert("로그인해서 사용하십시오.");
					}
				});
				
			});
			$("#btn2").click(function() {
				
				$.ajax({
					url : "${ pageContext.request.contextPath }/customercenterrest/disable.do",
					type : "post",
					data : { couponName : "싱그러운 점심 10% 할인쿠폰",
				     memberNum : $("#memberNum").val()
				     },
					success : function(result) {
						// console.log(result);
						
						if(result > 0 ){
							var str ="<input type='button' id='btn2' disabled class='btn btn-success' value='쿠폰받기' style='width:200px; height:200px;font-size : 30px'>"
							alert("이미 받았어 자식아");
						}
						if(result == 0){
							var str ="<input type='button' id='btn2' disabled class='btn btn-success' value='쿠폰받기' style='width:200px; height:200px;font-size : 30px'>"						
							alert("쿠폰이 발급 되었습니다.");
						}
					
						$("#coupon_2").html(str);
						console.log("ajax 통신 실패!");
					},
					error : function() {
						alert("로그인해서 사용하십시오.");
					}
				});
				
			});
			$("#btn3").click(function() {
				
				$.ajax({
					url : "${ pageContext.request.contextPath }/customercenterrest/disable.do",
					type : "post",
					data : { couponName : "오래오래 함께해요 5% 할인쿠폰",
					     memberNum : $("#memberNum").val()
				     },
					success : function(result) {
						// console.log(result);
						
						if(result > 0 ){
							var str ="<input type='button' id='btn3' disabled class='btn btn-success' value='쿠폰받기' style='width:200px; height:200px;font-size : 30px'>"
							alert("이미 받았어 자식아");
						}
						if(result == 0){
							var str ="<input type='button' id='btn3' disabled class='btn btn-success' value='쿠폰받기' style='width:200px; height:200px;font-size : 30px'>"						
							alert("쿠폰이 발급 되었습니다.");
						}
					
						$("#coupon_3").html(str);
						console.log("ajax 통신 실패!");
					},
					error : function() {
						alert("로그인해서 사용하십시오.");
					}
				});
				
			});
			$("#btn4").click(function() {
				
				$.ajax({
					url : "${ pageContext.request.contextPath }/customercenterrest/disable.do",
					type : "post",
					data : { couponName : "대박기원 7% 할인쿠폰",
					     memberNum : $("#memberNum").val()
				     },
					success : function(result) {
						// console.log(result);
						
						if(result > 0 ){
							var str ="<input type='button' id='btn4' disabled class='btn btn-success' value='쿠폰받기' style='width:200px; height:200px;font-size : 30px'>"
							alert("이미 받았어 자식아");
						}
						if(result == 0){
							var str ="<input type='button' id='btn4' disabled class='btn btn-success' value='쿠폰받기' style='width:200px; height:200px;font-size : 30px'>"						
							alert("쿠폰이 발급 되었습니다.");
						}
					
						$("#coupon_4").html(str);
						console.log("ajax 통신 실패!");
					},
					error : function() {
						alert("로그인해서 사용하십시오.");
					}
				});
				
			});
			
		</script>
	
	</body>
	
</html>