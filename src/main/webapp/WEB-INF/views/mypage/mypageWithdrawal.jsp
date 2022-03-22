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
        background: tomato;
    }
    .checkout__input input {
    	color : black;
    }
    textarea {
    width: 100%;
    height: 300px;
    color: #6f6f6f;
    padding-left: 20px;
    border: 1px solid #ebebeb;
    border-radius: 4px;
    padding-top: 12px;
    resize: none;
    }

</style>
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<!-- 우편번호 검색 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div id="layoutSidenav">
                <%@ include file="../common/mypage_nav.jsp" %>
                <div class="col-lg-8 col-md-6" style="margin-left: 200px;">
                    <div class="checkout__form">
                        <div class="section-title product__discount__title" style="margin-bottom: 20px; ">
                            <h2 style="font-family: 'BMDOHYEON'; font-size: 20px;">회원 탈퇴</h2>
                        </div>
                        <form action="mypageWithdrawal.wo" method="post" style="margin-top: 50px;">
                            <div class="row">
                                <div class="col-lg-12 col-md-12">
                                    <div class="row">
                                        <div class="checkout__input">
                                            <p style="margin-bottom: 10px; font-family: 'BMDOHYEON';">ID<span>*</span></p>
                                            <input type="text" class="form-control" name="memberId" value="${ memberId }" placeholder="ID" readonly>
                                        </div>
                                    </div>
                                    <div class="checkout__input">
                                        <p style="margin-bottom: 10px; font-family: 'BMDOHYEON';">Password<span>*</span></p>
                                        <input type="password" class="form-control" id="memberPwd" name="memberPwd" placeholder="Password">
                                    </div>
                                    <div class="checkout__input">
                                        <p style="margin-bottom: 10px; font-family: 'BMDOHYEON';">탈퇴사유</p>
                                        <textarea style="width: 100%;" name="dContent" placeholder="Your message"></textarea>
                                    </div>
                                    <div class="checkout__input">
                                        <button type="button" style="height: 55px; background-color: tomato; color: white; font-family: 'BMDOHYEON';" class="btn btn-block" id="#" data-toggle="modal" data-target="#exampleModalCenter">회원탈퇴</button>
                                        <!-- Modal -->
                                        <div class="modal fade" id="exampleModalCenter" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                            <div class="modal-header">
                                                <div>
                                                    <img src="${ pageContext.request.contextPath }/resources/logo.png" style="display: block; margin-left: 95px;">
                                                </div>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body" style="text-align: center;">
                                                <span style="font-family: 'BMDOHYEON';">정말로 Wo9Wo9 를 탈퇴하시겠습니까?</span><br>
                                                <span style="font-family: 'BMDOHYEON'; color: gray;">탈퇴하신 후 재가입은 1개월 후에 가능합니다.</span>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn" style="background-color: tomato; color: white;" onclick="return checkInput();">탈퇴</button>
                                                <button type="button" class="btn" style="background-color: yellowgreen; color: white;" data-dismiss="modal">취소</button>
                                            </div>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

<script>
function checkInput(){

    var regExp = /^[0-9A-Za-z]{4,15}$/;
	var memberPwd = document.getElementById('memberPwd').value;
	if(!regExp.test(memberPwd)) {
        alert("비밀번호를 다시 확인해주세요");
        document.getElementById('memberPwd').focus();
        return false;
    }
}
</script>

<script>
	window.scrollTo(0, 300);
</script>
	<%@ include file="../common/main_bottom.jsp" %>
</body>
</html>