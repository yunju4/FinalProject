<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	th, td{
		border: 1px solid lightgray;
		cursor:pointer;	
	}
</style>

</head>
<body style="margin:auto">
<%@ include file="../../common/sidevar.jsp" %>
<div class="header">
  <%@include file="../../common/header.jsp" %>
</div>

<div class="body" style="width:100%; height:auto; overflow:hidden">

  <div class="cbody body-content" style="width:80%; height:100%; display:inline-block; box-sizing: border-box; margin-left:200px;">
    <div id="layoutSidenav_content" align="center">
      <main>
          <div class="container-fluid px-4">
            <form action="inquiryWrite" method="post">
              <h3 style="margin-top:10px;" align="center";>문의 답변</h3>
              <div class="card mb-4"  style="width:100%;">
                  <div class="card-header">
                      <i class="fas fa-table me-1"></i>
                      	문의 답변
                  </div>
                  <div class="card-body">
                      <table>
                          <tr>
                          <input type="hidden" name="qNum" value="${ inquiry.QNum }">
                          	 <th>카테고리</th>
                          	 <td>
                          	 	<!-- 
                          	 	${ inquiry.categoryNum }
                          	 	 -->
	                          	 	<c:if test="${ inquiry.categoryNum eq 1 }">
	                              		상품
	                              	</c:if>
	                              	<c:if test="${ inquiry.categoryNum eq 2 }">
	                              		서비스
	                              	</c:if>
	                              	<c:if test="${ inquiry.categoryNum eq 3 }">
	                              		배송
	                              	</c:if>
	                              	<c:if test="${ inquiry.categoryNum eq 4 }">
	                              		기타
	                              	</c:if>
                          	 </td>
                          	 <!--  
                          	 <th>답변일자</th>
                          	 <td>${ inquiry.ADate }</td>
                          	 -->
                          </tr>
                          <tr>
                          	 <th>문의제목</th>
                          	 <td colspan="3"> ${ inquiry.QTitle }</td>
                          </tr>
                          <tr>
                          	 <th>문의내용</th>
                          	 <td colspan="3">
                          	 	<textarea rows="9" cols="90"> ${ inquiry.QContent }</textarea>
                          	 </td>
                          </tr>
                          <tr>
                          	 <th>문의답변</th>
                          	 <td colspan="3">
                          	 	<textarea name="aContent" rows="9" cols="90"></textarea>
                          	 </td>
                          </tr>
                          <tr>
                            <td colspan="4">
                              <button class="btn-success" type="submit" style="width:50%; float:left;">답변하기</button>
                              <button class="btn-warning" type="button" style="width:50%;" onclick="history.back()">뒤로가기</button>
                            </td>
                          </tr>
                      </table>
                  </div>
              </div>
            </form>
          </div>
      </main>
    </div>
  </div>

</div>

<%@ include file="../../common/footer.jsp"  %>


</body>
</html>