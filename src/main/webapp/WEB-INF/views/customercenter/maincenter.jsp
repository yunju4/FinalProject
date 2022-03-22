<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와구와구|고객센터</title>

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
	<div id="outer">	
		<div id="header">
			<%@include file = "../common/main_top.jsp" %>
		</div>
		<br><br>
		<div id="body">
			<table  id="main">
	            <td width="20%" height="500px">
	            	<hr>
	            	<div>
	            		
		            	<ul class="nav flex-column">
						    <li class="nav-item">
						      &nbsp;&nbsp;&nbsp;<a class="menubar" href="${ pageContext.request.contextPath }/customercenter/notice.do">공지사항</a>
						    </li>
						    <li class="nav-item">
						      &nbsp;&nbsp;&nbsp;<a class="menubar" href="${ pageContext.request.contextPath }/customercenter/onevsone.do">1:1문의</a>
						    </li>
						    <li class="nav-item">
						      &nbsp;&nbsp;&nbsp;<a class="menubar" href="${ pageContext.request.contextPath }/customercenter/faq.do">FAQ</a>
						    </li>
						</ul>
					</div>
					
	                <hr>
					<div>
						<p>
							  &nbsp;&nbsp;&nbsp;고객센터<br>
							  &nbsp;&nbsp;&nbsp;<strong id="contact">1800-1111</strong><br>
				              &nbsp;&nbsp;&nbsp;평일, 토요일<br>
				              &nbsp;&nbsp;&nbsp;7:00 ~ 18:00<br>
				              &nbsp;&nbsp;&nbsp;공휴일 7:00 ~ 13:00<br>
				              &nbsp;&nbsp;&nbsp;(일요일 휴무)
	
						</p>
					</div>
	            </td>
	       
	            <td width="80%" height="500px">
	            	<div class="tab-content">
					    <div id="home" class="container tab-pane active"><br>
						    <h3><strong>공지사항</strong></h3>
						    <hr>
						    <table >
		            			<td width="25%">&nbsp;&nbsp;&nbsp;전체 52개</td>
		            			<td width="36.5%"></td>
		            			<td>
		            				<form class="form-inline" action="/action_page.php">
						    			<input class="form-control mr-sm-2" type="text" placeholder="Search">
						    			<button class="btn btn-primary active" type="submit">Search</button>
					  				</form>
					  			</td>
		            		</table>
		            		<br>
		            		
		            		<div id="home2" class="container">
						
							  	<table class="table table-hover">
								   	<thead>
								   		
								   		<tr width="100%">
								    	    <th width="6%">No.</th>
								        	<th width="40%">제목</th>
								        	<th width="20%">등록일</th>
								        	<th width="15%">조회수</th>
								    	</tr>
								    </thead>
								    <tbody>
								    
								      	<tr>					      	
								        	<td>8</td>
								        	<td>안녕하십니까?</td>
								        	<td>2021-12-31</td>
								        	<td>7</td>
								      	</tr>
								      	<tr>
								        	<td>7</td>
								        	<td>새로운 이벤트에 참여하세요.</td>
								        	<td>2021-12-31</td>
								        	<td>6</td>
								      	</tr>
								      	<tr>
								        	<td>6</td>
								        	<td>오류 수정에 대한 안내드립니다.</td>
								        	<td>2021-12-31</td>
								        	<td>4</td>
								      	</tr>
								      	<tr>
								        	<td>5</td>
								        	<td>그만하고 싶어요!</td>
								        	<td>2021-12-31</td>
								        	<td>9</td>
								      	</tr>
								      	<tr>
								        	<td>4</td>
								        	<td>공지사항이 너무 길어요.</td>
								        	<td>2021-12-31</td>
								        	<td>8</td>
								      	</tr>
								      	<tr>
								        	<td>3</td>
								        	<td>정말 쓸게 드럽게 없네요.</td>
								        	<td>2021-12-31</td>
								        	<td>5</td>
								      	</tr>
								      	<tr>
								        	<td>2</td>
								        	<td>서비스 안내</td>
								        	<td>2021-12-31</td>
								        	<td>8</td>
								      	</tr>
								      	<tr>
								        	<td>1</td>
								        	<td>기타</td>
								        	<td>2021-12-31</td>
								        	<td>13</td>
								      	</tr>
								   	</tbody>
								</table>
							</div>
					    </div>
					    <div id="menu1" class="container tab-pane fade"><br>
					      <h3><strong>1:1 문의</strong></h3>
					      <hr>
					      <br>
					      <table>
		            			<td width="25%">&nbsp;&nbsp;&nbsp;전체 52개</td>
		            			<td width="36.5%" align="right">
		            			
		            				<select name="type">
										<option value="BOARD_TITLE">제목</option>
										<option value="BOARD_WRITER">작성자</option>
									</select>
		            			</td>
		            			<td>
		            			
		            				<form class="form-inline" action="/action_page.php">
						    			<input class="form-control mr-sm-2" type="text" placeholder="Search">
						    			<button class="btn btn-primary active" type="submit">Search</button>
					  				</form>
					  			
					  			</td>
		            		</table>
		            		<br>
		            		<div class="container">
						
							  	<table class="table table-hover" >
								   	<thead>
								   		<tr width="100%">
								    	    <th width="10%">No.</th>
								        	<th width="15%">카테고리</th>
								        	<th width="40%">제목</th>
								        	<th width="10%">작성자</th>
								        	<th width="15%">작성일</th>
								        	<th width="10%">조회수</th>	
								    	</tr>
								    </thead>
								    <tbody>
								      	<tr>
								        	<td>8</td>
								        	<td>[환불문의]</td>
								        	<td>안녕하십니까? </td>
								        	<td>user01</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								      	<tr>
								        	<td>7</td>
								        	<td>[교환문의]</td>
								        	<td>mary@example.com</td>
								        	<td>6</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								      	<tr>
								        	<td>6</td>
								        	<td>[상품문의]</td>
								        	<td>july@example.com</td>
								        	<td>4</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								      	<tr>
								        	<td>5</td>
								        	<td>[서비스문의]</td>
								        	<td>july@example.com</td>
								        	<td>9</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								      	<tr>
								        	<td>4</td>
								        	<td>[환불문의]</td>
								        	<td>july@example.com</td>
								        	<td>8</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								      	<tr>
								        	<td>3</td>
								        	<td>[교환문의]</td>
								        	<td>july@example.com</td>
								        	<td>5</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								      	<tr>
								        	<td>2</td>
								        	<td>[서비스문의]</td>
								        	<td>july@example.com</td>
								        	<td>8</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								      	<tr>
								        	<td>1</td>
								        	<td>[기타문의]</td>
								        	<td>2021-12-31</td>
								        	<td>13</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								   	</tbody>
								</table>
								<table width="100%">
		            			<td width="10.6%"></td>
		            			<td width="78.8%"></td>
		            			<td width="10.6%">
		            				<%-- <c:if test="${ loginUser == null }">
										<a class="btn btn-primary active" href="write.do">글작성</a>
									</c:if> --%>
		            				<a class="btn btn-primary active" href="write.do">글작성</a>
					  			</td>
		            		</table>
							</div>
					    </div>
					    <div id="menu2" class="container tab-pane fade"><br>
					        <h3><strong>자주 묻는 질문</strong></h3>
					      	<hr>
					      	<br>
					      	<table >
		            			<td width="25%">&nbsp;&nbsp;&nbsp;전체 52개</td>
		            			<td width="36.5%"></td>
		            			<td>
		            				<form class="form-inline" action="/action_page.php">
						    			<input class="form-control mr-sm-2" type="text" placeholder="Search">
						    			<button class="btn btn-primary active" type="submit">Search</button>
					  				</form>
					  			</td>
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
					      
					    </div>
					    
					    <div id="menu3" class="container tab-pane fade"><br>
					        <h3><strong>공지사항</strong></h3>
					      	<hr>
					      	<br>
					  
					      
					    </div>
					</div>
	            </td>
			</table>
		</div>
	</div>
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
	
	
</body>
</html>