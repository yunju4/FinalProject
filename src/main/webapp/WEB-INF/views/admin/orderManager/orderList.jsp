<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wo9wo9-관리자페이지</title>
<style>
	tbody>tr:hover{
		color:lightgray;
		cursor:pointer;	
	}
	
	.cancel {
		color:#FFC308;
		font-weight:bold;
	}
	.cancel:hover {
		color:red;
		text-decoration:underline;
	}
	
	#complete{
		font-weight:bold;
	}
</style>
</head>
<body style="margin: auto">
<%@ include file="../../common/sidevar.jsp" %>
	<div class="header">
		<%@include file="../../common/header.jsp"%>
	</div>

	<div class="body" style="width: 100%; height: auto; overflow: hidden">
		<div class="cbody body-content" style="width: 80%; height: 100%; display: inline-block; box-sizing: border-box; margin-left:200px;">
			<div id="layoutSidenav_content" align="center">
				 <main>
          <div class="container-fluid px-4">
              <h3 style="margin-top:10px;" align="center";>주문 관리</h3>
              <div class="card mb-4"  style="width:100%;">
                  <div class="card-header">
                      <i class="fas fa-table me-1"></i>
                     	 주문 내역
                  </div>
                  <div class="card-body">
                      <table id="datatablesSimple">
                          <thead>
                              <tr>
                                <th>주문내역번호</th>
                                <th>주문정보</th>
                                <th>주문상세정보</th>
                                <th>주문가격</th>
                                <th>주문갯수</th>
                                <th>주문날짜</th>
                                <th>주문번호</th>
                                <th>주문자</th>
                                <th>주문상태</th>
                                <th>배송상태</th>
                              </tr>
                          </thead>
                          <tfoot>
                              <tr>
                                <th>주문내역번호</th>
                                <th>주문정보</th>
                                <th>주문상세정보</th>
                                <th>주문가격</th>
                                <th>주문갯수</th>
                                <th>주문날짜</th>
                                <th>주문번호</th>
                                <th>주문자</th>
                                <th>주문상태</th>
                                <th>배송상태</th>
                              </tr>
                          </tfoot>
                          <tbody>
                            
                            <c:choose>
                            	<c:when test="${ empty list }">
									<tr>
										<td colspan="5">조회된 주문이 없습니다.</td>
									</tr>
								</c:when>	
	                            <c:otherwise>
	                            	<c:forEach var="o" items="${ list }">
			                            <tr>
			                              <td>${ o.orderListNum }</td>
			                              <td>${ o.basketType }</td>
			                              <td>${ o.sideName }</td>
			                              <td>${ o.price }</td>
			                              <td>${ o.count }</td>
			                              <td>${ o.orderDate }</td>
			                              <td>${ o.orderNum }</td>
			                              <td>${ o.memberId }</td>
			                              <td>${ o.status }</td>
			                              <td>
			                              	<c:if test="${ o.parcel eq 1 }">
			                              		<c:if test="${ o.status eq 'Y' }" >
			                              			<a class="cancel" href="${ pageContext.request.contextPath }/deleteOrder?orderNum=${ o.orderNum }"><span class="cancel">주문취소하기</span></a>
			                              		</c:if>
			                              		<c:if test="${ o.status eq 'N' }" >
			                              			<span style="color:red">주문취소</span>
			                              		</c:if>
			                              		
			                              	</c:if>
			                              	<c:if test="${ o.parcel eq 2 }">
			                              		<span style="color:darkgray">배송중</span>
			                              	</c:if>
			                              	<c:if test="${ o.parcel eq 3 }">
			                              		<span style="color:#7BAE38" id="complete">배송완료</span>
			                              	</c:if>
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
			</div>
		</div>

	</div>

	<%@ include file="../../common/footer.jsp"%>

</body>
</html>