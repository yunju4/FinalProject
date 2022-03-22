<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="margin:auto">
<%@ include file="../../../common/sidevar.jsp" %>
<div class="header">
  <%@include file="../../../common/header.jsp" %>
</div>

<div class="body" style="width:100%; height:auto; overflow:hidden">

  <div class="cbody body-content" style="width:80%; height:100%; display:inline-block; box-sizing: border-box; margin-left:13%;">
    <div id="layoutSidenav_content" align="center">
        <main>
            <div class="container-fluid px-4">
              <form action="updateSelf.ad" method="post" enctype="multipart/form-data">
                <h3 style="margin-top:10px;" align="center";>셀프 도시락 상품 관리</h3>
                <div class="card mb-4"  style="width:100%;">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        반찬
                    </div>
                    <div class="card-body">
                        <table>
	                            <tr class="ttt">
	                              <th>카테고리</th>
	                              <input type="hidden" name="sideNum" value="${ self.sideNum }">
	                              <td>
	                                <select name="categoryNum" style="width:100%;">
	                                  <c:if test="${ self.categoryNum eq 1 }">
		                                  <option value=1 selected>반찬</option>
		                                  <option value=2>밥</option>
		                                  <option value=3>국</option>
	                                  </c:if>
	                                  <c:if test="${ self.categoryNum eq 2 }">
		                                  <option value=1>반찬</option>
		                                  <option value=2 selected>밥</option>
		                                  <option value=3>국</option>
	                                  </c:if>
	                                  <c:if test="${ self.categoryNum eq 3 }">
		                                  <option value=1>반찬</option>
		                                  <option value=2>밥</option>
		                                  <option value=3 selected>국</option>
	                                  </c:if>
	                                  
	                                </select>
	                              </td>
	                            </tr>
	                            <tr class="ttt">
	                              <th>상품명</th>
	                              <td>
	                                <input type="text" name="sideName" style="width:100%;" value="${ self.sideName }"> 
	                              </td>
	                            </tr>
	                            <tr class="ttt">
	                              <th>상품가격</th>
	                              <td>
	                                <input type="number" name="price" style="width:100%;" value="${ self.price }"> 
	                              </td>
	                            </tr>
	                            <tr class="ttt">
										<th>상품 이미지</th>
										<td>
											<img id="titleImg" src="${ pageContext.request.contextPath }/${ selfAtt.titleImg }" width="250" height="170" />
											<input type="file" id="file1" name="upfile" onchange="loadImg(this, 1);" disabled>
										</td>
									</tr>
	                            <tr class="ttt">
	                              <td colspan="2">
	                                <button class="btn-success adesign" type="submit" style="width:50%; float:left;">수정하기</button>
	                                <button class="upd btn-warning" type="button"
												style="width: 50%; float: left;" onclick="location.href='${pageContext.request.contextPath}/admin/selfList.do'">뒤로가기</button>
	                              </td>
	                            </tr>
                        </table>
                        
                        <script>
							$(function(){
								/*$("#file1").hide();*/
								
								$("#titleImg").click(function() {
									$("#file1").click();
								});
								
								localhost.href='${pageContext.request.contextPath}/admin/selectOriginImg.ad'
								
							});
							
							function loadImg(inputFile, num) {
								if(inputFile.files.length == 1) { // 파일이 있는 경우
	
			                        // 선택된 파일을 읽어들여서 그 영역에 맞는 곳에 미리보기
	
			                        // 파일을 읽어들일 FileReader 객체 생성
			                        var reader = new FileReader();
	
			                        // FileReader 객체로부터 파일을 읽어들이는 메소드를 호출
			                        // 어느 파일을 읽어들일건지 매개변수로 제시해야 함!!
			                        // 0 번 인덱스에 담긴 파일 정보를 제시
			                        reader.readAsDataURL(inputFile.files[0]);
			                        // => 해당 파일을 읽어들이는 순간
			                        //    해당 그 파일만의 고유한 url 이 부여됨
			                        // => 해당 url 을 src 속성으로 부여할것! (attr)
	
			                        // 파일 읽기가 완료되었을 때 실행할 함수를 정의
			                        reader.onload = function(e){
			                            // e 의 target => e.target => 이벤트 당한 객체 (this)
	
			                            // e 의 target.result 에 각 파일의 url 이 담긴다.
			                            // e.target.result == this.result
			                            
			                            // 각 영역에 맞춰서 이미지 미리보기
			                            switch(num) {
			                                case 1 : $("#titleImg").attr("src", e.target.result).attr("art", "이미지 없음"); break;
			                                case 2 : $("#contentImg1").attr("src", e.target.result); break;
			                                case 3 : $("#contentImg2").attr("src", e.target.result); break;
			                                case 4 : $("#contentImg3").attr("src", e.target.result); break;
			                            }
			                        };
	
			                    }
			                    else { // 파일이 없는 경우
			                        // 미리보기 사라지게 하기
			                        // src=null 을 담아서 사라지게 할 것
	
			                        switch(num) {
			                            case 1 : $("#titleImg").attr("src", null); break;
			                            case 2 : $("contentImg1").attr("src", null); break;
			                            case 3 : $("contentImg2").attr("src", null); break;
			                            case 4 : $("contentImg3").attr("src", null); break;
			                        }
			                    }
							}
						</script>
                    </div>
                </div>
              </form>
            </div>
        </main>
      </div>
  </div>

</div>

<%@ include file="../../../common/footer.jsp"  %>


</body>
</html>