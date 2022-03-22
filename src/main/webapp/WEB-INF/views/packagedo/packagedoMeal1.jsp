<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "../common/main_top.jsp" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    
    
    
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>키토제닉</title>


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

	

	<form action="meal1.do" method="post">
    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container" style="width:60%; margin-left: 20%; border-top:2px solid rgb(165, 161, 140);">
            <div class="row" style="margin-top: 30px;">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="../resources/img/키토제닉.jpg" height="500px" style="border-radius: 20px;" alt="">
                        </div>
                        
                    </div>
                </div>
                
                
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <br>
                        <h3>키토제닉 식단</h3>
                       
                        <ul>   
                            <li><b>판매자:</b> <span>wo9wo9</span></li>
                            <li><b>보관방법:</b> <span>냉동보관</span></li>
                            <li><b>배송비:</b> <span> 무료</span></li>              
                        </ul>   
                        <br>
                        
                        <a href="#메뉴" class="primary-btn" style="width: 300px; height: 50px; border-radius: 10px; 
                        background-color: #eaa18a; text-align: center; margin-bottom:20px;">패키지 메뉴판</a> 
                        <br><br>
                        
                        
                        <select name="packageNum" id="packageNum">
                            <c:forEach var="p" items="${ list }">
                            	<option value="${ p.packageNum }">
                            	${ p.packageName } , ${ p.packagePrice}원
                            	</option>
                            </c:forEach>                                       
                        </select>
                         
                        <br><br><br>
                        <button type="submit" class="primary-btn" style="border-radius: 10px;">장바구니 담기</button>   
                    </div>
                </div>
                
                
            </div>
        </div>
    </section>
	</form>
   		
   		<a name="메뉴"></a>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;패키지 메뉴</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">키토제닉 정보</a>
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
                                    	
                                    	<c:forEach var="p" items="${ list2 }">
                                          <div class="thumbnail" style="text-align:center">
                                             <img src="${ pageContext.request.contextPath }/${ p.titleImg }"
                                             style="border-radius: 20px; width: 200px; height:170px;" />
                                            <p>
                                                <span>
                                                  	${ p.packageName }
                                                </span>
                                                <br>
                                                	${ p.packagePrice }원
                                            </p>
                                          </div>
                                        </c:forEach>  
                                       
                                    </div>    
                                </div>
                            </div>

                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc" style="text-align:center;">
                                    <img src="../resources/img/키토제닉1.PNG" style="width: 60%;"/>
                                    <img src="../resources/img/키토제닉2.PNG" style="width: 60%;"/>
                                    <img src="../resources/img/키토제닉3.PNG" style="width: 60%;"/>
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
											      				else{
											      					alert("댓글 작성에 실패했습니다.");
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


    


 
</body>

</html>