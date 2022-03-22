<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>자주하는 질문</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
	
    <!-- Css Styles -->
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/style.css" type="text/css">
    <style>
	
        #main{
            width: 100%;
        }
        #contact{
            font-size: 25px;
        }
        #outer{
            height : 1200px;
        }
       
          .answer {
               display: none;
            padding-bottom: 30px;
          }
          #faq-title {
               font-size: 25px;
          }
          .faq-content {
            border-bottom: 1px solid #e0e0e0;
          }
          .question {
            font-size: 19px;
            padding: 30px 0;
            cursor: pointer;
            border: none;
            outline: none;
            background: none;
            width: 100%;
            text-align: left;
          }
          .question:hover {
            color: #2962ff;
          }
          [id$="-toggle"] {
            margin-right: 15px;
          }
          .selectBox{
              height:20px;
          }
        .menubar{
            color:black;
        }
       
    </style>
    
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
   
    <header class="header">
        <%@ include file="../common/main_top.jsp" %>
    </header>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="../resources/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>고객 센터</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5">
                    <div class="blog__sidebar">
                        <br><br>
                        <div class="blog__sidebar__item">
                            <h4>Categories</h4>
                            <ul>
                                <li><a href="notice.do?currentPage=1">공지사항</a></li>
                                <li><a href="onevsone.do?currentPage=1">1:1 문의</a></li>
                                <li><a href="faq.do">자주하는 질문</a></li>
                            </ul>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>고객센터</h4>
                            <div class="blog__sidebar__recent">
                                
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="../resources/img/blog/sidebar/sr-1.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h5> <strong>1800-1111</strong></h5>
                                    <span>평일, 토요일</span><br>
                                    <span>7:00 ~ 18:00</span><br>
                                    <span>공휴일 7:00 ~ 13:00</span><br>
                                    <span> (일요일 휴무)</span><br>
                                </div>
                               
                                
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-8 col-md-7">
                    <div id="menu2" class="container tab-pane active"><br>
                        <h3><strong>자주 묻는 질문</strong></h3>
                          <hr>
                          <br>
                          <table>
                            <td width="25%">&nbsp;&nbsp;&nbsp;전체 6개</td>
                            <td width="36.5%"></td>
                            
                        </table>
                          <div class="faq-content">
                            <button class="question" id="que-1"><span id="que-1-toggle">▷</span><span>wo9wo9는 무슨 의미입니까?</span></button>
                            <div class="answer" id="ans-1">wo9wo9는 와구와구 먹을 거리를 제공한다는 의미를 갖고 있습니다.</div>
                          </div>
                        <div class="faq-content">
                              <button class="question" id="que-2"><span id="que-2-toggle">▷</span><span>셀프 도시락이 무엇인가요?</span></button>
                              <div class="answer" id="ans-2">고객님이 원하는 반찬을 단계별로 고를 수 있는 기회를 제공해 주는 서비스입니다.</div>
                        </div>
                        <div class="faq-content">
                              <button class="question" id="que-3"><span id="que-3-toggle">▷</span><span>오프라인에서는 구매할 수 없나요?</span></button>
                              <div class="answer" id="ans-3">아쉽게도 저희 서비스는 온라인으로만 진행중입니다...</div>
                        </div>
                        <div class="faq-content">
                              <button class="question" id="que-4"><span id="que-4-toggle">▷</span><span>주문취소 어떻게 하나요?</span></button>
                              <div class="answer" id="ans-4">마이페이지 > 주문/배송조회 > 주문취소 가능한 상품의 주문취소 버튼 클릭하여 취소 사유와 함께 주문 취소 신청을 할 수 있습니다.
상품준비중 단계부터는 주문취소가 어려우니 참고부탁드립니다. </div>
                        </div>
                        <div class="faq-content">
                              <button class="question" id="que-5"><span id="que-5-toggle">▷</span><span>상품 반품 및 교환은 어떻게 하나요?</span></button>
                              <div class="answer" id="ans-5">주문 즉시 제작되는 Order made 상품 특성상 단순 변심으로 인한 반품/교환은 불가능합니다.
상품의 문제 발생으로 인한 반품/교환이 필요한 경우 그리팅 고객센터(1800-0700)으로 전화주시거나, 1:1문의 또는 카카오톡으로 문의하시면 신속하게 도움드리겠습니다.</div>
                        </div>
                        <div class="faq-content">
                              <button class="question" id="que-6"><span id="que-6-toggle">▷</span><span>반품 교환 배송비는 어떻게 처리되나요?</span></button>
                              <div class="answer" id="ans-6">
                              <p>
                              wo9ow9 상품 특성상 일부 상품에 한해서만 반품/교환이 가능하며, 단순 변심에 의한 반품/교환이 진행될 경우 고객님 부담의 배송비가 발생됩니다.<br>
                            ※ 반품/교환 배송비: 6,000원 (이미 배송비를 부담하신 경우에는 3,000원 발생)<br>
                            <br>
                            [고객님 부담의 경우]<br>
                            - 상품에 이상이 없거나 상품의 특성적인 부분의 경우<br>
                            - 단순변심에 의한 반품 및 교환하는 경우<br>
                            - 옵션 및 상품, 상품수량을 잘못 선택하여 주문했을 경우<br>
                            <br>
                            [wo9ow9 부담의 경우]<br>
                            - 수령한 상품이 파손/불량인 경우<br>
                            - 상품이 제공된 상품상세정보와 다른 경우<br>
                            - 주문한 상품과 다른 상품이 배송되거나 배송중 문제가 발생했을 경우<br></div>
                            </p>
                        </div>
                      	<br>
                     
                    </div>  
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <%@ include file="../common/main_bottom.jsp" %>
    </footer>
    <!-- Footer Section End -->

	<script src="../resources/js/jquery-3.3.1.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/jquery.nice-select.min.js"></script>
    <script src="../resources/js/jquery-ui.min.js"></script>
    <script src="../resources/js/jquery.slicknav.js"></script>
    <script src="../resources/js/mixitup.min.js"></script>
    <script src="../resources/js/owl.carousel.min.js"></script>
    <script src="../resources/js/main.js"></script>


</body>
	<!-- faq토글 기능  -->
	<script>
		const items = document.querySelectorAll('.question');
		
		function openCloseAnswer() {
		  const answerId = this.id.replace('que', 'ans');
		
		  if(document.getElementById(answerId).style.display === 'block') {
		    document.getElementById(answerId).style.display = 'none';
		    document.getElementById(this.id + '-toggle').textContent = '▷';
		  } else {
		    document.getElementById(answerId).style.display = 'block';
		    document.getElementById(this.id + '-toggle').textContent = '▽';
		  }
		}
		
		items.forEach(item => item.addEventListener('click', openCloseAnswer));
	</script>
</html>