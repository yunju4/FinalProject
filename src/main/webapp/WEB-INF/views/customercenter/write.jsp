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
    <title>1:1문의 등록</title>

   
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>

    <!-- Header Section Begin -->
    <header class="header">
        <%@ include file="../common/main_top.jsp" %>
    </header>
    <!-- Header Section End -->

    
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
                    <div id="home" class="container tab-pane active"><br>
                        <h3><strong>1:1 문의</strong></h3>
                        <hr>
                        <br>
                        
                        <div id="home2" class="container">
                            <form method="post" action="enrollQuestion.do">
                                                           카테고리 
                                <br>
                                <div >
                                    <select name="categoryNum">
                                        <option value="1">패키지도시락</option>
                                        <option value="2">셀프도시락</option>
                                        <option value="3">서비스</option>
                                        <option value="4">기타</option>
                                    </select>
                                </div>
                                <br>
                                <br>
                                <div class="mb-3">
                                    <label for="title">제목</label>
                                    <input type="text" class="form-control" name="qTitle" placeholder="제목을 입력해 주세요">
                                </div>
                
                
                                <div class="mb-3">
                                    <label for="content">내용</label>
                                    <textarea class="form-control" rows="5" name="qContent" placeholder="내용을 입력해 주세요" ></textarea>
                                </div>
                                
                                
                
                            <div align="center">
                                <button type="submit" name="memberId" value="${loginUser.memberNum }" class="btn btn-sm btn-success" id="btnSave">저장</button>
                                <button type="button" class="btn btn-sm btn-success" id="btnList">목록</button>
                            </div>
                
                            </form>
                
                            
                            
                        </div>
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

	


</body>

</html>