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
            <form action="" method="">
              <h3 style="margin-top:10px;" align="center";>공지 수정</h3>
              <div class="card mb-4"  style="width:100%;">
                  <div class="card-header">
                      <i class="fas fa-table me-1"></i>
                      	수정
                  </div>
                  <div class="card-body">
                      <table>
                          <tr>
                          	 <th width="30%;">카테고리</th>
                          	 <td>
                          	 	상품
                          	  	<!--  
                          	 	<select name="category" style="width: 100%;">
                          	 		<option value="1">상품</option>
                          	 		<option value="2">서비스</option>
                          	 		<option value="3">배달</option>
                          	 		<option value="4">기타</option>
                          	 	</select>
                          	 	-->
                          	 </td>
                          	 <th width="10%;">수정일</th>
                          	 <td width="30%;">2022-01-01</td>
                          </tr>
                          <tr>
                          	 <th>제목</th>
                          	 <td colspan="3">임금삭감합니다</td>
                          </tr>
                           <tr>
                          	 <th>이미지</th>
                          	 <td colspan="3" align="left";>&nbsp;<input type="file"></td>
                          </tr>
                          <tr>
                          	 <th>내용</th>
                          	 <td colspan="3">
                          	 	<textarea rows="9" cols="90">You're fired</textarea>
                          	 </td>
                          </tr>
                          <tr>
                            <td colspan="4">
                              <button class="btn-success" type="submit" style="width:50%; float:left;">수정하기</button>
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