<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
    <link rel="stylesheet" href="style.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">

     <!-- 몸체  -->
     
     <!-- 몸체 끝 -->
   </head>
   <style>
       /*네비바 스타일*/
       /* Google Font Link */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
        *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins" , sans-serif;
        }
        .sidebar{
        position: fixed;
        left: 0;
        top: 0;
        height: 100%;
        width: 78px;
        background: rgb(127, 173, 57);
        padding: 6px 14px;
        z-index: 99;
        transition: all 0.5s ease;
        }
        .sidebar.open{
        width: 250px;
        }
        .sidebar .logo-details{
        height: 60px;
        display: flex;
        align-items: center;
        position: relative;
        }
        .sidebar .logo-details .icon{
        opacity: 0;
        transition: all 0.5s ease;
        }
        .sidebar .logo-details .logo_name{
        color: #fff;
        font-size: 20px;
        font-weight: 600;
        opacity: 0;
        transition: all 0.5s ease;
        }
        .sidebar.open .logo-details .icon,
        .sidebar.open .logo-details .logo_name{
        opacity: 1;
        }
        .sidebar .logo-details #btn{
        position: absolute;
        top: 50%;
        right: 0;
        transform: translateY(-50%);
        font-size: 22px;
        transition: all 0.4s ease;
        font-size: 23px;
        text-align: center;
        cursor: pointer;
        transition: all 0.5s ease;
        }
        .sidebar.open .logo-details #btn{
        text-align: right;
        }
        .sidebar i{
        color: #fff;
        height: 60px;
        min-width: 50px;
        font-size: 28px;
        text-align: center;
        line-height: 60px;
        }
        .sidebar .nav-list{
        margin-top: 20px;
        height: 100%;
        }
        .sidebar li{
        position: relative;
        margin: 8px 0;
        list-style: none;
        }
        .sidebar li .tooltip{
        position: absolute;
        top: -20px;
        left: calc(100% + 15px);
        z-index: 3;
        background: #fff;
        box-shadow: 0 5px 10px rgb(127, 173, 57);
        padding: 6px 12px;
        border-radius: 4px;
        font-size: 15px;
        font-weight: 400;
        opacity: 0;
        white-space: nowrap;
        pointer-events: none;
        transition: 0s;
        }
        .sidebar li:hover .tooltip{
        opacity: 1;
        pointer-events: auto;
        transition: all 0.4s ease;
        top: 50%;
        transform: translateY(-50%);
        }
        .sidebar.open li .tooltip{
        display: none;
        }
        .sidebar input{
        font-size: 15px;
        color: #FFF;
        font-weight: 400;
        outline: none;
        height: 50px;
        width: 100%;
        width: 50px;
        border: none;
        border-radius: 12px;
        transition: all 0.5s ease;
        background: rgb(127, 173, 57);
        }
        .sidebar.open input{
        padding: 0 20px 0 50px;
        width: 100%;
        }
        .sidebar .bx-search{
        position: absolute;
        top: 50%;
        left: 0;
        transform: translateY(-50%);
        font-size: 22px;
        background: rgb(127, 173, 57);
        color: #FFF;
        }
        .sidebar.open .bx-search:hover{
        background: rgb(127, 173, 57);
        color: #FFF;
        }
        .sidebar .bx-search:hover{
        background: #FFF;
        color: rgb(127, 173, 57);
        }
        .sidebar li a{
        display: flex;
        height: 100%;
        width: 100%;
        border-radius: 12px;
        align-items: center;
        text-decoration: none;
        transition: all 0.4s ease;
        background: rgb(127, 173, 57);
        }
        .sidebar li a:hover{
        background: #FFF;
        }
        .sidebar li a .links_name{
        color: #fff;
        font-size: 15px;
        font-weight: 400;
        white-space: nowrap;
        opacity: 0;
        pointer-events: none;
        transition: 0.4s;
        }
        .sidebar.open li a .links_name{
        opacity: 1;
        pointer-events: auto;
        }
        .sidebar li a:hover .links_name,
        .sidebar li a:hover i{
        transition: all 0.5s ease;
        color: rgb(127, 173, 57);
        }
        .sidebar li i{
        height: 50px;
        line-height: 50px;
        font-size: 18px;
        border-radius: 12px;
        }
        .sidebar li.profile{
        position: fixed;
        height: 60px;
        width: 78px;
        left: 0;
        bottom: -8px;
        padding: 10px 14px;
        background: rgb(127, 173, 57);
        transition: all 0.5s ease;
        overflow: hidden;
        }
        .sidebar.open li.profile{
        width: 250px;
        }
        .sidebar li .profile-details{
        display: flex;
        align-items: center;
        flex-wrap: nowrap;
        }
        .sidebar li img{
        height: 45px;
        width: 45px;
        object-fit: cover;
        border-radius: 6px;
        margin-right: 10px;
        }
        .sidebar li.profile .name,
        .sidebar li.profile .job{
        font-size: 15px;
        font-weight: 400;
        color: #fff;
        white-space: nowrap;
        }
        .sidebar li.profile .job{
        font-size: 12px;
        }
        .sidebar .profile #log_out{
        position: absolute;
        top: 50%;
        right: 0;
        transform: translateY(-50%);
        background: rgb(127, 173, 57);
        width: 100%;
        height: 60px;
        line-height: 60px;
        border-radius: 0px;
        transition: all 0.5s ease;
        }
        .sidebar .profile #log_out:hover {
        	background:#fff;
        }
        
        .sidebar.open .profile #log_out{
        width: 50px;
        background: rgb(127, 173, 57);
        }
        .sidebar.open .profile #log_out:hover{
        	background:#fff;
        }
        
        .home-section{
        position: relative;
        background: #E4E9F7;
        min-height: 100vh;
        top: 0;
        left: 78px;
        width: calc(100% - 78px);
        transition: all 0.5s ease;
        z-index: 2;
        }
        .sidebar.open ~ .home-section{
        left: 250px;
        width: calc(100% - 250px);
        }
        .home-section .text{
        display: inline-block;
        color: rgb(127, 173, 57);
        font-size: 25px;
        font-weight: 500;
        margin: 18px
        }
        @media (max-width: 420px) {
        .sidebar li .tooltip{
            display: none;
        }
        }
        /*네비바 스타일 끝*/

        /*몸체 스타일*/
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

        .card {
        display:inline-block;
        margin:10px;
        box-sizing: border-box;
        }
    </style>

    <style>
        .login {
        width:277px;
        margin:auto;
        }
    </style>

    <style>
        div {
        box-sizing: border-box;
        }
        .cbody {
        float:left;
        }
        .ex:hover {
        color:black;
        }
        .gnav li {
        border-top:1px solid rgb(127, 173, 57);
        border-bottom:1px solid rgb(127, 173, 57);
        margin:20px;
        }

        .mbody {
        width:50%;
        height:100%;
        padding-top:70px;
        float:left;
        }

        .nav a:hover {
        background:rgb(127, 173, 57);
        color:white;
        }

        .card-header{
        background:rgb(127, 173, 57);
        color:white;
        }
        /*모체 스타일 끝*/
   </style>
<body>
    <div class="wrap" style="width:100%">
  <div class="sidebar">
    <div class="logo-details">
        <div class="logo_name">Wo9Wo9</div>
        <i class='bx bx-menu' id="btn" ></i>
    </div>
    <ul class="nav-list">
      <li>
        <a href="${pageContext.request.contextPath}/admin/adminmain.do">
          <i class='bx bx-grid-alt'></i>
          <span class="links_name">대쉬보드</span>
        </a>
         <span class="tooltip">대쉬보드</span>
      </li>
      <li>
        <a href="${pageContext.request.contextPath}/admin/productmain.do">
          <i class='bx bx-pie-chart-alt-2' ></i>
          <span class="links_name">상품 관리</span>
        </a>
        <span class="tooltip">상품 관리</span>
      </li>
      <li>
       <a href="${pageContext.request.contextPath}/memberList">
         <i class='bx bx-user' ></i>
         <span class="links_name">회원관리</span>
       </a>
       <span class="tooltip">회원관리</span>
     </li>
     <li>
       <a href="${pageContext.request.contextPath}/inquiryList">
         <i class='bx bx-chat' ></i>
         <span class="links_name">문의사항 관리</span>
       </a>
       <span class="tooltip">문의사항 관리</span>
     </li>
     
     <li>
       <a href="${pageContext.request.contextPath}/orderList">
         <i class='bx bx-cart-alt' ></i>
         <span class="links_name">주문 관리</span>
       </a>
       <span class="tooltip">주문 관리</span>
     </li>
     <li>
        <a href="${pageContext.request.contextPath}/noticeList">
          <i class='bx bx-folder' ></i>
          <span class="links_name">공지사항</span>
        </a>
        <span class="tooltip">공지사항 관리</span>
      </li>
      <!--
     <li>
       <a href="#">
         <i class='bx bx-heart' ></i>
         <span class="links_name">Saved</span>
       </a>
       <span class="tooltip">Saved</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-cog' ></i>
         <span class="links_name">Setting</span>
       </a>
       <span class="tooltip">Setting</span>
     </li>
     -->
     <li class="profile">
         <div class="profile-details">
           <!--<img src="profile.jpg" alt="profileImg">-->
           <div class="name_job">
             <div class="name">관리자님 환영합니다.</div>
             <div class="job">Wo9Wo9</div>
           </div>
         </div>
         <a class="logout" href="${pageContext.request.contextPath}/admin/logout.ad"><i class='bx bx-log-out' id="log_out"></i></a>
     </li>
    </ul>
  </div>
  <script>
	  let sidebar = document.querySelector(".sidebar");
	  let closeBtn = document.querySelector("#btn");
	  let searchBtn = document.querySelector(".bx-search");
	
	  closeBtn.addEventListener("click", ()=>{
	    sidebar.classList.toggle("open");
	    menuBtnChange();//calling the function(optional)
	  });
	
	  searchBtn.addEventListener("click", ()=>{ // Sidebar open when you click on the search iocn
	    sidebar.classList.toggle("open");
	    menuBtnChange(); //calling the function(optional)
	  });
	
	  // following are the code to change sidebar button(optional)
	  function menuBtnChange() {
	   if(sidebar.classList.contains("open")){
	     closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
	   }else {
	     closeBtn.classList.replace("bx-menu-alt-right","bx-menu");//replacing the iocns class
	   }
	  }
  </script>
  </div>
</body>
</html>