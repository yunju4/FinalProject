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
		<div style="width:70%; margin:auto;">
						    <!-- Featured Section Begin -->
							<section class="featured spad">
								<div class="container">
									<div class="row">
										<div class="col-lg-12">
											<div class="section-title">
												<h2 style="text-align:center;"> package 도시락 BEST ></h2>
											</div>
											<div>

											</div>
											<div class="featured__controls">
												<ul style="float: right; margin-bottom:10px;">
													<li class="active" data-filter="*">모두</li>
													<li data-filter=".oranges">키토제닉</li>
													<li data-filter=".fresh-meat">채식주의</li>
													<li data-filter=".vegetables">지중해식</li>
													<li data-filter=".protein">단백질</li>
												</ul>
											</div>
										</div>
									</div>
									
									<div class="row featured__filter">

			                        <c:choose>
			                            <c:when test="${empty bestC}">
			                                
			                            </c:when>
			                            
			                            <c:otherwise>
			                             <c:forEach var="C" items="${bestC}">
			                            <div class="col-lg-3 col-md-4 col-sm-6 mix oranges">
			                                <div class="featured__item">
												<a href="${ pageContext.request.contextPath }/packagedo/meal1.do">
			                                    <div class="featured__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/${C.bestCImg}">
			                                        <ul class="featured__item__pic__hover">
			                                        </ul>
			                                    </div>
			                                    <div class="featured__item__text">
			                                        <h6><a>${C.packageName}</a></h6>
													<h6><a>${C.packagePrice}원</a></h6>
													
			                                    </div>
												</a>
			                                </div>
			                        </div>
			                             </c:forEach>
			                            </c:otherwise>
			                       </c:choose>

			                        <c:choose>
			                            <c:when test="${empty bestF}">
			                                
			                            </c:when>
			                            
			                            <c:otherwise>
			                             <c:forEach var="F" items="${bestF}">
			                            <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat">
			                                <div class="featured__item">
												<a href="${ pageContext.request.contextPath }/packagedo/meal2.do">
			                                    <div class="featured__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/${F.bestFImg}">
			                                        <ul class="featured__item__pic__hover">
			                                        </ul>
			                                    </div>
			                                    <div class="featured__item__text">
			                                        <h6><a>${F.packageName}</a></h6>
													<h6><a>${F.packagePrice}원</a></h6>
			                                    </div>
												</a>
			                                </div>
			                        </div>
			                             </c:forEach>
			                            </c:otherwise>
			                       </c:choose>

			                        <c:choose>
			                            <c:when test="${empty bestG}">
			                                
			                            </c:when>
			                            
			                            <c:otherwise>
			                             <c:forEach var="G" items="${bestG}">
			                            <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables">
			                                <div class="featured__item">
												<a href="${ pageContext.request.contextPath }/packagedo/meal3.do">
			                                    <div class="featured__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/${G.bestGImg}">
			                                        <ul class="featured__item__pic__hover">
			                                        </ul>
			                                    </div>
			                                    <div class="featured__item__text">
			                                        <h6><a>${G.packageName}</a></h6>
													<h6><a>${G.packagePrice}원</a></h6>
			                                    </div>
			                                </div>
			                        </div>
			                             </c:forEach>
			                            </c:otherwise>
			                       </c:choose>
			                       
			                       <c:choose>
			                            <c:when test="${empty bestP}">
			                                
			                            </c:when>
			                            
			                            <c:otherwise>
			                             <c:forEach var="P" items="${bestP}">
			                            <div class="col-lg-3 col-md-4 col-sm-6 mix protein">
			                                <div class="featured__item">
												<a href="${ pageContext.request.contextPath }/packagedo/meal4.do">
			                                    <div class="featured__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/${P.bestPImg}">
			                                        <ul class="featured__item__pic__hover">
			                                        </ul>
			                                    </div>
			                                    <div class="featured__item__text">
			                                        <h6><a>${P.packageName}</a></h6>
													<h6><a>${P.packagePrice}원</a></h6>
			                                    </div>
												</a>
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