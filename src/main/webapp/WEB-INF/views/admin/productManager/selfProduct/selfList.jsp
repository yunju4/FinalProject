<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wo9wo9-관리자페이지</title>
</head>
<body style="margin: auto">
	<%@ include file="../../../common/sidevar.jsp"%>
	<div class="header">
		<%@include file="../../../common/header.jsp"%>
	</div>

	<div class="body" style="width: 100%; height: auto; overflow: hidden">
		<div class="cbody body-content"
			style="width: 80%; height: 100%; display: inline-block; box-sizing: border-box; margin-left: 13%;">
			<div id="layoutSidenav_content" align="center">
				<main>
					<div class="container-fluid px-4">
						<h3 style="margin-top: 10px" align="center">셀프 도시락 상품 관리</h3>
						<div class="card mb-4" style="width: 100%;">
							<div class="card-header">
								<i class="fas fa-table me-1"></i> 반찬 목록
							</div>
							<div class="card-body">
								<table id="datatablesSimple" class="table table-hover">
									<thead>
										<tr>
											<th>상품번호</th>
											<th>카테고리</th>
											<th>반찬명</th>
											<th>가격</th>
											<th>판매량</th>
											<th>상태</th>
											<th>수정</th>
											<th>삭제</th>
										</tr>
									</thead>
									<tbody id="selfbody">
										<c:choose>
											<c:when test="${ empty list }">
												<tr>
													<td colspan="8">상품이이 존재하지 않습니다.</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach var="sl" items="${ list }">
													<tr>
														<td>${ sl.sideNum }</td>
														<td>
															<c:if test="${ sl.categoryNum eq 1 }">
																반찬
															</c:if>
															<c:if test="${ sl.categoryNum eq 2 }">
																밥
															</c:if>
															<c:if test="${ sl.categoryNum eq 3 }">
																국
															</c:if>
															
														</td>
														<td>${ sl.sideName }</td>
														<td>${ sl.price } </td>
														<td>${ sl.count } </td>
														<td align="center">
															<c:choose>
																<c:when test="${ sl.status eq 'Y' }">
																	<button class="act btn" style="width:80%; height:100%; font-size:18px;" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/unactivation.ad?sideNum=${ sl.sideNum }'">
																		비활성화
																	</button>
																</c:when>
																<c:otherwise>
																	<button class="act btn" style="width:80%; height:100%; font-size:18px;" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/activation.ad?sideNum=${ sl.sideNum }'">
																		활성화
																	</button>
																</c:otherwise>															
															</c:choose>
														</td>
														<td align="center">
															<button class="upd btn" style="width:80%; height:100%; font-size:18px;" type="button"
																onclick="location.href='${pageContext.request.contextPath}/admin/updateSelfEnroll.ad?sideNum=${ sl.sideNum }&categoryNum=${ sl.categoryNum }&sideName=${ sl.sideName }&price=${ sl.price }'">수정</button>
														</td>
														<td align="center">
															<button class="del btn" style="width:80%; height:100%; font-size:18px;" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/deleteSelf.ad?sideNum=${sl.sideNum }'">삭제</button>
														</td>
													</tr>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									
									<!-- 
										<tr>
											<td>1</td>
											<td>반찬</td>
											<td>김치</td>
											<td>500원</td>
											<td>10</td>
											<td align="center">
												<button class="act btn-sm" type="button">활성화</button>
											</td>
											<td align="center">
												<button class="del btn-sm" type="button"
													onclick="location.href='${pageContext.request.contextPath}/admin/updateSelfEnroll.ad'">수정</button>
											</td>
											<td align="center">
												<button class="del btn-sm" type="button">삭제</button>
											</td>
										</tr>
									-->
									</tbody>
								</table>
								<a href="${pageContext.request.contextPath}/admin/addselfEnroll.ad" class="btn-sm btn-success adesign"
									style="margin: auto;">상품 추가</a>
									
							</div>
						</div>
					</div>
				</main>
			</div>
		</div>

	</div>

	<%@ include file="../../../common/footer.jsp"%>

</body>
</html>