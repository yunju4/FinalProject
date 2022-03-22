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
    <title>1:1문의 등록</title>

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
                        <h2>고객 센터</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5">
                    <div class="blog__sidebar">
                        <br><br>
                        <div class="blog__sidebar__item">
                            <h4>Categories</h4>
                            <ul>
                                <li><a href="notice.do?currentPage=1">공지사항</a></li>
                                <li><a href="onevsone.do?currentPage=1">1:1 문의</a></li>
                                <li><a href="faq.do">자주하는 질문</a></li>
                            </ul>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>고객센터</h4>
                            <div class="blog__sidebar__recent">
                                
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="../resources/img/blog/sidebar/sr-1.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h5> <strong>1800-1111</strong></h5>
                                    <span>평일, 토요일</span><br>
                                    <span>7:00 ~ 18:00</span><br>
                                    <span>공휴일 7:00 ~ 13:00</span><br>
                                    <span> (일요일 휴무)</span><br>
                                </div>
                               
                                
                            </div>
                        </div>
                       
                    </div>
                </div>
                <div class="col-lg-8 col-md-7">
                    <div class="container tab-pane active"><br>
                        <h3><strong>1:1 문의</strong></h3>
                        <hr>
                        <br>
                        <table>
                            <td width="15%">&nbsp;&nbsp;&nbsp;전체 ${ listCount }개</td>
                            <td width="30%">
                            
                            <td width="55%">
                                
                                <form class="form-inline" action="onesearch.do">
                                    <select name="type">
                                        <option value="Q_TITLE">제목</option>
                                        <option value="MEMBER_ID">작성자</option>
                                    </select>
                                    <input type="hidden" name="currentPage" value="1">
                                    <input class="form-control mr-sm-2" type="text" name="keyword" placeholder="Search">
                                    <button class="btn btn-success" type="submit">Search</button>
                                </form>
                                
                      	       </td>
                          </table>
                          <br>
                          <div class="container">
                      
                                <table id="menu1" class="table table-hover" >
                                     <thead>
                                         <tr width="100%">
                                          <th width="8%">No.</th>
                                          <th width="15%">카테고리</th>
                                          <th width="34%">제목</th>
                                          <th width="13%">작성자</th>
                                          <th width="17.5%">작성일</th>
                                          <th width="12.5%">조회수</th>	
                                      </tr>
                                  </thead>
                                  <tbody>
                                        <c:choose>
											<c:when test="${ empty list }">
												<tr>
													<td colspan="5">조회 결과가 없습니다.</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach var="n" items="${ list }">
													<tr>
														<td>${ n.QNum }</td>
														<td>
															<c:choose>
																<c:when test="${n.categoryNum == 1 }">
																	셀프
																</c:when>
																<c:when test="${n.categoryNum == 2 }">
																	패키지
																</c:when>
																<c:when test="${n.categoryNum == 3 }">
																	서비스
																</c:when>
																<c:when test="${n.categoryNum == 4 }">
																	기타
																</c:when>
																
															</c:choose>
														</td>
														<td>
															${ n.QTitle }
															<c:choose>
																<c:when test="${ n.AContent == null}">
																	&nbsp;&nbsp;[대기중]									
																</c:when>
																<c:otherwise>
																	&nbsp;&nbsp;[답변완료]	
																</c:otherwise>
															</c:choose>
															
														</td>
														<td>${ n.memberId }</td>
														<td>${ n.QDate.substring(0, 10) }</td>
														<td>${ n.count }</td>
													</tr>
												</c:forEach>
											</c:otherwise>
										</c:choose>
                                     </tbody>
                                     
                              </table>
                              <br>
                              <table width="100%">
                              <td width="13%"></td>
                              <td width="74%">
                              	 <div align="center" class="paging-area">
			        				<c:if test="${currentPage != 1}">
										<button class = "btn btn-ligh" onclick="location.href='${ pageContext.request.contextPath }/customercenter/onevsone.do?currentPage=${ currentPage - 1 }'">&lt;</button>									
									</c:if>
							        <c:forEach var="i" begin="${ startPage }" end="${ endPage }">
							        	<c:choose>
											<c:when test="${ i != currentPage }">
												<button class = "btn btn-ligh" onclick="location.href='${ pageContext.request.contextPath }/customercenter/onevsone.do?currentPage=${ i }'">${ i }</button>									
											</c:when>
											<c:otherwise>
												<button id="disable"class = "btn btn-ligh" disabled>${ i }</button>	
											</c:otherwise>
										</c:choose>
										
									</c:forEach>
									<c:if test="${currentPage != maxPage}">
										<button class = "btn btn-ligh" onclick="location.href='${ pageContext.request.contextPath }/customercenter/onevsone.do?currentPage=${ currentPage + 1 }'">&gt;</button>									
									</c:if>
							    </div>
                              </td>
                              <td width="13%">
                                  <c:if test="${ loginUser != null }">
                                      <a class="btn btn-success" href="write.do">글작성</a>
                                  </c:if>
                              </td>
                          </table>
                          </div>
                      </div>  
                     
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <%@ include file="../common/main_bottom.jsp" %>
    </footer>
    <!-- Footer Section End -->
   
	<script src="../resources/js/jquery-3.3.1.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>

    <script src="../resources/js/jquery-ui.min.js"></script>
    <script src="../resources/js/jquery.slicknav.js"></script>
    <script src="../resources/js/mixitup.min.js"></script>
    <script src="../resources/js/owl.carousel.min.js"></script>
    <script src="../resources/js/main.js"></script>
	<script>
		$(function(){
			$("#menu1 tbody tr").click(function(){
				
				var nno = $(this).children().eq(0).text();
				location.href="${ pageContext.request.contextPath }/customercenter/onedetail.do?noticeNo=" + nno;
				
			});
		});	
	</script>

</body>

</html>