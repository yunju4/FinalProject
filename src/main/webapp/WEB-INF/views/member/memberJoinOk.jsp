<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="../common/main_top.jsp" %>
	
    <div id="center" style="text-align: center; margin: 50px;">
      <div class="container" style="width:60%; margin-bottom:auto;">
	       <form action="/wo9wo9/member/findPwd.do" method="post">
	          <h1><b style="color: green;">health</b> 하고 <b style="color: green;">delicious</b>한 </h1>
	          <h1 style="margin-bottom: 100px;"> Wo9Wo9의 회원이 되신 것을 진심으로 환영합니다!</h1>
	                <div style="margin:auto;">
	                
	                <a style="display: inline-block; text-align: center; color: green; font-size: larger; font-weight: bolder; margin-left: 10%; margin-right: 10%;" href="${pageContext.request.contextPath}/main/main.do">메인화면으로 가기 -> </a>
	                <a style="display: inline-block; text-align: center; color: green; font-size: larger; font-weight: bolder; margin-left: 10%; margin-right: 10%;" href="${pageContext.request.contextPath}/member/login.do">로그인하로 가기 -> </a>
	                <!--
			          <button id="gomain" class="btn btn-success" style="width:50%; margin-bottom: 50px;" style="display: inline-block; margin-left: 5%;"  onClick="javascript:goMain()">메인으로 가기</button><br>
				      <button id="gologin" class="btn btn-success" style="width:50%; margin-bottom: 50px;" style="display: inline-block;"  onClick="javascript:goLogin()">로그인하러 가기</button><br>         
	                 -->
	               </div>
	      </form>
      </div>
    </div>
    <!--
         <script>
            $(document).ready(function(){
                $('#gomain').on('click', function(){
                    location.href='${pageContext.request.contextPath}/main/main.do'
                })
            })
        </script>

        <script>
            $(document).ready(function(){
                $('#gologin').on('click', function(){
                    location.href='${pageContext.request.contextPath}/main/login.do'
                })
            })
        </script>
	 -->
	
	<%@ include file="../common/main_bottom.jsp" %>

</body>
</html>