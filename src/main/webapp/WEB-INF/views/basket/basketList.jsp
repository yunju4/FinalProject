<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

 
</head>
<body>
    <div id="header">
      <jsp:include page="../common/main_top.jsp"></jsp:include>  
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
                        <h2>장바구니</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <span>장바구니</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

   <!-- Shoping Cart Section Begin -->
   
    <section class="shoping-cart spad">
        <form id="toPay" action="toPay" method="post">
            <div class="container">
                <!--셀프 도시락 테이블-->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shoping__cart__table">
                            <table>
                                <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th class="shoping__product">도시락 상품명</th>
                                        <th>가격</th>
                                        <th>수량</th>
                                        <th>합계</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody id="selfTbody">
                                    <c:choose>
                                        <c:when test="${empty selfList }">
                                                <tr>
                                                    <td class="shoping_cart_no" colspan="5">
                                                        셀프 도시락 장바구니에 상품이 없습니다.
                                                    </td>
                                                </tr>
                                        </c:when>
                                        <c:otherwise>
                                            <c:forEach var="b" items="${ selfList }">
                                                
                                                <tr>
                                                    <td class="shoping_cart_no">
                                                        <div class="bNum">${ b.basketNum }</div>
                                                        <input type="hidden" class="hiddenBNum" name="bNum">
                                                    </td>
                                                    <td class="shoping__cart__item">
                                                        <h5 class="productName"><b>${ b.PName }</b></h5>
                                                        <input type="hidden" class="hiddenProductName" name="productName">
                                                    </td>
                                                    <td class="shoping__cart__price">
                                                        <div style="display: inline-block;" class="proPrice">${ b.price }</div><span>원</span>
                                                    </td>
                                                    <td class="shoping__cart__quantity">
                                                        <div class="quantity">
                                                            <div>
                                                                <input type="button" class="minus" value=" - ">
                                                                <input type="text" value="${ b.count }" style="width:30px;" class="count">
                                                                <input type="button" class="plus" value=" + ">
                                                                <input type="hidden" class="hiddenCount" name="count">
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="shoping__cart__total">
                                                        <div class="innerTotal" style="display: inline-block;" >${ b.count*b.price }</div><span>원</span>
                                                        <input type="hidden" class="hiddenInnerTotal" name="innerTotal">
                                                    </td>
                                                    <td class="shoping__cart__item__close">
                                                        <span class="icon_close sDelete" onclick="location.href='delete/${b.basketNum}'"></span>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:otherwise>
                                    </c:choose>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <br><br>
                <!--패키지 도시락 테이블-->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shoping__cart__table">
                            <table>
                                <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th class="shoping__product">패키지 상품명</th>
                                        <th>가격</th>
                                        <th>수량</th>
                                        <th>합계</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody id="packageTbody">
                                    <c:choose>
                                        <c:when test="${empty packageList }">
                                            <tr>
                                                <td class="shoping_cart_no" colspan="5">
                                                    패키지 도시락 도시락 장바구니에 상품이 없습니다.
                                                </td>
                                            </tr>
                                        </c:when>
                                        <c:otherwise>
                                            <c:forEach var="p" items="${packageList }">
                                                <tr>
                                                    <td class="shoping_cart_no">
                                                        <div class="bNum">${p.basketNum}</div>
                                                        <input type="hidden" class="hiddenBNum" name="bNum">
                                                    </td>
                                                    <td class="shoping__cart__item">
                                                        <h5 class="productName"><b>${p.PName }</b></h5>
                                                        <input type="hidden" class="hiddenProductName" name="productName">
                                                    </td>
                                                    <td class="shoping__cart__price">
                                                        <div style="display: inline-block;" class="proPrice">${p.price }</div><span>원</span>
                                                    </td>
                                                    <td class="shoping__cart__quantity">
                                                        <div class="quantity">
                                                            <div>
                                                                <input type="button" class="minus" value=" - ">
                                                                <input type="text" value="${p.count }" style="width:30px;" class="count">
                                                                <input type="button" class="plus" value=" + ">
                                                                <input type="hidden" class="hiddenCount" name="count">
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="shoping__cart__total">
                                                        <div class="innerTotal" style="display: inline-block;" >${p.count*p.price }</div><span>원</span>
                                                        <input type="hidden" class="hiddenInnerTotal" name="innerTotal">
                                                    </td>
                                                    <td class="shoping__cart__item__close">
                                                        <span class="icon_close pDelete" onclick="location.href='delete/${p.basketNum}'"></span>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:otherwise>
                                    </c:choose>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shoping__cart__btns">
                            <a href="${pageContext.request.contextPath}/main/main.do" class="primary-btn cart-btn">쇼핑 계속 하기</a>
                        </div>
                    </div> 
                    <!--쿠폰 div-->
                    <div class="col-lg-6">
                        <div class="shoping__continue">
                            <div class="shoping__discount">
                                <h5>할인 쿠폰</h5>
                                <select id="couponSelect">
                                    <c:choose>
                                        <c:when test="${empty cList }">
                                            <option id="asdf" value="0"><div>쿠폰 없음</div></option>
                                        </c:when>
                                        <c:otherwise>
                                            <option selected="selected" value="0">0.선택안함</option>
                                            <c:forEach var="c" items="${cList }">
                                                <option value="${c.coupon}">
                                                    ${c.coupon}.${c.couponName }-${c.discount}%  
                                                </option>
                                            </c:forEach>
                                        </c:otherwise>
                                    </c:choose>
                                </select>
                                <input type="hidden" id="hiddenCouponNo" name="couponNo">    
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="shoping__checkout">
                            <h5>총 합계</h5>
                            <ul>
                                <li>상품 가격 <span><div style="display: inline-block;" id="subSummary" class="subSummary">0</div><span>원</span></span></li>
                                <li>총 가격 <span><div id="total" style="display: inline-block;">0</div><span>원</span></span></li>
                                <input type="hidden" id="hiddenSubSummary" name="subSummary">
                                <input type="hidden" id="hiddenTotal" name="total">
                            </ul>
                            <!--만약 상품이 없으면 disabled(상품가격이 0이면 or 상품 배열이 0이면)-->
                            <c:choose>
                                <c:when test="${empty selfList && empty packageList}">
                                    <button type="submit" class="primary-btn" style="width: 100%;" onclick="return setValue();" disabled>결제 하기</button>
                                </c:when>
                                <c:otherwise>
                                    <button type="submit" class="primary-btn" style="width: 100%;" onclick="return setValue();" id="payButton">결제 하기</button>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
                
                <input type="hidden" id="hiddenDiscount" name="discount">
                <input type="hidden" id="hiddenCouponSelect" name="couponSelect">
            </div>
        </form> 
    </section>  
    <!-- Shoping Cart Section End -->
	<!-- 초기 뿌려주는 값 -->

    <div id="footer">
        <jsp:include page="../common/main_bottom.jsp"></jsp:include>
    </div>


    <script>
        $(function(){
            var innerTotal = document.getElementsByClassName('innerTotal');
            var subSummary = document.getElementById('subSummary');
            var sum = 0;
            for(var i=0; i<innerTotal.length; i++){
                sum+= parseInt($(innerTotal[i]).text());
                
                            
                $(subSummary).text(sum);
                
                                
                $(total).text($(subSummary).text());
                
                
                if(innerTotal.length == 0){
                $(subSummary).text('0');
                    $(total).text($(subSummary).text());
                }
            } 
                
        });
            
        
        // setValue : 비어있던 input hidden 에 각각 value 를 넣어주는 함수
        function setValue() {
                //집에 가서 나를 위해 잊지 말자....서브밋 누를 때만 실행 된다.
            var hiddenProductName = document.getElementsByClassName('hiddenProductName');
            var hiddenBNum = document.getElementsByClassName('hiddenBNum');
            var hiddenCount = document.getElementsByClassName('hiddenCount');
            var hiddenSubSummary = document.getElementById('hiddenSubSummary');
            var hiddenTotal = document.getElementById('hiddenTotal');
            var hiddenCouponNo = document.getElementById('hiddenCouponNo');
            
            var productName = document.getElementsByClassName('productName');
            var bNum = document.getElementsByClassName('bNum');
            var count = document.getElementsByClassName('count');
            var subSummary = document.getElementById('subSummary');
            var total = document.getElementById('total');
            var couponNo = $("#couponSelect option:selected").val();
            
            for(var i =0; i<hiddenProductName.length; i++){
                $(hiddenProductName[i]).val($(productName[i]).text());
            }
            
            for(var i =0; i<hiddenBNum.length; i++){
                $(hiddenBNum[i]).val(parseInt($(bNum[i]).text()));
            }

            for(var i =0; i<hiddenCount.length; i++){
                $(hiddenCount[i]).val($(count[i]).val());
            }

            $(hiddenSubSummary).val(parseInt($(subSummary).text()));

            $(hiddenTotal).val(parseInt($(total).text()));
            
            $(hiddenCouponNo).val(couponNo);

            return true;
        }
        
        
        // + 클릭 시
        $(function(){
            var plus = $(".plus");

            plus.click(function(){
                var amount = $(this).prev().val(); 
                var price = parseInt($(this).parent().parent().parent().prev().children().eq(0).text());

                
                amount++;
                
                
                $(this).prev().val(amount);
                $(this).parent().parent().parent().next().children().eq(0).text(price*amount);
                

                setTotalPrice();
            });
        });

        // - 클릭 시
        $(function(){
            var minus = $(".minus");
            minus.click(function(){
                var amount =  $(this).next().val();
                var price = parseInt($(this).parent().parent().parent().prev().children().eq(0).text());
                
                if(amount>1){
                amount--;
                }

                $(this).next().val(amount);
                $(this).parent().parent().parent().next().children().eq(0).text(price*amount);
                
                setTotalPrice();
            });
        });

        

            // 가격이 바뀌는 이벤트 발생시마다 호출
            function setTotalPrice() {

                //subSummary 관련
                var innerTotal= document.getElementsByClassName('innerTotal');
                var sum=0; //innerTotal[0].textContent;
                var asdf = $("#couponSelect option:selected").val();


                // 총가격바꾸는부분
                for(var i=0; i<innerTotal.length; i++){
                    sum += parseInt($(innerTotal[i]).text());
                    $("#subSummary").text(sum);
                    $("#total").text(sum-(sum*asdf/100)); 
                }
            }

            
        
        $(function(){       
            //삭제클릭
            //셀프 도시락 삭제
            $(".sDelete").click(function(){
                
                var deleteBNum = parseInt($(this).parent().prev().prev().prev().prev().prev().text());
                $("#selfDeBNum").val(deleteBNum);

            });
            
            
            //패키지도시락 삭제
            $(".pDelete").click(function(){
                
                var deleteBNum = parseInt($(this).parent().prev().prev().prev().prev().prev().text());
                $("#packageDeBNum").val(deleteBNum);
                

            });
            

            //쿠폰 적용 셀렉트
            $('#couponSelect').change(function() {
                var subSummary = parseInt($(document.getElementById('subSummary')).text());
                var asdf = $("#couponSelect option:selected").text();
                var asdf1 = $("#couponSelect option:selected").val();
                
                //<div data-coupon="${c.coupon}"><div data-discount="${c.discount}">${c.discount}</div>
                
                if(asdf1 != 0 && asdf1 != -1) {
                   	
                    var selectCoupon = $("#couponSelect option:selected").text();
                    var asdfTrim = asdf.trim();
                    var sIndex = asdfTrim.lastIndexOf("-") + 1;
                    var eIndex = asdfTrim.lastIndexOf("%");
                    var percent = parseInt(asdfTrim.substring(sIndex, eIndex)); // 할인 퍼센트 숫자만 뽑아낸거 10, 20, 30 ..

                    var total = $(document.getElementById('total')).text(Math.ceil(subSummary-(subSummary*(percent/100))));
                    
                    var couponSelect = $("#couponSelect option:selected").val(); // 쿠폰번호
                    
                    $("#hiddenDiscount").val(Number(percent));
                    $("#hiddenCouponSelect").val(Number(couponSelect));
                    
                    $("#hiddenSubSummary").val(subSummary);
                    $("#hiddenTotal").val(total.text());
                
                    
                } else {
                    $("#total").text(subSummary);
                    $("#subSummary").text(subSummary);

                    $("#hiddenSubSummary").text(subSummary);
                    $("#hiddenTotal").text(subSummary);
                }
            });
            
        });
            
            
    </script>
    
    
</body>

</html>