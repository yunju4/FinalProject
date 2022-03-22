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
        background: skyblue;
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
                    <body>
                        <main>
                            <div class="section-title product__discount__title" style="margin-bottom: 20px; text-align: center;">
                                <h2>Order Cancel List</h2>
                            </div>
                            <div class="container-fluid px-4">
                                <div class="card mb-4">
                                    <div class="card-body">
                                        <table id="datatablesSimple">
                                            <thead>
                                                <tr>
                                                    <th>종류</th>
                                                    <th>상품명</th>
                                                    <th>총가격</th>
                                                    <th style="width: 20%;">수량</th>
                                                    <th>취소일</th>
                                                    <th>상태</th>
                                                </tr>
                                            </thead>
                                            <tfoot>
                                                <tr>
                                                    <th>종류</th>
                                                    <th>상품명</th>
                                                    <th>총가격</th>
                                                    <th style="width: 20%;">수량</th>
                                                    <th>취소일</th>
                                                    <th>상태</th>
                                                </tr>
                                            </tfoot>
                                            <tbody>
                                            	<c:choose>
													<c:when test="${ empty list }">
														<td colspan="6" align="center">조회된 취소 내역이 없습니다.</td>
													</c:when>
													<c:otherwise>
														<c:forEach var="o" items="${ list }">
															<input name="orderNum" type="hidden" value="${ o.orderNum }" />
															<tr>
																<td>${ o.basketType }</td>
																<td>${ o.sideName }</td>
																<td>${ o.price }원</td>
																<td>${ o.count }개</td>
																<td>${ o.orderDate }</td>
																<td style="text-align: center;">
										                            <div style="color: gainsboro;"><strong>취소완료</strong></div>
																</td>
															</tr>
														</c:forEach>
													</c:otherwise>
												</c:choose>
                                            </tbody>
                                        </table>
									</div>
                                </div>
                            </div>
                        </main>
                    </body>
                </div>
            </div>
        </div>
    </section>
<%@ include file="../common/main_bottom.jsp" %>
</body>
</html>