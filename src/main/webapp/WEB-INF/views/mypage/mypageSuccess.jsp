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
    .checkout__input input {
    	color : black;
    }

</style>
<title>Insert title here</title>
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
                            <h2 style="font-family: 'BMDOHYEON'; font-size: 20px;">회원 정보 수정</h2>
                        </div>
                        <form id="member-info" action="infoEdit.wo" method="post" style="margin-top: 50px;">
                        	<input name="memberNum" type="hidden" value="${ member.memberNum }" />
                            <input name="memberId" type="hidden" value="${ member.memberId }" />
                            <div class="row">
                                <div class="col-lg-12 col-md-12">
                                    <div class="row">
                                        <div class="checkout__input">
                                            <p style="margin-bottom: 10px;">Name</p>
                                            <input type="text" class="form-control" value="${ member.memberName }" name="memberName" readonly>
                                        </div>
                                    </div>
                                    <div class="checkout__input">
                                        <p style="margin-bottom: 10px;">Password</p>
                                        <input type="password" value="${ member.memberPwd }" id="memberPwd" name="memberPwd">
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <div class="checkout__input">
                                                <p style="margin-bottom: 10px;">Post</p>
                                                <input type="text" id="postNo" class="form-control" value="${ member.postNo }" name="postNo" readonly>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="checkout__input" style="padding-top: 39px;">
                                                <button style="border-color: white; background-color: #94d137; font-family: 'BMDOHYEON';" class="btn btn-dark btn-block" name = "postnumBnt" type="button" onclick="serchPostClicked()" style="margin-top: 10px;">우편번호검색</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="checkout__input">
                                        <p style="margin-bottom: 10px;">Address</p>
                                        <input type="text" id="address" class="form-control" value="${ member.address }" name="address" readonly>
                                    </div>
                                    <div class="checkout__input">
                                        <p style="margin-bottom: 10px;">DetailAddress</p>
                                        <input type="text" id="detailAddress" value="${ member.detailAddress }" name="detailAddress">
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="checkout__input">
                                                <p style="margin-bottom: 10px;">Phone</p>
                                                <input type="text" name="phone" id="phone" value="${ member.phone }">
                                                <p style="color: gainsboro;"> ex) 010-0000-0000</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="checkout__input">
                                                <p style="margin-bottom: 10px;">Email</p>
                                                <input type="email" class="form-control" value="${ member.email }" name="email" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="checkout__input">
                                                <p style="margin-bottom: 10px;">Birthday</p>
                                                <input type="text" value="${ member.birth }" id="birth" name="birth">
                                                <p style="color: gainsboro;"> ex) 20210101</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="checkout__input">
                                                <p style="margin-bottom: 10px;">Gender</p>
                                                <input class="form-control" name="gender" type="text" value=
						                             <c:choose>
						                            	<c:when test="${ member.gender eq 'M'}">
						                            		'남자'
						                            	</c:when>
						                            	<c:when test="${ member.gender eq 'W'}">
						                            		'여자'
						                            	</c:when>
						                            	<c:otherwise>
						                            		'선택없음'
						                            	</c:otherwise>
						                            </c:choose>
												readonly/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="checkout__input">
                                        <button style="height: 55px; background-color: orange; color: white; font-family: 'BMDOHYEON';"class="btn btn-block" onclick="return checkInput();" type="submit">회원정보수정</button>
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
//우편번호 찾기 눌렀을때 실행
function serchPostClicked(){
    new daum.Postcode({
        oncomplete: function(data) {
        	
        	  var addr='';
        	  
        	  if(data.userSelectedType ==='R'){
        		  addr=data.roadAddress;
        	  }
        	  else{
        		  addr=data.jibunAddress;
        	  }
        	  document.getElementById('postNo').value=data.zonecode;
        	  document.getElementById('address').value=addr;
        	
        	  $("#member-info button[name=postnumBnt]").attr;
        	  document.getElementById('detailAddress').focus();
        }
  	}).open();  
}
</script>
<script>
function checkInput(){

	var regExp = /^[0-9][0-9][0-9]-[0-9]{3,4}-[0-9][0-9][0-9][0-9]$/;
	var phone = document.getElementById('phone').value;
	if(!regExp.test(phone)) {
        alert("전화번호를 확인 해주세요(-포함 12~13자리)");
        document.getElementById('phone').focus();
        return false;
    }
	var regExp = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/
	var birth = document.getElementById('birth').value;
	if(!regExp.test(birth)) {
        alert("생년월일을 확인 해주세요(예시 20210101)");
        document.getElementById('birth').focus();
        return false;
    }
    var regExp = /^[0-9A-Za-z]{4,15}$/;
	var memberPwd = document.getElementById('memberPwd').value;
	if(!regExp.test(memberPwd)) {
        alert("비밀번호 형식을 확인해주세요 (영 대소문자 숫자 4~15자리)");
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