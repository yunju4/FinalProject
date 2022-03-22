<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    @font-face {
        font-family: 'BMDOHYEON';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }
</style>
</head>
<body>
 <div class="col-md-2">
    <div class="blog__sidebar">
        <div class="blog__sidebar__item">
            <h4>Information</h4>
            <ul class="naviname">
                <li><a href="${ pageContext.request.contextPath }/mypage/mypageCouponList.wo" style="font-size: 14px; font-family: 'BMDOHYEON';">쿠폰 조회</a></li>
                <li><a href="${ pageContext.request.contextPath }/mypage/mypageReviewList.wo" style="font-size: 14px; font-family: 'BMDOHYEON';">리뷰 조회</a></li>
                <li><a href="${ pageContext.request.contextPath }/mypage/mypageSuccess.wo" style="font-size: 14px; font-family: 'BMDOHYEON';">회원정보 수정</a></li>
                <li><a href="${ pageContext.request.contextPath }/mypage/mypageWithdrawal.wo" style="font-size: 14px; font-family: 'BMDOHYEON';" style="font-size: 14px; font-family: 'BMDOHYEON';">회원 탈퇴</a></li>
            </ul>
            <h4>Order</h4>
            <ul class="naviname">
                <li><a href="${ pageContext.request.contextPath }/mypage/mypageOrderList.wo" style="font-size: 14px; font-family: 'BMDOHYEON';">주문 조회</a></li>
                <li><a href="${ pageContext.request.contextPath }/mypage/mypageCancelList.wo" style="font-size: 14px; font-family: 'BMDOHYEON';">주문 취소 조회</a></li>
            </ul>
            <h4>Inquiry</h4>
            <ul class="naviname">
                <li><a href="${ pageContext.request.contextPath }/mypage/mypageInquiry.wo" style="font-size: 14px; font-family: 'BMDOHYEON';">나의 문의 내역</a></li>
            </ul>
        </div>
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
</body>
</html>