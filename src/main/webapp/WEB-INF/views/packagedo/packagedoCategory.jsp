<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="description" content="Ogani Template">
  <meta name="keywords" content="Ogani, unica, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>패키지식단</title>

      
 
  <style>
    /* Make the image fully responsive */
    .carousel-inner img {
      width: 100%;
      height: 100%;
    }

    .col-sm-6 {
      text-align:center;
    }

    .nav-link {
      color:black;
    }
    .header a:hover {
      text-decoration: underline;
      color:black;
    }

    .cardtitle {
      display:inline-block;
      font-size: 20px;
      text-align: center;
      font-weight: bold;
    }

    .card1 {
      width:100%;
      height:100%; 
      background-image: url('../resources/img/키토제닉.jpg'); background-size: cover;
      display:inline-block;
      margin-left: 5px;
      margin-right: 5px;
      box-sizing: border-box;
      height: 300px;
      border: 2px solid #235594;
      border-radius: 18px;
    }
    
    .card2 {
      width:100%;
      height:100%;     
      background-image: url('../resources/img/채식주의.jpg'); background-size: cover;
      display:inline-block;
      margin-left: 5px;
      margin-right: 5px;
      box-sizing: border-box;
      height: 300px;
      border: 2px solid #235594;
      border-radius: 18px;
    } 

    .card3 {
      width:100%;
      height:100%;     
      background-image:url('../resources/img/지중해식.jpg'); background-size: cover;
      display:inline-block;
      margin-left: 5px;
      margin-right: 5px;
      box-sizing: border-box;
      height: 300px;
      border: 2px solid #235594;
      border-radius: 18px;
    } 

    .card4 {
      width:100%;
      height:100%;     
      background-image:url('../resources/img/단백질.jpg'); background-size: cover;
      display:inline-block;
      margin-left: 5px;
      margin-right: 5px;
      box-sizing: border-box;
      height: 300px;
      border: 2px solid #235594;
      border-radius: 18px;
    } 

    .text1{
      background: #000000;
      opacity: 0;
      border-radius: 15px;
    }

    .card1:hover .text1{
      opacity: 0.75;
      color: white;
      font-style: oblique;
      
    }

    .card2:hover .text1{
      opacity: 0.75;
      color: #ffffff;
      font-style: oblique;
      
    }

    .card3:hover .text1{
      opacity: 0.75;
      color: #ffffff;
      font-style: oblique;
      
    }

    .card4:hover .text1{
      opacity: 0.75;
      color: #ffffff;
      font-style: oblique;
      
    }
  </style>
</head>
<body>

<div id="header">
	<%@include file = "../common/main_top.jsp" %>
</div>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="../resources/img/breadcrumb.jpg"  style="width: 70%; margin-left: 15%;">
  <div class="container">
      <div class="row">
          <div class="col-lg-12 text-center">
              <div class="breadcrumb__text">
                  <h2>패키지 도시락</h2>
              </div>
          </div>
      </div>
  </div>

</section>
<br>
<div style="width:60%; margin-left: 20%; border-top:2px solid rgb(165, 161, 140);"></div>

<div class="container" style="width:1000px;">

  <!-- 패키지 카테고리 -->
  <div class="product">
    <br>
    <div class="cardtitle" style="width:45%; margin-left: 4%; ">키토제닉 식단</div>
    <div class="cardtitle" style="width:45%; margin-left: 1%; ">채식주의 식단</div>

    <div class="card1"  style="width:45%; margin-left: 4%; cursor:pointer;" onclick="location.href='http://localhost:8888/wo9wo9/packagedo/meal1.do'">
    
      <div class="text1" style=" width:100%; height:100%;">
          <p class="card-text" style="margin-left:5px; margin-right: 5px; color: white;"> <br>키토제닉 식단은 원래 아동 뇌전증(간질) 환자들의 식이요법으로 
            사용되었으나 그 효능을 인정받아 일반 사람들에게도 유명해진 식이요법입니다. 키토제닉 식단은 탄수화물의 섭취를 줄이고 
            지방의 섭취를 늘리는 방법으로 탄수화물 대신 지방을 우리 몸의 '연료'로 태울 수 있게 됩니다. 탄수화물 보다 지방을 우리 몸의 연료로 쓰게 되면 
            몸의 컨디션이 오락가락하거나, 급격한 허기를 느끼지 않게 되며, 지방을 에너지원으로 끊임없이 연소시키면서 
            식탐과 식욕 또한 줄어들기 때문에 체중 감량과 폭식증에 큰 효과가 있습니다. </p>
      </div>
    </div>

    <div class="card2"  style="width:45%; cursor:pointer;" onclick="location.href='http://localhost:8888/wo9wo9/packagedo/meal2.do'">
      <div class="text1" style=" width:100%; height:100%;">
          <p class="card-text" style="margin-left:5px; margin-right: 5px; color: white;"> <br>
            다른 식이요법들이 건강과 체중 관리를 목적으로 만들어진 반면, 채식주의 식단은 윤리적, 종교적, 환경적, 또한 건강적인 이유로 실천합니다. 
            채식주의 식단을 처음 시작한다면 육식을 한순간에 끊기보다는 서서히 식단을 채식 위주로 바꾸는 것이 좋으며, 건강상의 이유로 채식을 한다면 엄격한 채식보다는 
            육류의 섭취를 평소보다 줄이고 야채, 과일, 콩, 견과류의 섭취 비율을 올리는 것이 좋습니다. <br><br><br>                                           
          </p>
      </div>
    </div>

    <br><br><br>

    <div class="cardtitle" style="width:45%; margin-left: 4%; ">지중해식 식단</div>
    <div class="cardtitle" style="width:45%; margin-left: 1%; ">단백질 식단</div>

    <div class="card3"  style="width:45%; margin-left: 4%; cursor:pointer;" onclick="location.href='http://localhost:8888/wo9wo9/packagedo/meal3.do'">
      <div class="text1" style=" width:100%; height:100%;">
          <p class="card-text" style="margin-left:5px; margin-right: 5px; color: white;" > <br>
            2010년 유네스코 무형문화재로 지정된 지중해식 식단은 크레타 섬, 그리스, 그리고 남부 이탈리아 사람들의 식습관에 기반을 둔 식이요법입니다. 
            이 식이요법은 정해진 식단이 있는 것이 아니라 과일, 채소, 콩, 곡식류를 충분히 섭취하고 소고기, 돼지고기보다는 닭고기나 생선류를 먹으며 올리브오일을 
            식사 메뉴에 곁들여 먹는 방식으로 구성되어 있습니다. 지중해 연안의 사람들은 식사를 할 때 가족, 친구들과 즐겁게 대화하며, 
            긍정적이고 활동적인 생활 방식을 유지하고 있다고 합니다. 이러한 생활 방식까지 참고하여 실천한다면 최고의 효과를 볼 수 있을 것입니다.</p>
      </div>
    </div>
    <div class="card4"  style="width:45%; cursor:pointer;" onclick="location.href='http://localhost:8888/wo9wo9/packagedo/meal4.do'">
      <div class="text1" style=" width:100%; height:100%;">
          <p class="card-text" style="margin-left:5px; margin-right: 5px; color: white;" > <br>저지방을 포함한 단백질 식단은 전통적인 다이어트 식단을 의미한다. 
            많은 보디빌더, 헬스 트레이너, 연예인 등의 피트니스에 예민한 종사자들이 애용하는 식이요법이다. 키토제닉과 다르게 저지방, 중탄수, 고단백을 위주로 섭취하는 다이어트다.
            닭가슴살을 섭취하는 것 외에는 나머지 영양소를 탄수화물로 가져가니, 일종의 탄수화물 다이어트라고 할 수도 있다.<br><br><br><br><br></p>
      </div>
    </div>
    <br><br><br><br>
  </div>
</div>

<div id="footer">
	<%@ include file="../common/main_bottom.jsp" %>
</div>




</body>
</html>