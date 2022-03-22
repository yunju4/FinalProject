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
    <title>1:1문의</title>

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
                    <div id="home" class="container tab-pane active"><br>
                        <h3><strong>1:1 문의하기</strong></h3>
                        <hr>
                        <br>
                        <table>
                            <td width="25%">
                                <h5><strong>[문의 내용]</strong></h5>
                            </td>
                            <td width="60%">
                                <h5>${question.QContent}</h5>
                            </td>
                            <td width="15%">
                                <h5>${question.QDate.substring(0, 10)}</h5>
                            </td>
                        </table>
                        <hr>
                        <div id="home2" class="container">
                        
                            <br>
                            <h3>
                            	[
	           						<c:choose>
									<c:when test="${question.categoryNum == 1 }">
										배송
									</c:when>
									<c:when test="${question.categoryNum == 2 }">
										서비스
									</c:when>
									<c:when test="${question.categoryNum == 3 }">
										결제
									</c:when>
									<c:when test="${question.categoryNum == 4 }">
										기타
									</c:when>
									
								</c:choose>] ${question.QTitle}</h5>
                            </h3>
                            
                            <br>
                            <div>
                            	${question.QContent}	            
                         
                            </div>
				             		
                        
                            <br>
                            <h3>[답변]</h3>
                            
                            <br>
                            <p>
				            	${question.AContent }
                            </p>
                
                        </div>
                        <hr>
                        <div align="center">
                            <button id="list" class="site-btn">목록</button>
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
    <script src="../resources/js/jquery.nice-select.min.js"></script>
    <script src="../resources/js/jquery-ui.min.js"></script>
    <script src="../resources/js/jquery.slicknav.js"></script>
    <script src="../resources/js/mixitup.min.js"></script>
    <script src="../resources/js/owl.carousel.min.js"></script>
    <script src="../resources/js/main.js"></script>

	<script>
	$(function(){
		$("#list").click(function(){
			
			location.href="${ pageContext.request.contextPath }/customercenter/onevsone.do?currentPage=1";
			
			
		});
	});
	</script>
</body>

</html>