<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%@ include file="main_top.jsp" %>
	
	<div class="center">
	
		<h2 style="text-align:center;"> <b style="color:green">'${keyword}'</b>  반찬 검색</h2>
	
		<div style="width:70%; margin:auto;">
						<c:choose>
	                  <c:when test="${empty list}">
	                     		<h1 style="text-align: center; margin: 10%;">검색한 반찬이 없습니다.</h1>
	                  </c:when>
	                  <c:otherwise>
	                     <c:forEach var="s" items="${list}">
	                        <div class="col-lg-4 col-md-4 col-sm-6" style="display: block; float: left; margin-top:100px; margin-bottom:100px; text-align:center;">
			                    <div class="blog__item" style=" text-align:center;">
			                        <div class="blog__item__pic" style=" text-align:center;">
			                         <a href="${ pageContext.request.contextPath }/selfdo/meal.do">
			                            <img src="${pageContext.request.contextPath}/${s.bestImg}">
			                            <div class="featured__item__text asd" style="text-align:center;">
			                                <h3 style="text-align:left; margin-bottom: 3px;"><a href="#" style="color: black;">${s.sideName}</a></h3>
			                                <h5 style="text-align:left;">개별 가격 : ${s.price}</h5>
			                                <h5 style="text-align:left;">판매수량 : ${s.count}</h5>
			                            </div>
			                            </a>
			                        </div>
			                    </div>
			                </div>
	                     </c:forEach>
	                  </c:otherwise>
	               </c:choose>
		</div>
	
	</div>

	
</body>
</html>