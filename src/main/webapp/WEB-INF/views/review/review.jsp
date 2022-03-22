<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	
</head>
<body>
	<header class="header">
        <%@ include file="../common/main_top.jsp" %>
    </header>
    <hr>
    <br>
	<div class="container">
	
		<table class="table" id="list-area" width="50%">
			<thead>
				<tr>
					<th>글번호</th>
					<th>별점</th>
					<th>내용</th>
					<th>작성자</th>
					<th>날짜</th>
					
				</tr>
			</thead>
			<tbody></tbody>
			
		</table>
		<br>
		
		<div align="center">
			<table class="table">
			
				<tr>
				
					<td width="7%"></td>
					
					<td>
						<textarea id="replyContent" cols="70" rows="2" style="resize:none; margin-top:1px;" placeholder="내용을 입력해 주세요.."></textarea>
        			   	
						</td>
					<td>
						
					별점:<select id="point" style="margin-top:10px;">
							<option value="1">1점</option>
							<option value="2">2점</option>
							<option value="3">3점</option>
							<option value="4">4점</option>
							<option value="5">5점</option>
						</select>
					</td>
					<td>
						<c:if test="${ loginUser != null }">
                            <button onclick="insertReply();" class="btn btn-success" style="margin-top:10px;">등록</button>
                        </c:if>
							
						<input type="hidden" id="userName" value="${loginUser.memberName }">
					</td>
					<td width="17%"></td>
				</tr>
			</table>
		
			
		</div>
				
	</div>
	
	<br>
	
	
		
		<!-- 댓글 -->
		<script>
		function selectReplyList() {
			$.ajax({
				url : "${ pageContext.request.contextPath }/reply/list.do",
				type : "get",
				success : function(result) {
					var str = "";
    				
    				for(var i = 0; i < result.length; i++) {
						str += "<tr>"
							 		+ "<td>" + result[i].noticeNo + "</td>"
							 		+ "<td><img src='../resources/img/"+ result[i].point +"point.PNG'width='100' height='20' ></td>"
							 		+ "<td>" + result[i].noticeContent + "</td>"
							 		+ "<td>" + result[i].memberName + "</td>"
							 		+ "<td>" + result[i].createDate.substring(0, 10) + "</td>"
							 + "</tr>";
					}
    				console.log(str);
    				$("#list-area>tbody").html(str);
				},
				error : function() {
					console.log("댓글리스트용 ajax 실패");
				}
			});
    		
    	}function insertReply() {
        		
        		$.ajax({
        			url : "${ pageContext.request.contextPath }/reply/insert.do",
        			data : {
	        				content : $("#replyContent").val(),
	        				point : $("#point").val(),
	        				memberName : $("#userName").val()
	        				  // text() 가 아닌 val() 로 가져와야 함
        			},
        			type : "post",
        			success : function(result) {
        				
        				// result 값에 따라서 성공했으면 성공메시지 띄우기 alert()
        				if(result > 0) { 
        					
           					alert("댓글 작성에 성공했습니다.");
           					
           					selectReplyList(); 
							
           					$("#replyContent").val(""); // textarea 초기화
            			}
        				
        				
        			},
        			error : function() {
        				alert("댓글을 쓰시오 또는 로그인을 하시오.");
        				console.log("댓글 삽입용 ajax 실패");
        			}
        		});
        		
            		
            		
            		
            	
        		
        	}
			
			$(function() {
        		
				selectReplyList(); 
        		
        	});
        	
        	// 댓글은 화면이 로딩되었을 때 곧바로 뿌려줘야 함 => window.onload => $(function)
        	
        	 
        	</script>
        	

</body>
</html>