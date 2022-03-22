<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<section>
<div class="body" style="width:100%; height:auto; overflow:hidden">

  <div class="cbody body-content" style="width:80%; height:100%; display:inline-block; box-sizing: border-box; margin-left:13%;">
    <div id="layoutSidenav_content" align="center" style="margin:auto;">
        <main>
            <div class="container-fluid px-4" style="height:100%;">
                <h2 style="margin-top:10px;" align="center";>패키지 도시락 상품 관리</h2>
                <div class="card mb-4"  style="width:100%;">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        패키지 목록
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple" class="table table-hover style="border:1px solid gray">
                            <thead>
                                <tr>
                                    <th>상품번호</th>
                                    <th>카테고리</th>
                                    <th>상품명</th>
                                    <th>가격</th>
                                    <th>판매량</th>
                                    <th>상태</th>
                                    <th>정보수정</th>
                                    <th>삭제</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:choose>
                            		<c:when test="${ empty list }">
                            			<tr>
                            				<td colspan="7">상품이 존재하지 않습니다.</td>
                            			</tr>
                            		</c:when>
                            		<c:otherwise>
                            			<c:forEach var="dl" items="${ list }">
                            				<tr>
			                                  <td>${ dl.packageNum }</td>
			                                  <td>
			                                  	<c:if test="${ dl.packageNum2 eq 1 }">
			                                  		카토제닉 식단
			                                  	</c:if>
			                                  	<c:if test="${ dl.packageNum2 eq 2 }">
			                                  		채식주의 식단
			                                  	</c:if>
			                                  	<c:if test="${ dl.packageNum2 eq 3 }">
			                                  		지중해식 식단
			                                  	</c:if>
			                                  	<c:if test="${ dl.packageNum2 eq 4 }">
			                                  		단백질식 식단
			                                  	</c:if>
			                                  </td>
			                                  <td>${ dl.packageName }</td>
			                                  <td>${ dl.packagePrice }</td>
			                                  <td>${ dl.count }</td>
			                                  <td align="center">
			                                  
			                                    <c:choose>
													<c:when test="${ dl.status eq 'Y' }">
														<button class="act btn" style="width:80%; height:100%; font-size:18px;" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/unactivationPack.ad?packageNum=${ dl.packageNum }'">
															비활성화
														</button>
													</c:when>
													<c:otherwise>
														<button class="act btn" style="width:80%; height:100%; font-size:18px;" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/activationPack.ad?packageNum=${ dl.packageNum }'">
															활성화
														</button>
													</c:otherwise>															
												</c:choose>
											 
			                                  </td>
			                                  <td align="center">
			                                    <button type="button" class="upd btn" style="width:80%; height:100%; font-size:18px;" onclick="location.href='${pageContext.request.contextPath}/admin/updatePackageEnroll.ad?packageNum=${ dl.packageNum }&packageNum2=${ dl.packageNum2 }&packageName=${ dl.packageName }&packagePrice=${ dl.packagePrice }'">정보수정</button>
			                                  </td>
			                                  <td align="center">
			                                    <button type="button" class="del btn" style="width:80%; height:100%; font-size:18px;" onclick="location.href='${pageContext.request.contextPath}/admin/deletePack.ad?packageNum=${ dl.packageNum }'">삭제</button>
			                                  </td>
			                              </tr>
                            			</c:forEach>
                            		</c:otherwise>
                            	</c:choose>
                            </tbody>
                        </table>
                        <a href="${pageContext.request.contextPath}/admin/addPackageEnroll.ad" class="btn-sm btn-success adesign" style="margin:auto;">상품 추가</a>
                    </div>
                </div>
            </div>
        </main>
    </div>
  </div>

</div>
</section>
<%@ include file="../../../common/footer.jsp"  %>

</body>
</html>