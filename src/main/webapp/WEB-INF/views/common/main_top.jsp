<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Css Styles -->
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/style.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/main-top.css">
    
    <!-- 마이페이지 링크 -->
    <!-- Bootstrap core CSS -->
    <link href="${ pageContext.request.contextPath }/resources/assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${ pageContext.request.contextPath }/resources/css/sidebars.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="${ pageContext.request.contextPath }/resources/css/styles.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
        .header__top__right a:hover{
            color: green;
        }

        .header__top__right a{
            text-decoration: none;
        }
        .inp_search {
    width: 242px;
    height: 36px;
    padding: 0 60px 0 14px;
    border: 1px solid gray;
    border-radius: 18px;
    font-weight: 400;
    font-size: 12ox;
    color: #666;
    line-height: 16px;
    outline: none;
}
    </style>
</head>

<body>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6"></div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <c:choose>
                           		<c:when test="${ !empty loginUser }"><!-- 로그인 되었을때 -->
                           			<div class="header__top__right__social">
		                                <a href="${ pageContext.request.contextPath }/customercenter/notice.do?currentPage=1">고객센터</a>
		                                <a href="${ pageContext.request.contextPath }/mypage/main.wo">마이페이지</a>
		                            </div>
                           		</c:when>
                           		<c:otherwise><!-- 로그인이 안되었다면 -->
                           			<div class="header__top__right__social">
		                                <a href="${ pageContext.request.contextPath }/customercenter/notice.do?currentPage=1">고객센터</a>
		                                <a href="${pageContext.request.contextPath}/member/join.do">회원가입</a>
		                            </div>
                           		</c:otherwise>
                            </c:choose>
                            <div class="header__top__right__auth">
                                <c:choose>
                                		<c:when test="${ !empty loginUser }"><!-- 로그인 되었을때 -->
                                			<a style="display: inline-block;">${ loginUser.memberName } 님</a>
                                			<a style="display: inline-block;" href="${pageContext.request.contextPath}/member/logout.do">로그아웃</a>
                                		</c:when>
                                		<c:otherwise><!-- 로그인이 안되었다면 -->
                                			<a href="${pageContext.request.contextPath}/member/login.do">Login</a>
                                		</c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container" style="text-align: center;">
            <div class="header__logo">
                <a href="${pageContext.request.contextPath}/main/main.do"><img src="../resources/logo.png" alt=""></a>
            </div>

                <div>
                    <nav class="header__menu">
                        <ul>
                            <li>
                                <i class="fa fa-bars"></i>
                                <span class="categoryName" style="color: black;"><b>카테고리</b></span>

                               <ul class="header__menu__dropdown" style="border: 1px solid lightgray;">
                                    <li><a href="${ pageContext.request.contextPath }/packagedo/category.do" class="categoryHover categoryBold" style="color: black; text-decoration: underline;"><b>패키지 도시락</b></a></li>
                                    <li><a href="${ pageContext.request.contextPath }/packagedo/meal1.do" class="categoryHover" style="color: black;">키토제닉 식단</a></li>
                                    <li><a href="${ pageContext.request.contextPath }/packagedo/meal2.do" class="categoryHover" style="color: black;">채식주의 식단</a></li>
                                    <li><a href="${ pageContext.request.contextPath }/packagedo/meal3.do" class="categoryHover" style="color: black;">지중해식 식단</a></li>
                                    <li><a href="${ pageContext.request.contextPath }/packagedo/meal4.do" class="categoryHover" style="color: black;">단백질 식단</a></li>
                                    <li><a href="${ pageContext.request.contextPath }/selfdo/meal.do" class="categoryHover categoryBold" style="color: black; text-decoration: underline;"><b>셀프 도시락</b></a></li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/main/bestProductP.mi" class="a">package베스트</a></li>
                            <li><a href="${pageContext.request.contextPath}/main/bestProduct.mi" class="a">self베스트</a></li>
                            <li><a href="${ pageContext.request.contextPath }/customercenter/event.do" class="a">이벤트</a></li>
                            <li><a href="${ pageContext.request.contextPath }/packagedo/category.do" class="a">패키지식단</a></li>
                            <li>
								<form id="search_form" class="form-inline" action="${pageContext.request.contextPath}/main/sideSearch.mi" mathod="get">
                                    <input class="form-control mr-sm-2 inp_search" id="keyword" name="keyword" type="text" placeholder="Search">
                                    <button type="submit" style="background: white; border: none;"><img src="../resources/img/search.png" alt="" style="width: 30px; height: 30px;"></button>
                                </form>

                            </li>
                            <li>
                                <div class="header__top__right__auth">
                                    <a href="${ pageContext.request.contextPath }/basket/list"><i class="fa fa-shopping-bag"></i></a>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
	<!-- 일회성 메세지 띄우기 -->
	<c:if test="${ !empty alertMsg }">
		<script type="text/javascript">
			var msg = "${ alertMsg }";
			alert(msg);
		</script>
		<c:remove var="alertMsg" scope="session"/>
	</c:if>
    </header>
    <!-- Header Section End -->

    </body>
    <script src="../resources/assets/dist/js/bootstrap.bundle.min.js.map"></script>
    <script src="../resources/js/jquery-3.3.1.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/jquery-ui.min.js"></script>
    <script src="../resources/js/jquery.slicknav.js"></script>
    <script src="../resources/js/mixitup.min.js"></script>
    <script src="../resources/js/owl.carousel.min.js"></script>
    <script src="../resources/js/main.js"></script>
</html>