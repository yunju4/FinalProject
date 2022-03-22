<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
    .center a{
        display: inline-block;
    }
</style>
</head>
<body>

    <%@ include file="main_top.jsp" %>


	<div class="center">
		<div style="width:70%; margin:auto;">
						    <!-- Featured Section Begin -->
							<section class="featured spad">
								<div class="container">
									<div class="row">
										<div class="col-lg-12">
											<div class="section-title">
												<h2 style="text-align:center;"> self 도시락 BEST ></h2>
											</div>
											<div>

											</div>
											<div class="featured__controls">
												<ul style="float: right; margin-bottom:10px;">
													<li class="active" data-filter="*">모두</li>
													<li data-filter=".oranges">반찬 </li>
													<li data-filter=".fresh-meat">국 </li>
													<li data-filter=".vegetables">밥</li>
												</ul>
											</div>
										</div>
									</div>
									
									<div class="row featured__filter">
						
									<!--반판-->
									<c:choose>
											<c:when test="${empty bestside}">
												<a>추천 없음</a>
											</c:when>
											
										<c:otherwise>
											<c:forEach var="bsi" items="${bestside}">
												<div class="col-lg-3 col-md-4 col-sm-6 mix oranges">
													<div class="featured__item">
														<div class="featured__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/${bsi.bestImg}">
															<ul class="featured__item__pic__hover">
															</ul>
														</div>
														<div class="featured__item__text">
															<h6><a>${bsi.sideName}</a></h6>
														</div>
													</div>
												</div>
											 </c:forEach>
										</c:otherwise>
									</c:choose>
						
									<!-- 밥-->
									<c:choose>
										<c:when test="${empty bestRice}">
											<a>추천 없음</a>
										</c:when>
										
										<c:otherwise>
										 <c:forEach var="r" items="${bestRice}">
											<div class="col-lg-3 col-md-4 col-sm-6 mix vegetables">
												<div class="featured__item">
													<div class="featured__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/${r.bestRice}">
														<ul class="featured__item__pic__hover">
														</ul>
													</div>
													<div class="featured__item__text">
														<h6><a>${r.sideName}</a></h6>
													</div>
												</div>
											</div>
										 </c:forEach>
										</c:otherwise>
								   </c:choose>
						
												  <!-- 국-->
												  <c:choose>
													<c:when test="${empty bestRice}">
														<a>추천 없음</a>
													</c:when>
													
													<c:otherwise>
													 <c:forEach var="bs" items="${bestSoup}">
						
														<div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat">
															<div class="featured__item">
																<div class="featured__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/${bs.bestSoup}">
																	<ul class="featured__item__pic__hover">
																	</ul>
																</div>
																<div class="featured__item__text">
																	<h6><a href="#">${bs.sideName}</a></h6>
																</div>
															</div>
														</div>
													 </c:forEach>
													</c:otherwise>
											   </c:choose>
							</section>
	
	</div>

    <%@ include file="main_bottom.jsp" %>

</body>
</html>