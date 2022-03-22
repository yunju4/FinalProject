<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	.container button{
    width: 100%;
    margin: 5px;
	}
	
	#a{
	    width: 100%;
	    height: 50px;
	}
	
	
	.banner img{
	width: 100%;
	}
	
	.container h1{
	text-align: center;
	margin-bottom: 70px;
	margin-top: 70px;
	}
	
	.container p{
	text-align: right;
	}
	
	.loginForm{
	width: 60%;
	margin-top: 50px;
	margin-bottom: 50px;
	}

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
</head>
<body>
    <%@ include file="../common/main_top.jsp" %>
    
    <div id="content">
        <main style="height: 750px; background-image:url(${ pageContext.request.contextPath }/resources/img/mypage.jpg); background-size: 95%;">
          <div class="container" style="margin-top: 100px; margin-bottom: 200px;">
              <div class="row justify-content-center">
                  <div class="col-lg-5">
                      <div class="shadow-lg border-0 rounded-lg mt-5">
                          <div class="card-header" style="background-color: white;"><h3 class="text-center"><img src="${ pageContext.request.contextPath }/resources/logo.png" alt=""></h3></div>
                          <div class="card-body">
                            
   
                            <form id="login-form" action="login.do" method="post">

                                <h1 style="margin-bottom: 50px; text-align: center;  margin: 20px;"> 로그인</h1>

                                <input id="memberId" name="memberId" class="form-control" type="text" placeholder="아이디를 입력해주세요" maxlength="15" required><br>
                                <input id="memberPwd" name="memberPwd" class="form-control" type="password" placeholder="비밀번호를 입력해주세요" maxlength="15" required><br>
            
                                <p><a href="${pageContext.request.contextPath}/member/findId.do" style="color:black;">아이디 찾기</a> | <a href="${pageContext.request.contextPath}/member/findPwd.do" style="color:black;">비밀번호 찾기</a></p>
                            
                                <br>
                                
                                <a style="display: inline-block; margin-left: 5%;"><button type="submit" class="btn btn-success" style="width:170px;"> 로그인</button><br></a>
                                <a style="display: inline-block;"><button id="joinBtn" class="btn btn-outline-success" onClick="javascript:goJoin()" style="width: 170px;">회원가입</button></a>
                    
                            </form>
                          </div>
                      </div>
                  </div>
              </div>
            </div>
        </main>
      </div>
    <br>




        <script>
            function goJoin(){
                let f = document.createElement('form');
                f.setAttribute('method', 'get');
                f.setAttribute('action', 'join.do');
                document.body.appendChild(f);
                f.submit();
            }

        </script>
        
    <%@ include file="../common/main_bottom.jsp" %>
</body>
</html>