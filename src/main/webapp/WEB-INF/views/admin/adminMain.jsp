<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body style="margin: auto">
	<div>
		<%@ include file="../common/sidevar.jsp"%>
	</div>
	<div class="header">
		<%@include file="../common/header.jsp"%>
	</div>

	<div class="body" style="width: 100%; overflow: hidden">
		<!-- 기존에 만든  nav.jsp 생략 -->

		<div class="cbody body-content"
			style="width: 80%; height: 100%; display: inline-block; box-sizing: border-box; padding-bottom: 50px; margin-left: 13%; margin-bottom: 50px; border: 1px solid rgb(127, 173, 57); border-radius: 10px;">

			<div class="cbody mbody self" align="center">
				<h3>도시락 구성 음식 매출 Top5</h3>
				<div class="card-body">
					<canvas id="mySelfChart" width="100%" height="40"></canvas>
				</div>


				<!-- 도시락 구성중 가장 많은 매출을 기록한 항목 -->
				<script>
					// Bar Chart Example
					var ctx = document.getElementById("mySelfChart");
					var myLineChart = new Chart(
							ctx,
							{
								type : 'bar',
								data : {
									labels : [ "${sList.get(0).sideName}",
											"${sList.get(1).sideName}",
											"${sList.get(2).sideName}",
											"${sList.get(3).sideName}",
											"${sList.get(4).sideName}" ],
									datasets : [ {
										label : "총 매출",
										backgroundColor : [
												'rgba(127, 173, 57, 0.5)',
												'rgba(127, 173, 57, 0.5)',
												'rgba(127, 173, 57, 0.5)',
												'rgba(127, 173, 57, 0.5)',
												'rgba(127, 173, 57, 0.5)',
												'rgba(127, 173, 57, 0.5)' ],
										borderColor : "rgba(127, 173, 57,1)",
										data : [
										'${sList.get(0).price * sList.get(0).count}',
										'${sList.get(1).price * sList.get(1).count}',
										'${sList.get(2).price * sList.get(2).count}',
										'${sList.get(3).price * sList.get(3).count}',
										'${sList.get(4).price * sList.get(4).count}'],
									} ],
								},
								options : {
									scales : {
										xAxes : [ {
											time : {
												unit : 'month'
											},
											gridLines : {
												display : false
											},
											ticks : {
												maxTicksLimit : 6
											}
										} ],
										yAxes : [ {
											ticks : {
												min : 0,
												max : 300,
												maxTicksLimit : 5
											},
											gridLines : {
												display : true
											}
										} ],
									},
									legend : {
										display : false
									}
								}
							});
				</script>


			</div>

			<div class="cbody mbody pacakge" align="center">
				<h3>패키지 도시락 매출 Top5</h3>
				<div class="card-body">
					<canvas id="myPackChart" width="100%" height="40"></canvas>
				</div>


				<!-- 패키지 도시락 중 가장 많은 매출을 기록한 항목 -->
				<script>
					// Bar Chart Example
					var ctx = document.getElementById("myPackChart");
					var myLineChart = new Chart(
							ctx,
							{
								type : 'bar',
								data : {
									labels : [ "${pList.get(0).packageName}",
											"${pList.get(1).packageName}",
											"${pList.get(2).packageName}",
											"${pList.get(3).packageName}",
											"${pList.get(4).packageName}" ],
									datasets : [ {
										label : "총 매출",
										backgroundColor : [
												'rgba(127, 173, 57, 0.5)',
												'rgba(127, 173, 57, 0.5)',
												'rgba(127, 173, 57, 0.5)',
												'rgba(127, 173, 57, 0.5)',
												'rgba(127, 173, 57, 0.5)',
												'rgba(127, 173, 57, 0.5)' ],
										borderColor : "rgba(127, 173, 57,1)",
										data : [
										'${pList.get(0).packagePrice * pList.get(0).count}',
										'${pList.get(1).packagePrice * pList.get(1).count}',
										'${pList.get(2).packagePrice * pList.get(2).count}',
										'${pList.get(3).packagePrice * pList.get(3).count}',
										'${pList.get(4).packagePrice * pList.get(4).count}'],
									} ],
								},
								options : {
									scales : {
										xAxes : [ {
											time : {
												unit : 'month'
											},
											gridLines : {
												display : false
											},
											ticks : {
												maxTicksLimit : 6
											}
										} ],
										yAxes : [ {
											ticks : {
												min : 0,
												max : 300,
												maxTicksLimit : 5
											},
											gridLines : {
												display : true
											}
										} ],
									},
									legend : {
										display : false
									}
								}
							});
				</script>
			</div>

		</div>

	</div>

	<%@ include file="../common/footer.jsp"%>


</body>
</html>




