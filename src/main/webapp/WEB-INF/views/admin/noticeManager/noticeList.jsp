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
	
	#button1{
		background: #2BA542;
		color: white;
		border: 0;
		width: 150px;
		height: 40px;
		padding: 5px 10px;
	}
	
	.btn-warning{
		width: 100px;
		padding: 5px 10px;
		border: 2px solid lightgray;
		height: 40px;
	}
	
	.button3{
		color: white;
		width: 100px;
		padding: 5px 10px;
		border: 0;
		background: #11345A;
		height: 40px;
	}
	
	#delbutton{
		color: #7BAE38;
		font-weight: bold;
	}
	
	#delbutton:hover{
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
              <h3 style="margin-top:10px;" align="center";>공지사항 관리</h3>
              <div class="card mb-4"  style="width:100%;">
                  <div class="card-header">
                      <i class="fas fa-table me-1"></i>
                     	 공지사항 내역
                  </div>
                  <div class="card-body">
                      <table id="datatablesSimple">
                          <thead>
                              <tr>
                                <th>NO</th>
                                <th>카테고리</th>
                                <th>제목</th>
                                <th>작성일</th>
                                <th>조회수</th>
                                <th>삭제</th>
                              </tr>
                          </thead>
                          <tfoot>
                              <tr>
                                <th>NO</th>
                                <th>카테고리</th>
                                <th>제목</th>
                                <th>작성일</th>
                                <th>조회수</th>
                                <th>삭제</th>
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
	                            	<c:forEach var="n" items="${ list }">
			                            <tr>
			                              <td>${ n.noticeNo }</td>
			                              <td>${ n.noticeName }</td>
			                              <td>${ n.noticeTitle }</td>
			                              <td>${ n.createDate }</td>
			                              <td>${ n.count }</td>
			                              <td><a href="${ pageContext.request.contextPath }/noticeDelete?noticeNo=${ n.noticeNo }" id="delbutton">삭제하기</a></td>
			                            </tr>
		                            </c:forEach>
	                            </c:otherwise>
                            </c:choose>
                          </tbody>
                      </table>
                      <button onclick="location.href='/wo9wo9/noticeEnroll'" id="button1" style="font-size:18px">공지사항 등록</button>
                  </div>

                  
              </div>
          </div>
          
      </main>
			</div>
		</div>

	</div>

	
	<!-- 공지사항 삭제 스크립트 -->
	<script type="text/javascript">
	function delchk(nno){
	    if(confirm("삭제하시겠습니까?")){
	        location.href = "${ pageContext.request.contextPath }/noticeDelete?noticeNo=" + nno;
	        return true;
	    } else {
	        return false;
	    }
	}
    </script>
    
    
    <!-- 공지사항 상세보기 스크립트 -->
    <script>
		$(function() {
			$("table tr").click(function() {
				
				var nno = $(this).children().eq(0).text();
				
				console.log(nno);
				
				location.href="${ pageContext.request.contextPath }/noticeContent?noticeNo=" + nno;
				
				// Context Root == Context Path == url 주소의 최상위(메인) 페이지 주소
				// 기존 스크립틀릿 방식 : request.getContextPath()
				// EL 방식 : pageContext.request.contextPath
				// JSTL 방식 : c:url 태그의 value 속성에 값을 지정해서 쓰면 됨 (value="/")
				// => 단, JSTL 같은 경우는 스크립트 태그 안에서 사용 불가
				
			});
		});
	</script>  
    
<%@ include file="../../common/footer.jsp"%>   
</body>
</html>