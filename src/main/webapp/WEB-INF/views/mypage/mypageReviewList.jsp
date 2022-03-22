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
        background: rgb(106, 203, 248);
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
                        <h2>Review</h2>
                    </div>
                    <div class="accordion accordion-flush" id="accordionFlushExample">
                        <div class="accordion-item">
                        	<c:choose>
								<c:when test="${ empty list }">
									<div class="accordion accordion-flush" id="accordionFlushExample">
                        				<div class="accordion-item">
                            				<h2 class="accordion-header" id="flush-heading0">
				                                <button class="accordion-button collapsed rounded" style="font-family: 'BMDOHYEON'; border: 0.1px solid rgb(243, 221, 217);" type="button" aria-expanded="false" aria-controls="flush-collapseOne">
				                                  작성한 리뷰가 없습니다.
				                                </button>
                            				</h2>
                        				</div>
                    				</div>
								</c:when>
								<c:otherwise>
									<c:forEach var="r" items="${ list }" varStatus="status">
					                      <div class="accordion-item">
				                            <h2 class="accordion-header" id="flush-heading${ r.reviewListNum }">
				                                <button class="accordion-button collapsed rounded" style="font-family: 'BMDOHYEON'; border: 0.1px solid pink; background-color: rgb(243, 221, 217); color: white;" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse${ r.reviewListNum }" aria-expanded="false" aria-controls="flush-collapse${ r.reviewListNum }">
				                                    ${ r.sideName }
				                                </button>
				                            </h2>
				                            <div id="flush-collapse${ r.reviewListNum }" class="accordion-collapse collapse" aria-labelledby="flush-heading${ r.reviewListNum }" data-bs-parent="#accordionFlushExample">
				                                <div class="accordion-body">
				                                    <!-- 리뷰내용 -->
				                                    <div class="contact-form spad" style="padding-top: 10px; padding-bottom: 5px;">
				                                        <div class="container rounded">
				                                            <div class="row">
				                                                <div class="col-lg-12">
				                                                    <div class="text-center" style="padding-top: 20px; font-family: 'BMDOHYEON';padding-bottom: 20px;">
				                                                        <strong>리뷰 조회</strong>
				                                                    </div>
				                                                </div>
				                                            </div>
				                                            <form action="#">
				                                                <div class="row">
				                                                    <div class="col-lg-7 col-md-7">
				                                                        <input type="text" style="font-family: 'BMDOHYEON';" value="${ r.createDate }" readonly>
				                                                    </div>
				                                                    <div class="col-lg-5 col-md-5">
				                                                        <input type="text" style="font-family: 'BMDOHYEON';" value="${ r.basketType }" readonly>
				                                                    </div>
				                                                    <div class="col-lg-12 text-center">
				                                                        <textarea style="font-family: 'BMDOHYEON';" readonly>${ r.noticeContent }</textarea>
				                                                    </div>
				                                                </div>
				                                            </form>
				                                        </div>
				                                    </div>
				                                    <!-- 리뷰내용 끝 -->
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