<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	th, td{
		border: 1px solid lightgray;
	}
</style>

</head>
<body style="margin:auto">

	<!-- 일회성 메세지 띄우기 -->
	<c:if test="${ !empty alertMsg }">
		<script>
			var msg = "${ alertMsg }";
			alert(msg);
		</script>
		<c:remove var="alertMsg" scope="session" />
	</c:if>

<%@ include file="../../common/sidevar.jsp" %>
<div class="header">
  <%@include file="../../common/header.jsp" %>
</div>

<div class="body" style="width:100%; height:auto; overflow:hidden">

  <div class="cbody body-content" style="width:80%; height:100%; display:inline-block; box-sizing: border-box; margin-left:200px;">
    <div id="layoutSidenav_content" align="center">
      <main>
          <div class="container-fluid px-4">
            
              <h3 style="margin-top:10px;" align="center";>공지 등록</h3>
              <div class="card mb-4"  style="width:100%;">
                  <div class="card-header">
                      <i class="fas fa-table me-1"></i>
                      	등록
                  </div>
                  <div class="card-body">
                  <form action="noticeContent" method="post">
                      <table>
                          <tr>
                          	 <th width="30%;">카테고리</th>
                          	 <td>
                          	 	<!--  
                          	 	 ${ notice.categoryNum }
                          	 	-->
                          	 	<c:if test="${ notice.categoryNum eq 1 }">
	                              	배송
                              	</c:if>
                              	<c:if test="${ notice.categoryNum eq 2 }">
                              		서비스
                              	</c:if>
                              	<c:if test="${ notice.categoryNum eq 3 }">
                              		결제
                              	</c:if>
                              	<c:if test="${ notice.categoryNum eq 4 }">
                              		기타
                              	</c:if>
                          	 </td>
                          	 <th width="10%;">작성일</th>
                          	 <td width="30%;"><span name="createDate">${ notice.createDate }</span></td>
                          </tr>
                          <tr>
                          	 <th>제목</th>
                          	 <td colspan="3">${ notice.noticeTitle }</td>
                          </tr>
                          <!--  
                           <tr>
                          	 <th>이미지</th>
                          	 <td colspan="3" align="left";>&nbsp;<input type="file"></td>
                          </tr>
                          -->
                          <tr>
                          	 <th>내용</th>
                          	 <td colspan="3">
                          	 	<textarea rows="9" cols="90" name="noticeContent" disabled>${ notice.noticeContent }</textarea>
                          	 </td>
                          </tr>
                          <tr>
                            <td colspan="4">
                              <!-- 
                              <button class="btn-success" type="submit" style="width:50%; float:left;">등록하기</button>
                               -->	
                              <button class="btn-warning" type="button" style="width:100%;" onclick="location.href='${ pageContext.request.contextPath }/noticeList'">뒤로가기</button>
                            </td>
                          </tr>
                      </table>
                  </form>
                      
                  </div>
              </div>
            
          </div>
      </main>
    </div>
  </div>

</div>

<%@ include file="../../common/footer.jsp"  %>


</body>
</html>