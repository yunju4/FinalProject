<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Tables - SB Admin</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<!-- <link href="/resources/css/styles.css" rel="stylesheet" /> -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 온라인 방식 -->

<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}

.col-sm-6 {
	text-align: center;
}

.nav-link {
	color: black;
}

.header a:hover {
	text-decoration: underline;
	color: black;
}

.card {
	display: inline-block;
	margin: 10px;
	box-sizing: border-box;
}
</style>

<style>
.login {
	width: 277px;
	margin: auto;
}
</style>

<style>
div {
	box-sizing: border-box;
}

.cbody {
	float: left;
}

.ex:hover {
	color: black;
}

.gnav li {
	border-top: 1px solid rgb(127, 173, 57);
	border-bottom: 1px solid rgb(127, 173, 57);
	margin: 20px;
}

.mbody {
	width: 50%;
	height: 100%;
	padding-top: 50px;
	float: left;
}

table {
	width: 80%;
	text-align: center;
}

.card-header {
	background: rgb(127, 173, 57);
	color: white;
}

.nav a:hover {
	background: rgb(127, 173, 57);
	color: white;
	font-weight: bord;
}

.btn-lg {
	margin: auto;
	width: 100%;
	height: 100%;
	color: white;
	background: rgb(127, 173, 57);
}

/*관리자 메인 셀프, 패키지 관리 버튼 디자인*/
.manage {
	text-align: center;
	width: 70%;
	background: rgb(127, 173, 57);
}

.manage:hover {
	background: rgb(161, 189, 228); /* 색 찾아보기~~~~~ */
}

#layoutSidenav_content {
	padding: 50px;
}

.container-fluid {
	border: 1px solid rgb(127, 173, 57);
	border-radius: 8px;
}

.gnav a {
	font-size: 30px;
	font-weight: 500;
}

.gnav a:hover {
	font-size: 35px;
	font-weight: 600;
}
/*관리자 메인 셀프, 패키지 관리 버튼 디자인 끝*/

/*테이블 디자인*/
.ttt {
	height: 50px;
}
/*테이블 디자인*/

/*버튼 디자인*/
button {
	background: rgb(127, 173, 57);
	color: #fff;
	border: none;
	position: relative;
	height: 60px;
	font-size: 1.6em;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
}
button:hover {
	background: #fff;
	color: rgb(127, 173, 57);
}
button:before, button:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: rgb(127, 173, 57);
	transition: 400ms ease all;
}
button:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}
button:hover:before, button:hover:after {
	width: 100%;
	transition: 800ms ease all;
}
.adesign {
	background: rgb(127, 173, 57);
	color: #fff;
	border: none;
	position: relative;
	height: 60px;
	font-size: 1.6em;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
}
.adesign:hover {
	background: #fff;
	color: rgb(127, 173, 57);
}
.adesign:before, .adesign:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: rgb(127, 173, 57);
	transition: 400ms ease all;
}
.adesign:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}
.adesign:hover:before, .adesign:hover:after {
	width: 100%;
	transition: 800ms ease all;
}
/*버튼 디자인 끝*/

/*삭제 버튼 디자인*/
.del {
	background: red;
	color: #fff;
	border: none;
	position: relative;
	height: 60px;
	font-size: 1.6em;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
}
.del:hover {
	background: #fff;
	color: red;
}
.del:before, .del:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: red;
	transition: 400ms ease all;
}
.del:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}
.del:hover:before, .del:hover:after {
	width: 100%;
	transition: 800ms ease all;
}

/*수정 버튼 디자인*/
.upd {
	background: rgb(255,193,7);
	color: #fff;
	border: none;
	position: relative;
	height: 60px;
	font-size: 1.6em;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
}
.upd:hover {
	background: #fff;
	color: rgb(255,193,7);
}
.upd:before, .upd:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: rgb(255,193,7);
	transition: 400ms ease all;
}
.upd:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}
.upd:hover:before, .upd:hover:after {
	width: 100%;
	transition: 800ms ease all;
}
/*수정 버튼 디자인 끝*/

/*활성비활성 버튼 디자인*/
.act {
	background: rgb(127, 173, 57);
	color: #fff;
	border: none;
	position: relative;
	height: 60px;
	font-size: 1.6em;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
}
.act:hover {
	background: #fff;
	color: rgb(127, 173, 57);
}
.act:before, .act:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: rgb(127, 173, 57);
	transition: 400ms ease all;
}
.act:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}
.act:hover:before, .act:hover:after {
	width: 100%;
	transition: 800ms ease all;
}
/*활성비활성 버튼 디자인 끝*/
</style>
</head>
<body>
	<c:if test="${ !empty alertMsg }">
		<script>
			var msg = "${ alertMsg }";
			alert(msg);
		</script>
		<c:remove var="alertMsg" scope="session"/>
	</c:if>

	<div class="header">
		<!-- 
	  <nav class="navbar navbar-expand-sm bg-light justify-content-end" style="font-size:12px;">
	    <ul class="navbar-nav">
	      <li class="nav-item">
	        <a class="nav-link ex" href="main.do">관리자님 환영합니다.</a>
	      </li> 
	      <li class="nav-item">
	        <a class="nav-link" href="#">로그아웃</a>
	      </li>
	    </ul>
	  </nav>
	-->
		<div style="height:70px; width:100%; background:rgb(127, 173, 57)">
			
		</div>
		<div class="header-log">
			<img src="${pageContext.request.contextPath}/resources/common/logo.png"
				style="width: 300px; height: 200px; margin-left:46%;">
		</div>
	</div>

</body>
</html>