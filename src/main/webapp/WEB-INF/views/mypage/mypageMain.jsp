<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    .card-footer {
        background-color: rgb(233, 253, 192);
    }

</style>
<title>Insert title here</title>
</head>
<body>
	<!-- 일회성 메세지 띄우기 -->
	<c:if test="${ !empty alertMsg }">
		<script type="text/javascript">
			var msg = "${ alertMsg }";
			alert(msg);
		</script>
	<c:remove var="alertMsg" scope="session"/>
	</c:if>
	 
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

    <div id="content">
        <main style="height: 750px; background-image:url(${ pageContext.request.contextPath }/resources/img/mypage.jpg); background-size: 95%;">
          <div class="container" style="margin-top: 100px; margin-bottom: 200px;">
              <div class="row justify-content-center">
                  <div class="col-lg-5">
                      <div class="shadow-lg border-0 rounded-lg mt-5">
                          <div class="card-header" style="background-color: white;"><h3 class="text-center"><img src="${ pageContext.request.contextPath }/resources/logo.png" alt=""></h3></div>
                          <div class="card-body">
                              <form action="main.wo" method="post">
                                  <div class="form-floating mb-3">
                                      <input class="form-control" id="memberPwd" style="border-color: rgb(4, 158, 4);" id="inputPassword" name="memberPwd" type="password" maxlength="15" placeholder="Password" />
                                      <label for="inputPassword">Password</label>
                                  </div>
                                  <div class="d-flex align-items-center justify-content-center mt-4 mb-0">
                                      <button type="submit" style="font-size: large; padding-top: 30px; border-color:  white; color: rgb(148, 224, 33);  background-color: white;" onclick="return checkInput();" class="btn btn-primary"><strong>Enter</strong></button>
                                  </div>
                                  <br>
                                  <br>
                              </form>
                          </div>
                      </div>
                  </div>
              </div>
            </div>
        </main>
      </div>
    <br>
    
    <!-- 마이페이지 진입 시 포커스, 화면 이동 -->
     <script>
         $(document).ready(function(){
             $("#inputid").focus();
        });

        window.scrollTo(0, 100);
    </script>
    <%@ include file="../common/main_bottom.jsp" %>
</body>
</html>