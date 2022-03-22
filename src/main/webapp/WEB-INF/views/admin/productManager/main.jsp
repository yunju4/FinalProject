<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</head>
<body style="margin: auto">

	<%@ include file="../../common/sidevar.jsp"%>

	<div class="header">
		<%@include file="../../common/header.jsp"%>
	</div>

	<div class="body" style="width: 100%; overflow: hidden">
		<!-- 기존에 만든  nav.jsp 생략 -->

		<div class="cbody body-content"
			style="width: 80%; height: 100%; display: inline-block; box-sizing: border-box; padding-bottom: 50px; margin-left: 13%; margin-bottom: 50px; border: 1px solid rgb(127, 173, 57); border-radius: 10px;">
			<div class="cbody mbody self" align="center">
				<h1 align="center" style="margin: 10px;">셀프 도시락 상품 관리</h1>
				<br> <a class="btn manage"
					href="${pageContext.request.contextPath}/admin/selfList.do"> <img
					src="${pageContext.request.contextPath}/resources/admin/self.png"
					width="70%" height="80%"> <br>
				</a>
			</div>
			<div class="cbody mbody pacakge" align="center">
				<h1 align="center" style="margin: 10px">패키지 상품 관리</h1>
				<br> <a class="btn manage"
					href="${pageContext.request.contextPath}/admin/packageList.ad">
					<img
					src="${pageContext.request.contextPath}/resources/admin/package.png"
					width="70%" height="80%"> <br>
				</a>
			</div>
		</div>

		


	</div>

	<%@ include file="../../common/footer.jsp"%>


</body>
</html>