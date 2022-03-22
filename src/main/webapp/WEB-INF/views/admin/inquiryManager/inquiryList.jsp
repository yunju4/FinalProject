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
	
	.button{
		width: 100px;
		padding: 5px 10px;
		border: 2px solid lightgray;
	}
	
	#answerButton{
		color: #7BAE38;
		font-weight: bold;
	}
	
	#answerButton:hover{
		color:lightgray;
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
              <h3 style="margin-top:10px;" align="center";>문의사항 관리</h3>
              <div class="card mb-4"  style="width:100%;">
                  <div class="card-header">
                      <i class="fas fa-table me-1"></i>
                     	 문의 내역
                  </div>
                  <div class="card-body">
                      <table id="datatablesSimple">
                          <thead>
                              <tr>
                                <th>NO</th>
                                <th>카테고리</th>
                                <th>문의내용</th>
                                <th>답변여부</th>
                                <th>답변일자</th>
                                <th>답변</th>
                              </tr>
                          </thead>
                          <tfoot>
                              <tr>
                                <th>NO</th>
                                <th>카테고리</th>
                                <th>문의내용</th>
                                <th>답변여부</th>
                                <th>답변일자</th>
                                <th>답변</th>
                              </tr>
                          </tfoot>
                          <tbody>
                            <c:choose>
                            	<c:when test="${ empty list }">
									<tr>
										<td colspan="6">조회된 공지사항이 없습니다.</td>
									</tr>
								</c:when>	
	                            <c:otherwise>
	                            	<c:forEach var="i" items="${ list }">
			                            <tr>
			                              <td>${ i.QNum }</td>
			                              <!-- 
			                              <td>${ i.categoryNum }</td>
			                               -->
			                              <td>
			                              	<c:if test="${ i.categoryNum eq 1 }">
			                              		상품
			                              	</c:if>
			                              	<c:if test="${ i.categoryNum eq 2 }">
			                              		서비스
			                              	</c:if>
			                              	<c:if test="${ i.categoryNum eq 3 }">
			                              		배송
			                              	</c:if>
			                              	<c:if test="${ i.categoryNum eq 4 }">
			                              		기타
			                              	</c:if>
			                              </td>
			                              <td>${ i.QTitle }</td>
			                              <td>${ i.status }</td>
			                              <td>${ i.ADate }</td>
			                              <td>
			                              	<c:if test="${ i.status eq 'N'}">
			                              		<a href="${ pageContext.request.contextPath }/inquiryAnswer?qNum=${ i.QNum }" id="answerButton">답변하기</a>
			                              	</c:if>
			                              	<c:if test="${ i.status eq 'Y'}">
			                              		<span style="font-weight:bold">답변완료</span>
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
	
	    <!-- 공지사항 상세보기 스크립트 -->
    <!--  
    <script>
		$(function() {
			$("table tr").click(function() {
				
				var ino = $(this).children().eq(0).text();
				
				console.log(ino);
				
				location.href="${ pageContext.request.contextPath }/inquiryAnswer?qNum=" + ino;
				
				// Context Root == Context Path == url 주소의 최상위(메인) 페이지 주소
				// 기존 스크립틀릿 방식 : request.getContextPath()
				// EL 방식 : pageContext.request.contextPath
				// JSTL 방식 : c:url 태그의 value 속성에 값을 지정해서 쓰면 됨 (value="/")
				// => 단, JSTL 같은 경우는 스크립트 태그 안에서 사용 불가
				
			});
		});
	</script> 
	-->
	
	
	<%@ include file="../../common/footer.jsp"%>
	
</body>
</html>