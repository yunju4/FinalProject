<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	 <%@ include file="../common/main_top.jsp" %>
 <style>
    .carousel-inner img {
        width: 100%;
        height: 100%;
    }

    .inp_search{
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

      ul a {
          vertical-align: middle;
      }

    .round {
        width: 100%;
        border-radius: 15px;
        border: 1px solid lightgray;
        padding: 5px 5px 5px 25px;
        position: absolute;
        top: 0;
        left: 0;
        z-index: 5;
    }

    .corner {
        position: absolute;
        top: 3px;
        left: 5px;
        height: 20px;
        width: 20px;
        z-index: 10;
        border-radius: 10px;
        border: none;
        background-image: url('search.png'); /* Set the bg image here. with "no-repeat" */
    }

    .search {
        position: relative;
        width: 190px;
        height: 30px;
    }
    .section-title h2:after {
        background: orange;
    }
    .orderbtn {
    	all:unset;
    }

</style>
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="${ pageContext.request.contextPath }/resources/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>MyPage</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div id="layoutSidenav">
				<%@ include file="../common/mypage_nav.jsp" %>
					<div class="col-lg-12 col-md-10">
	                    <div class="checkout__form">
	                        <div class="container">
	                            <div class="section-title product__discount__title" style="margin-bottom: 20px; text-align: center;">
	                                <h2>My Coupon</h2>
	                            </div>
	                            <div class="container mt-3">
	                                <br>
	                                <!-- Nav tabs -->
	                                <ul class="nav nav-tabs">
	                                  	<li class="nav-item">
	                                    	<a class="nav-link active" data-toggle="tab" href="#home" style="color: orange; font-family: 'BMDOHYEON';">사용가능쿠폰</a>
	                                  	</li>
	                                  	<li class="nav-item">
	                                    	<a class="nav-link" data-toggle="tab" href="#menu1" style="color: yellowgreen; font-family: 'BMDOHYEON';">사용완료쿠폰</a>
	                                  	</li>
	                                </ul>
	                              
	                                <!-- Tab panes -->
	                                <div class="tab-content">
	                                  	<div id="home" class="container tab-pane active"><br>
	                                    	<table class="table" style="text-align: center;">
	                                        	<thead style="background-color: #8ecf2b; color: white;">
			                                          <tr>
			                                              <th>쿠폰번호</th>
			                                              <th>쿠폰명</th>
			                                              <th>혜택</th>
			                                              <th>사용여부</th>
			                                          </tr>
		                                        </thead>
		                                        <tbody>
		                                        	<tr>
				                                        <c:choose>
															<c:when test="${ empty list }">
																<td colspan="4" align="center">사용 가능한 쿠폰이 없습니다.</td>
															</c:when>
															<c:otherwise>
																<c:forEach var="c" items="${ list }">
																	<tr>
																		<td>${ c.coupon }</td>
																		<td>${ c.couponName }</td>
																		<td>${ c.discount }% 할인</td>
																		<td><div style="color: orange;"><strong>사용가능</strong></div></td>
																	</tr>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													</tr>
		                                        </tbody>
	                                  		</table>
	                                  	</div>

										<div id="menu1" class="container tab-pane fade"><br>
		                                    <table class="table" style="text-align: center;">
		                                        <thead style="background-color: #8ecf2b; color: white;">
		                                          <tr>
		                                              <th>쿠폰번호</th>
		                                              <th>쿠폰명</th>
		                                              <th>혜택</th>
		                                              <th>사용여부</th>
		                                          </tr>
		                                        </thead>
		                                        <tbody>
		                                        <c:choose>
													<c:when test="${ empty list2 }">
														<td colspan="4" align="center">아직 사용하신 쿠폰이 없습니다.</td>
													</c:when>
													<c:otherwise>
														<c:forEach var="c" items="${ list2 }">
																<tr>
																	<td>${ c.coupon }</td>
																	<td>${ c.couponName }</td>
																	<td>${ c.discount }% 세일</td>
																	<td><div style="color: gainsboro;"><strong>사용완료</strong></div></td>
																</tr>
														</c:forEach>
													</c:otherwise>
												</c:choose>
		                                    </tbody>
		                                </table>
	                            	</div>
	                        	</div>
	                    	</div>
	                	</div>
	            	</div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->
    
<script>
function deleteClick(orderNum){
	location.href = "${ pageContext.request.contextPath }/mypage/mypageOrderCancel.wo?orderNum=" + orderNum;
}
</script>
<%@ include file="../common/main_bottom.jsp" %>
</body>
</html>