<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    .contact-form {
        padding-top: 10px;
        padding-bottom: 5px;
    }
    input:read-only {
    	background-color: white;
	}

</style>
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
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
                    <div class="section-title product__discount__title" style="margin-bottom: 30px; text-align: center;">
                        <h2>Inquiry details</h2>
                    </div>
                    <div class="accordion accordion-flush" id="accordionFlushExample">
                        <div class="accordion-item">
                        	<c:choose>
								<c:when test="${ empty list }">
									<div class="accordion accordion-flush" id="accordionFlushExample">
                        				<div class="accordion-item">
                            				<h2 class="accordion-header" id="flush-heading0">
				                                <button class="accordion-button collapsed rounded" style="font-family: 'BMDOHYEON'; border: 0.1px solid goldenrod;" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
				                                  문의 내역이 없습니다.
				                                </button>
                            				</h2>
                        				</div>
                    				</div>
								</c:when>
								<c:otherwise>
									<c:forEach var="q" items="${ list }" varStatus="status">
					                      <div class="accordion-item">
				                            <h2 class="accordion-header" id="flush-heading${ q.rowNum }">
				                                <button class="accordion-button collapsed rounded" style="font-family: 'BMDOHYEON'; border: 0.1px solid goldenrod;" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse${ q.rowNum }" aria-expanded="false" aria-controls="flush-collapse${ q.rowNum }/>">
				                                    ${ q.QTitle }
				                                </button>
				                            </h2>
				                            <div id="flush-collapse${ q.rowNum }" class="accordion-collapse collapse" aria-labelledby="flush-heading${ q.rowNum }/>" data-bs-parent="#accordionFlushExample">
				                                <div class="accordion-body">
				                                    <!-- 1:1 문의내용 -->
				                                    <div class="contact-form spad" style="padding-top: 10px; padding-bottom: 5px;">
				                                        <div class="container rounded">
				                                            <div class="row">
				                                                <div class="col-lg-12">
				                                                    <div class="text-center" style="padding-top: 20px; padding-bottom: 20px;">
				                                                        <h5><strong>1:1 문의 내역</strong></h5>
				                                                    </div>
				                                                </div>
				                                            </div>
				                                            <form>
				                                                <div class="row">
				                                                    <div class="col-lg-7 col-md-7">
				                                                        <fmt:parseDate value="${ q.QDate }" var="eDate" pattern="yyyy-MM-dd"/>
																		<input type="text" value="<fmt:formatDate value="${ eDate }"/>" readonly>
				                                                    </div>
				                                                    <div class="col-lg-5 col-md-5">
				                                                        <input type="text" value=
				                                                        	<c:choose>
												                            	<c:when test="${ q.categoryNum eq '1'}">
												                            		'셀프도시락'
												                            	</c:when>
												                            	<c:when test="${ q.categoryNum eq '2'}">
												                            		'패키지도시락'
												                            	</c:when>
												                            	<c:when test="${ q.categoryNum eq '3'}">
												                            		'서비스'
												                            	</c:when>
												                            	<c:otherwise>
												                            		'기타'
												                            	</c:otherwise>
												                            </c:choose>
				                                                        readonly/>
				                                                    </div>
				                                                    <div class="col-lg-12 text-center">
				                                                        <textarea readonly>${ q.QContent }</textarea>
				                                                    </div>
				                                                </div>
				                                            </form>
				                                        </div>
				                                    </div>
				                                    <!-- 1:1 문의내용 끝 -->
				                                    
				                                    <!-- 관리자 답변 -->
				                                    <c:choose>
				                                    	<c:when test="${ q.ADate eq null || '' }">
						                                    <div class="contact-form spad" style="padding-top: 10px; padding-bottom: 5px;">
						                                        <div class="container rounded" style="border: 0.1px solid yellowgreen;">
						                                            <div class="row">
						                                                <div class="col-lg-12">
						                                                    <div class="text-center" style="padding-top: 20px; padding-bottom: 20px;">
						                                                        <h5><strong>문의 답변</strong></h5>
						                                                    </div>
						                                                </div>
						                                            </div>
						                                            <form>
						                                                <div class="row">
						                                                    <div class="col-lg-12 text-center">
						                                                        <textarea readonly>문의 주신 내역에 아직 답변 전입니다. 빠른 시일내에 답변드리겠습니다. 죄송합니다.</textarea>
						                                                    </div>
						                                                </div>
						                                            </form>
						                                        </div>
						                                    </div>
						                                    <!-- 관리자 답변 끝 -->
					                                    </c:when>
					                                 	<c:otherwise>
					                                    <div class="contact-form spad">
					                                        <div class="container rounded" style="border: 0.1px solid yellowgreen;">
					                                            <div class="row">
					                                                <div class="col-lg-12">
					                                                    <div class="text-center" style="padding-top: 20px; padding-bottom: 20px;">
					                                                        <h5><strong>문의 답변</strong></h5>
					                                                    </div>
					                                                </div>
					                                            </div>
					                                            <form>
					                                                <div class="row">
					                                                    <div class="col-lg-7 col-md-7">
						                                                    <fmt:parseDate value="${ q.ADate }" var="eDate" pattern="yyyy-MM-dd"/>
																			<input type="text" value="<fmt:formatDate value="${ eDate }"/>" readonly>
																			
					                                                    </div>
					                                                    <div class="col-lg-5 col-md-5">
					                                                        <input type="text" readonly value=
					                                                        	<c:choose>
													                            	<c:when test="${ q.categoryNum eq '1'}">
													                            		'셀프도시락'
													                            	</c:when>
													                            	<c:when test="${ q.categoryNum eq '2'}">
													                            		'패키지도시락'
													                            	</c:when>
													                            	<c:when test="${ q.categoryNum eq '3'}">
													                            		'서비스'
													                            	</c:when>
													                            	<c:otherwise>
													                            		'기타'
													                            	</c:otherwise>
													                            </c:choose>
					                                                        />
					                                                    </div>
					                                                    <div class="col-lg-12 text-center">
					                                                        <textarea readonly>${ q.AContent }</textarea>
					                                                    </div>
					                                                </div>
					                                            </form>
					                                        </div>
					                                    </div>
					                                    <!-- 관리자 답변 끝 -->
					                                    </c:otherwise>
				                                    </c:choose>
				                                </div>
				                            </div>
				                        </div>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->
    <script>
	window.scrollTo(0, 300);
	</script>
    <%@ include file="../common/main_bottom.jsp" %>
</body>
</html>