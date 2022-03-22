<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>셀프 도시락</title>

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
          .list-area {
            width: 85%;
            margin: auto;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
          }

          .thumbnail {
          	width: 25%;
            background: #d3d3d35e;
            margin: 0.5%;           
            border-radius: 20px;
            border: 2px solid black;
           
          }
          .thumbnail p {
            padding: 10px;
            font-weight: bold;
          }
    </style>
</head>

<body>
    
<div id="header">
	<%@include file = "../common/main_top.jsp" %>
</div>

  <!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="../resources/img/breadcrumb.jpg"  style="width: 70%; margin-left: 15%;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>셀프 도시락</h2>
                </div>
            </div>
        </div>
    </div>
</section>

<br>
<div style="width:60%; margin-left: 20%; border-top:2px solid rgb(165, 161, 140);"></div>

    <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container" style="margin-top: 4%;">
            <div class="section-title">
                <h4>wo9wo9 추천 메뉴</h4>
            </div>
            <div class="row">
                
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="../resources/img/매우오.jpg">
                            <h5><a>매콤 무말랭이 오징어</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="../resources/img/검땅조.jpg">
                            <h5><a>검은콩 땅콩조림</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="../resources/img/매간불.jpg">
                            <h5><a>매실간장 돼지불고기</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="../resources/img/두부.jpg">
                            <h5><a>두부조림</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="../resources/img/생깻.jpg">
                            <h5><a>생깻잎지</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <br><br><br>
    <div style="width:40%; margin-left: 30%; border-top: 1px solid rgb(165, 161, 140);"></div>
    <!-- Categories Section End -->

    <!-- Featured Section Begin -->
    <form action="meal.do" method="post">
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>셀프 도시락 만들기</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*">&nbsp;모두&nbsp;</li>
                            <li data-filter=".rice">&nbsp;밥&nbsp;</li>
                            <li data-filter=".soup">&nbsp;국&nbsp;</li>
                            <li data-filter=".side1">&nbsp;반찬(1)&nbsp;</li>
                            <li data-filter=".side2">&nbsp;반찬(2)&nbsp;</li>
                            <li data-filter=".side3">&nbsp;반찬(3)&nbsp;</li>
                        </ul>
                        <br>
                        <p style="color: red;">5가지 카테고리의 메뉴를 선택하여 구성을 완료해주세요</p>
                    </div>
                    
                </div>
            </div>
            <div class="row featured__filter">
            	<c:forEach var="b" items="${ list }">
                <div class="col-lg-3 col-md-4 col-sm-6 mix rice">
                    <div class="featured__item">	
                        <div class="featured__item__pic set-bg" data-setbg="${ pageContext.request.contextPath }/${ b.titleImg }">
                            <ul class="featured__item__pic__hover">
                                <input type="radio" name="sideNum1" value="${ b.sideNum }" style="width: 30px; height: 30px;">
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">${ b.sideName }</a></h6>
                            <h5>${ b.price }원</h5>
                            
                        </div>
                    </div>
                </div>
				</c:forEach>
			
			<!--  
			<c:choose>	
            	<c:when test="${ empty list }">
            		<input type="radio" name="sideNum1" value="0" style="width: 30px; height: 30px;">
            	</c:when>
            	<c:otherwise>
            	   <c:forEach var="b" items="${ list }">
            	   <div class="col-lg-3 col-md-4 col-sm-6 mix rice">
	                    <div class="featured__item">	
	                        <div class="featured__item__pic set-bg" data-setbg="${ pageContext.request.contextPath }/${ b.titleImg }">
	                            <ul class="featured__item__pic__hover">
	                                <input type="radio" name="sideNum1" value="${ b.sideNum }" style="width: 30px; height: 30px;">
	                            </ul>
	                        </div>
	                        <div class="featured__item__text">
	                            <h6><a href="#">${ b.sideName }</a></h6>
	                            <h5>${ b.price }원</h5>	                            
	                        </div>
	                    </div>
	                </div>
	                </c:forEach>
            	</c:otherwise>
			</c:choose> -->
				
				<c:forEach var="b" items="${ list2 }">
                <div class="col-lg-3 col-md-4 col-sm-6 mix soup">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="${ pageContext.request.contextPath }/${ b.titleImg }">
                            <ul class="featured__item__pic__hover">
                                <input type="radio" name="sideNum2" value="${ b.sideNum }" style="width: 30px; height: 30px;">
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">${ b.sideName }</a></h6>
                            <h5>${ b.price }원</h5>
                            
                        </div>
                    </div>
                </div>
                </c:forEach>       
				
				<c:forEach var="b" items="${ list3 }">
                <div class="col-lg-3 col-md-4 col-sm-6 mix side1">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="${ pageContext.request.contextPath }/${ b.titleImg }">
                            <ul class="featured__item__pic__hover">
                                <input type="radio" name="sideNum3" value="${ b.sideNum }" style="width: 30px; height: 30px;">
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">${ b.sideName }</a></h6>
                            <h5>${ b.price }원</h5>
                        </div>
                    </div>
                </div>
                </c:forEach>              
				
				<c:forEach var="b" items="${ list3 }">
                <div class="col-lg-3 col-md-4 col-sm-6 mix side2">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="${ pageContext.request.contextPath }/${ b.titleImg }">
                            <ul class="featured__item__pic__hover">
                                <input type="radio" name="sideNum4" value="${ b.sideNum }" style="width: 30px; height: 30px;">
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">${ b.sideName }</a></h6>
                            <h5>${ b.price }원</h5>
                            
                        </div>
                    </div>
                </div>
                </c:forEach> 
				
				<c:forEach var="b" items="${ list3 }">
                <div class="col-lg-3 col-md-4 col-sm-6 mix side3">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="${ pageContext.request.contextPath }/${ b.titleImg }">
                            <ul class="featured__item__pic__hover">
                                <input type="radio" name="sideNum5" value="${ b.sideNum }" style="width: 30px; height: 30px;">
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">${ b.sideName }</a></h6>
                            <h5>${ b.price }원</h5>
                            
                        </div>
                    </div>
                </div>
                </c:forEach>       
            </div>
            <div style="text-align: center;">
                <button type="submit" href="#구성" class="primary-btn" style="width: 150px; height: 40px; border-radius: 10px; background-color: slateblue;">구성 완료</a> 
            </div>
            
        </div>
    </section>
    
           		<input type="radio" name="sideNum1" value="0" checked style="width: 1px; height: 1px;">
				<input type="radio" name="sideNum2" value="0" checked style="width: 1px; height: 1px;">
				<input type="radio" name="sideNum3" value="0" checked style="width: 1px; height: 1px;">
				<input type="radio" name="sideNum4" value="0" checked style="width: 1px; height: 1px;">
				<input type="radio" name="sideNum5" value="0" checked style="width: 1px; height: 1px;">
    </form>

    <br>
    <div style="width:40%; margin-left: 30%; border-top: 1px solid rgb(165, 161, 140);"></div>
    
    <a name="구성"></a>
    <section class="featured spad">
        <div class="container" style="border: 3px solid gainsboro; border-radius: 10px;">
        
            <br>
            <div class="section-title" style="text-align: right;">
                <h4 style="text-align: center;">구성된 셀프 도시락</h4>
                <form action="deletemeal.do" method="post">
                <button type="submit" class="primary-btn" style="width: 120px; height: 40px; border-radius: 200px; background-color: crimson;">초기화</button>
                <input type="hidden" name="dNum" value="${ dNum }">
                </form>
            </div>
        
                
            
            <div class="row featured__filter">
                
                <c:forEach var="s" items="${ list_1 }">
                <div class="featured__item" style="width:200px; margin-left:65px;">
                    <div class="featured__item__pic set-bg" style="border-radius: 20px;" data-setbg="${ pageContext.request.contextPath }/${ s.titleImg }">
                        <ul class="featured__item__pic__hover">
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">${ s.sideName }</a></h6>
                        <h5>${ s.price }원</h5>
                        
                    </div>
                </div>
                </c:forEach>
               
                
                <c:forEach var="s" items="${ list_2 }">
                <div class="featured__item" style="width:200px; margin-left: 10px;">
                    <div class="featured__item__pic set-bg" style="border-radius: 20px;" data-setbg="${ pageContext.request.contextPath }/${ s.titleImg }">
                        <ul class="featured__item__pic__hover">
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">${ s.sideName }</a></h6>
                        <h5>${ s.price }원</h5>
                        
                    </div>
                </div>
                </c:forEach>
				
				<c:forEach var="s" items="${ list_3 }">
                <div class="featured__item" style="width:200px; margin-left: 10px;">
                    <div class="featured__item__pic set-bg" style="border-radius: 20px;" data-setbg="${ pageContext.request.contextPath }/${ s.titleImg }">
                        <ul class="featured__item__pic__hover">
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">${ s.sideName }</a></h6>
                        <h5>${ s.price }원</h5>
                        
                    </div>
                </div>
                </c:forEach>
				
				<c:forEach var="s" items="${ list_4 }">
                <div class="featured__item" style="width:200px; margin-left: 10px;">
                    <div class="featured__item__pic set-bg" style="border-radius: 20px;" data-setbg="${ pageContext.request.contextPath }/${ s.titleImg }">
                        <ul class="featured__item__pic__hover">
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">${ s.sideName }</a></h6>
                        <h5>${ s.price }원</h5>
                        
                    </div>
                </div>
                </c:forEach>
				
				<c:forEach var="s" items="${ list_5 }">
                <div class="featured__item" style="width:200px; margin-left: 10px;">
                    <div class="featured__item__pic set-bg" style="border-radius: 20px;" data-setbg="${ pageContext.request.contextPath }/${ s.titleImg }">
                        <ul class="featured__item__pic__hover">
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">${ s.sideName }</a></h6>
                        <h5>${ s.price }원</h5>
                        
                    </div>
                </div>
                </c:forEach>
                
            
            </div>   
			
            <div class="featured__item__text" style="margin-bottom: 25px;">
                <h2 style="color:red; font-weight:bold;">= ${ price }원</h2>
            </div>
            
        </div> 
        
        <br>
        <form action="basket.do" method="post">
        <div style="text-align: center;">
            <button type="submit" class="primary-btn" style="border-radius: 10px;">장바구니 담기</button>  
        </div>
        	<input type="hidden" name="price" value="${ price }">
        	<input type="hidden" name="dNum" value="${ dNum }">
        </form>
        
    </section>
    

    
    
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;원산지 정보</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">사용자 리뷰&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <div class="list-area">
                                    
                                  		  <c:forEach var="b" items="${ list }">
                                          <div class="thumbnail" style="text-align:center">
                                            <img src="${ pageContext.request.contextPath }/${ b.titleImg }" 
                                             style="border-radius: 20px; width:200px; height:200px;"/>
                                            
                            
                                            <p style="font-size: 20px;">
                                                 ${ b.sideName }
                                                <br>
                                                <span style="color: red; font-size: 15px;">국내산</span> 
                                            </p>
                                          </div>
                                          </c:forEach>
                                          
                                          <c:forEach var="b" items="${ list2 }">
                                          <div class="thumbnail" style="text-align:center">
                                            <img src="${ pageContext.request.contextPath }/${ b.titleImg }" 
                                             style="border-radius: 20px; width:200px; height:200px;"/>
                                            
                            
                                            <p style="font-size: 20px;">
                                                 ${ b.sideName }
                                                <br>
                                                <span style="color: red; font-size: 15px;">국내산</span> 
                                            </p>
                                          </div>
                                          </c:forEach>
                                          
                                          <c:forEach var="b" items="${ list3 }">
                                          <div class="thumbnail" style="text-align:center">
                                            <img src="${ pageContext.request.contextPath }/${ b.titleImg }"
                                             style="border-radius: 20px; width:200px; height:200px;"/>
                                            
                            
                                            <p style="font-size: 20px;">
                                                 ${ b.sideName }
                                                <br>
                                                <span style="color: red; font-size: 15px;">국내산</span> 
                                            </p>
                                          </div>
                                          </c:forEach>
                                    </div>    
                                </div>
                            </div>

                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    	<div class="container">
	
											<table class="table" id="list-area" width="50%">
												<thead>
													<tr>
														<th>글번호</th>
														<th>별점</th>
														<th>내용</th>
														<th>작성자</th>
														<th>날짜</th>
														
													</tr>
												</thead>
												<tbody></tbody>
												
											</table>
											<br>
											
											<div align="center">
												<table class="table">
												
													<tr>
													
														<td>
															<textarea id="replyContent" cols="100" rows="2" style="resize:none; margin-top:1px;" placeholder="내용을 입력해 주세요.."></textarea>
									        			   	
															</td>
														
														<td>
														
														<select id="point" style="padding-top:10000px;">
																<option value="1">1점</option>
																<option value="2">2점</option>
																<option value="3">3점</option>
																<option value="4">4점</option>
																<option value="5">5점</option>
															</select>
														</td>
														<td>
															<c:if test="${ loginUser != null }">
									                            <button onclick="insertReply();" class="btn btn-success" style="width:100px; margin-top:10px;" >등록</button>
									                        </c:if>
																
															<input type="hidden" id="userName" value="${loginUser.memberName }">
														</td>
														<td width="17%"></td>
													</tr>
												</table>
											
												
											</div>
													
										</div>
										
										<script>
											function selectReplyList() {
												$.ajax({
													url : "${ pageContext.request.contextPath }/reply/list.do",
													type : "get",
													success : function(result) {
														var str = "";
											  				
											  				for(var i = 0; i < result.length; i++) {
															str += "<tr>"
																 		+ "<td>" + result[i].noticeNo + "</td>"
																 		+ "<td><img src='../resources/img/"+ result[i].point +"point.PNG'width='100' height='20' ></td>"
																 		+ "<td>" + result[i].noticeContent + "</td>"
																 		+ "<td>"  + result[i].memberName + "</td>"
																 		+ "<td>" + result[i].createDate.substring(0, 10) + "</td>"
																 + "</tr>";
														}
											  				console.log(str);
											  				$("#list-area>tbody").html(str);
													},
													error : function() {
														console.log("댓글리스트용 ajax 실패");
													}
												});
											  		
											  	}function insertReply() {
											      		
											      		$.ajax({
											      			url : "${ pageContext.request.contextPath }/reply/insert.do",
											      			data : {
											       				content : $("#replyContent").val(),
											       				point : $("#point").val(),
											       				memberName : $("#userName").val()
											       				  // text() 가 아닌 val() 로 가져와야 함
											      			},
											      			type : "post",
											      			success : function(result) {
											      				
											      				// result 값에 따라서 성공했으면 성공메시지 띄우기 alert()
											      				if(result > 0) { 
											      					
											         					alert("댓글 작성에 성공했습니다.");
											         					
											         					selectReplyList(); 
																
											         					$("#replyContent").val(""); // textarea 초기화
											          			}
											      				
											      				
											      			},
											      			error : function() {
											      				alert("댓글을 쓰시오 또는 로그인을 하시오.");
											      				console.log("댓글 삽입용 ajax 실패");
											      			}
											      		});
											      		
											          		
											          		
											          		
											          	
											      		
											      	}
												
												$(function() {
											      		
													selectReplyList(); 
											      		
											      	});
											      	
											      	// 댓글은 화면이 로딩되었을 때 곧바로 뿌려줘야 함 => window.onload => $(function)
											      	
											      	 
										</script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
 
        
        <br><br><br><br><br>
    
<div id="footer">
	<%@ include file="../common/main_bottom.jsp" %>
</div>
    
       
    <!-- Featured Section End -->

    <!-- Js Plugins -->
    <script src="../resources/js/jquery-3.3.1.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/jquery.nice-select.min.js"></script>
    <script src="../resources/js/jquery-ui.min.js"></script>
    <script src="../resources/js/jquery.slicknav.js"></script>
    <script src="../resources/js/mixitup.min.js"></script>
    <script src="../resources/js/owl.carousel.min.js"></script>
    <script src="../resources/js/main.js"></script>

   
</body>

</html>