<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
                                    <form action="/wo9wo9/member/findId.do" method="post">
                                        <h2 style="margin-bottom: 50px; text-align: center;">아이디 찾기</h2>

                                        <c:choose>
                                              <c:when test="${id!=null}"><!-- 아이디 찾았을때  -->
                                                   <h2 style="text-align: center;margin-bottom: 50px;color:green;">' ${id}'</h2>
                                                  <div class="form-label-group">
                                                      <input class="btn btn-lg btn-secondary btn-block text-uppercase"
                                                          type="button" value="OK" onclick="closethewindow()">
                                                  </div>
                                              </c:when>
                                              <c:otherwise>
                                                  <input class="form-control" name="memberName" type="text" placeholder="이름를 입력해주세요"><br>
                                                  <input class="form-control" name="email" type="email" placeholder="이메일을 입력해주세요"><br>
                                      
                                                  <br>
                                                  
                                                  <button type="submit" class="btn btn-success" style="width:100%;"> 아이디 찾기</button><br>
                                          
                                               </c:otherwise>
                                        </c:choose>
                                      </form>
                                  </div>
                              </div>
                          </div>
                      </div>
                    </div>
                </main>
              </div>
            <br>
    
    <%@ include file="../common/main_bottom.jsp" %>​

</body>
</html>