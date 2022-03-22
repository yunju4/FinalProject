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
		
		color: #C6C3C6;
		cursor:pointer;	
	}
	
	.button{
		width: 100px;
		padding: 5px 10px;
		border: 2px solid lightgray;
	}
	
	#buttonCancel{
		color: #C6C3C6;
	}
	
	#buttonCancel:hover{
		color: gray;
	}
	
	#buttonAttack{
		color: #7BAE38;
		font-weight: bold;
	}
	
	#buttonAttack:hover{
		color: lightgray;
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
              <h3 style="margin-top:10px;" align="center";>회원 관리</h3>
              <div class="card mb-4"  style="width:100%;">
                  <div class="card-header">
                      <i class="fas fa-table me-1"></i>
                     	 회원 내역
                  </div>
                  <div class="card-body">
                      <table id="datatablesSimple">
                          <thead>
                              <tr>
                                <th>NO</th>
                                <th>아이디</th>
                                <th>회원명</th>
                                <th>전화번호</th>
                                <th>이메일</th>
                                <th>상태</th>
                                <th>회원 제재</th>
                              </tr>
                          </thead>
                          <tfoot>
                              <tr>
                                <th>NO</th>
                                <th>아이디</th>
                                <th>회원명</th>
                                <th>전화번호</th>
                                <th>이메일</th>
                                <th>상태</th>
                                <th>회원 제재</th>
                              </tr>
                          </tfoot>
                          <tbody>
                            <c:choose>
                            	<c:when test="${ empty list }">
									<tr>
										<td colspan="7">조회된 회원이 없습니다.</td>
									</tr>
								</c:when>	
	                            <c:otherwise>
	                            	<c:forEach var="m" items="${ list }">
			                            <tr>
			                              <td>${ m.memberNum }</td>
			                              <td>${ m.memberId }</td>
			                              <td>${ m.memberName }</td>
			                              <td>${ m.phone }</td>
			                              <td>${ m.email }</td>
			                              <td>${ m.status }</td>
			                              <!--  
			                              <td><button onClick="this.disabled=true" return= "false" class="button">제재</button></td>
			                              -->
			                              <!--  
			                                onclick="this.disabled=true" return= "false"
			                              --> 
			                              <td>
			                              	 <!--  
			                              	 <c:if test="${ m.status eq 'N'}">
			                              		<button disabled="true" class="button" style="font-size:18px">제재취소</button>
			                              	</c:if>
			                              	<c:if test="${ m.status eq 'Y'}">
			                              		<button class="button" style="font-size:18px">제재</button>
			                              	</c:if>	
			                              	-->
			                              	<c:if test="${ m.status eq 'N'}">
			                              		<a href ="${ pageContext.request.contextPath }/memberCrime?memberNum=${ m.memberNum }" id="buttonCancel">제재취소</a>
			                              	</c:if>
			                              	<c:if test="${ m.status eq 'Y'}">
			                              		<a href ="${ pageContext.request.contextPath }/memberCrimeRe?memberNum=${ m.memberNum }" id="buttonAttack">제재</a>
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