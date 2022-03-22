<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <style>
  	#image-box {
		    width:100%;
		    height:50%;
		    overflow:hidden;
		    margin:0 auto;
		}
  </style>
</head>
<body>
    <%@ include file="main_top.jsp" %>
    <!-- Hero Section Begin -->
    <section class="hero">

        <div class="set-bg">
            <div id="demo" class="carousel slide" data-ride="carousel" style="height: 350px;">
                    <!-- Indicators -->
                    <ul class="carousel-indicators">
                      <li data-target="#demo" data-slide-to="0" class="active"></li>
                      <li data-target="#demo" data-slide-to="1"></li>
                      <li data-target="#demo" data-slide-to="2"></li>
                    </ul>
                    <!-- The slideshow -->
                    <div class="carousel-inner" style="width: 1000; height: 300;">
                      <div class="carousel-item active">
                        <a href="${pageContext.request.contextPath}/customercenter/event.do">
                        <img src="../resources/img/slide01.PNG" alt="New York" style="height: 350px;">
                        </a>
                      </div>
                      <div class="carousel-item">
                        <a href="${pageContext.request.contextPath}/customercenter/event.do">
                        <img src="../resources/img/slide02.PNG" alt="New York"style="height: 350px;" >
                        </a>
                      </div>
                      <div class="carousel-item">
                        <a href="${pageContext.request.contextPath}/customercenter/event.do">
                        <img src="../resources/img/slide03.PNG" alt="New York" style="height: 350px;">
                        </a>
                      </div>
                    </div>
                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                      <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                      <span class="carousel-control-next-icon"></span>
                    </a>
            </div>
        </div>
    </section>
    
    
    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>셀프 도시락 BEST ></h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*">모두</li>
                            <li data-filter=".oranges">반찬</li>
                            <li data-filter=".fresh-meat">국</li>
                            <li data-filter=".vegetables">밥</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="row featured__filter">

            <!--반판-->
            <c:choose>
                    <c:when test="${empty bestSelfImg}">
                        <a>추천 없음</a>
                    </c:when>
                    
                <c:otherwise>
                    <c:forEach var="bsi" items="${bestSelfImg}" end="3">
                        <div class="col-lg-3 col-md-4 col-sm-6 mix oranges">
                            <div class="featured__item">
                                <a href="${ pageContext.request.contextPath }/selfdo/meal.do">
                                <div class="featured__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/${bsi.bestImg}">
                                    
                                    <ul class="featured__item__pic__hover">
                                    </ul>
                                </div>
                                <div class="featured__item__text">
                                    <h6><a>${bsi.sideName}</a></h6>
                                </div>
                            </a>
                            </div>
                        </div>
                     </c:forEach>
                </c:otherwise>
            </c:choose>

            <!-- 밥-->
            <c:choose>
                <c:when test="${empty bestRice}">
                    <a>추천 없음</a>
                </c:when>
                
                <c:otherwise>
                 <c:forEach var="r" items="${bestRice}" end="3">
                    <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables">
                        <div class="featured__item">
                            <a href="${ pageContext.request.contextPath }/selfdo/meal.do">
                            <div class="featured__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/${r.bestRice}">
                            
                                <ul class="featured__item__pic__hover">
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a>${r.sideName}</a></h6>
                            </div>
                        </a>
                        </div>
                    </div>
                 </c:forEach>
                </c:otherwise>
           </c:choose>

                          <!-- 국-->
                          <c:choose>
                            <c:when test="${empty bestRice}">
                                <a>추천 없음</a>
                            </c:when>
                            
                            <c:otherwise>
                             <c:forEach var="bs" items="${bestSoup}" end="3">

                                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat">
                                    <div class="featured__item">
                                      <a href="${ pageContext.request.contextPath }/selfdo/meal.do">
                                        <div class="featured__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/${bs.bestSoup}">
                                            <ul class="featured__item__pic__hover">
                                            </ul>
                                        </div>
                                        <div class="featured__item__text">
                                            <h6><a>${bs.sideName}</a></h6>
                                        </div>
                                    </a>
                                    </div>
                                </div>
                             </c:forEach>
                            </c:otherwise>
                       </c:choose>
    </section>

        <!-- Banner Begin -->
        <div class="banner" style="margin-top: 50px;">
            <div class="container">
                <div class="row" style="margin-bottom: 50px;">
                    <div class="col-lg-12">
                        <div class="section-title from-blog__title">
                            <h2>어떤 도시락을 원해요 ?</h2>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="banner__pic">
                            <a href="${ pageContext.request.contextPath }/packagedo/category.do"><img src="../resources/img/banner/banner-3.jpg"></a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="banner__pic">
                            <a href="${ pageContext.request.contextPath }/selfdo/meal.do"><img src="../resources/img/banner/banner-4.jpg"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Banner End -->

    <!-- Featured Section End -->

            <section class="from-blog spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-title from-blog__title">
                                <h2>패키지 도시락 Best 3 ></h2>
                            </div>
                        </div>
                    </div>
                    
                        <c:choose>
                            <c:when test="${empty bestPackage}">
                                <a>추천 없음</a>
                            </c:when>
                            
                            <c:otherwise>
                             <c:forEach var="p" items="${bestPackage}" end="2">
                            <div class="col-lg-4 col-md-4 col-sm-6 mix fresh-meat vegetables" style="display: block; float: left;">
                                <div class="featured__item">
                                    <a href="${ pageContext.request.contextPath }/packagedo/meal${p.packageNum2}.do">
                                    <div class="featured__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/${p.bestPackageImg}">
                                        <ul class="featured__item__pic__hover">
                                        </ul>
                                    </div>
                                    <div class="featured__item__text">
                                        <h6><a>${p.packageName}</a></h6>
                                    </div>
                                </a>
                                </div>
                        </div>
                             </c:forEach>
                            </c:otherwise>
                       </c:choose>
                        
                </div>
            </section>

    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2 style="margin-top: 50px;">MD의 추천</h2>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">

                <c:choose>
					<c:when test="${empty mdPick}">
						<a>추천 없음</a>
					</c:when>
                    
                    <c:otherwise>
                    <c:forEach var="mp" items="${mdPick}" end="2">
                    <div class="col-lg-4 col-md-4 col-sm-6 mix fresh-meat vegetables" style="display: block; float: left;">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/${mp.bestImg}">
                            </div>
                            <div class="featured__item__text">
                                <h6><a>${mp.sideName}</a></h6>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    </c:otherwise>
               </c:choose>

               <c:choose>
                <c:when test="${empty bestRice}">
                    <a>추천 없음</a>
                </c:when>
                
                <c:otherwise>
                 <c:forEach var="r" items="${bestRice}" end="2">
                    <div class="col-lg-4 col-md-4 col-sm-6 mix fresh-meat vegetables" style="display: block; float: left;">
                        <div class="featured__item">
                         <a href="${ pageContext.request.contextPath }/selfdo/meal.do">
                            <div class="featured__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/${r.bestRice}">
                            </div>
                            <div class="featured__item__text">
                                <h6><a>${r.sideName}</a></h6>
                            </div>
                            </a>
                        </div>
                    </div>
                 </c:forEach>
                </c:otherwise>
           </c:choose>


    </section>
    <!-- Featured Section End -->

    <script>

        $('.set-bg').each(function() {
                var bg = $(this).data('setbg');
                $(this).css('background-image', 'url(' + bg + ')');
            });

            var slideIndex = 0;
    </script>

<%@ include file="main_bottom.jsp" %>

</body>
</html>