<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <style>
        div{
            box-sizing: border-box;
            padding-bottom: 0px;
        }
        .section{
            border-top: 10px solid rgb(126,173,57);;
            border-bottom: 2px solid rgb(126,173,57);;
            vertical-align: middle;
        }
    </style>
</head>

<body>
    <div id="header">
        <%@ include file="../common/main_top.jsp" %> 
      </div>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="${ pageContext.request.contextPath }/resources/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>결제 하기</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h6><span class="icon_tag_alt"></span> Have a coupon? Good!!
                    </h6>
                </div>
            </div>
            <div class="checkout__form">
                <h4>주문 상세 내용</h4>
                <form action="checkout" method="post">
                    <!-- --------------------------------------------------------------- -->              
                            <c:forEach var="c" items="${bNum }">
                                    <input type="hidden" class="bNum" name="bNum" value="${c }" >
                            </c:forEach>
                            
                            <c:forEach var="d" items="${count }">
                                    <input type="hidden" name="count" value="${d}">
                            </c:forEach>
                            
                            <input type="hidden" name="couponNo" value="${couponNo }">
                    <!-- --------------------------------------------------------------- -->           
                    
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>이름<span>*</span></p>
                                        <input type="text" value="${m.memberName }">
                                    </div>
                                </div>
                            </div>
                            <div class="checkout__input">
                                <p>주소<span>*</span></p>
                                <input type="text" placeholder="기본 주소" class="도로명 주소" value="${m.address }" readonly>
                                <br><br>
                                <input type="text" placeholder="상세 주소" value="${m.detailAddress }" readonly>
                            </div>
                            <div class="checkout__input">
                                <p>우편번호<span>*</span></p>
                                <input type="text" value="${m.postNo }" readonly>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>핸드폰 번호<span>*</span></p>
                                        <input type="text" value="${m.phone }" readonly>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Email<span>*</span></p>
                                        <input type="text" value="${m.email }" readonly>
                                    </div>
                                </div>
                            </div>
                            <div class="row" id="cardCheck">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>카드<span>*</span></p>
                                        <select id="cardCom" style="display: block;">
                                            <option value="하나카드">하나카드</option>
                                            <option value="삼성카드">삼성카드</option>
                                            <option value="신한카드">신한카드</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>카드 비밀번호<span>*</span></p>
                                        <input type="password" placeholder="카드 비밀번호 4자리" id="cardPwd">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <button type="button" class="site-btn" id="cardCheckBtn">카드 확인</button>
                                    </div>
                                </div>
                            </div> 
                        </div>



                        <div class="col-lg-4 col-md-6" style="float:right">
                            <div class="checkout__order">
                                <h4>주문 내역</h4>
                                <div class="checkout__order__subtotal">합계 <span>${subSummary}<div style="display: inline-block;">원</div></span></div>
                                <div class="checkout__order__products">할인가격 <span>${subSummary-total}원&nbsp;</span></div>
                                <div class="checkout__order__total">총 가격(할인 포함) <span>${total}<div style="display: inline-block;">원</div></span></div>
                                <div class="checkout__input__checkbox" id="checked"></div>
                                <p>
                                    - 개인정보 수집 · 이용 및 처리 동의 (필수)<br>
                                    - 결제 대행 서비스 약관 동의 (필수)<br>
                                    - 전자지급 결제 대행 서비스 이용약관 동의(필수) 
                                </p>
                                <div class="checkout__input__checkbox">
                                    <label for="payment">
                                        	동의하죠?<br>
                                        	(동의 안 하면 결제하기 못 눌러요)
                                        <input type="checkbox" id="payment">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                    <button type="submit" class="site-btn" onclick="return CheckForm()">결제하기</button>
                        
                            </div> 
                        </div>         		
                    </div>         	
                </form>
            </div>
        </div>                        
    </section>
    <!-- Checkout Section End -->
    
    <div id="footer">
        <%@ include file="../common/main_bottom.jsp" %>
    </div>
    <script>
    	$("#cardCom").attr("disabled",false);
        $("#cardCheckBtn").click(function(){
            $.ajax({
                url: "${pageContext.request.contextPath}/basket/cardCheck",
                type:"post" ,
                data: {cardCom: $("#cardCom option:selected").val(), 
                    cardPwd: $("#cardPwd").val()},
                success: function(data){
                    var str="";
                    if(data!=""){//카드 조회 성공
                        str="<div class='col-lg-6'>"
                        +    "<div class='checkout__input'>"
                        +        "<p>카드<span>*</span></p>"
                        +        "<div align='center'><p>카드 인증에 성공했습니다.</p></div>"
                        +     "</div>"
                        + "</div>";
                        $("#cardCheck").html(str);
                    }
                    else{
                        alert("카드 조회에 실패했습니다.");
                        $("#cardPwd").val("");
                    }
                }
                
            });
        });

        function CheckForm(){
            //결제 넘길 때 약관 동의, 카드 인증 확인
        
            var chk = $("#payment").is(":checked");
            var cardDiv = $('#cardCheck').children().length
            if(chk==true && cardDiv == 1){
                return true;
            } 
            else if(chk == false && cardDiv == 1){
                alert('약관에 동의해 주세요');
                return false;
            }
            else if(chk==true && cardDiv > 1){
                alert('카드 인증이 필요합니다.');
                return false;
            }
            else{
                alert('카드 인증도 약관 동의도 필요합니다.');
                return false;
            }
            
    	}
    </script>
</body>

</html>