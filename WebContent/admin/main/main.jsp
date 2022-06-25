<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ include file="../_inc/incAdminHead.jsp"%>
<%@ include file="../_inc/incAdminLeft.jsp"%>
<%
request.setCharacterEncoding("utf-8");

int rv_total_cnt = (Integer)request.getAttribute("rv_total_cnt");		// 예약 건수 전체 
int rp_hotel_tot_cnt = (Integer) request.getAttribute("rp_hotel_tot_cnt");	// 호텔 후기 건수
int rp_tour_tot_cnt = (Integer) request.getAttribute("rp_tour_tot_cnt");	// 여행지 후기 건수
int rp_food_tot_cnt = (Integer) request.getAttribute("rp_food_tot_cnt");	// 음식점 후기 건수

ChartAgeInfo ageInfo =  (ChartAgeInfo) request.getAttribute("ageInfo");	// 음식점 후기 건수

ArrayList<ChartReplyInfo> chartHotelReplyList = (ArrayList<ChartReplyInfo>)request.getAttribute("chartHotelReplyList"); 
ArrayList<ChartReplyInfo> chartTourReplyList = (ArrayList<ChartReplyInfo>)request.getAttribute("chartTourReplyList"); 
ArrayList<ChartReplyInfo> chartFoodReplyList = (ArrayList<ChartReplyInfo>)request.getAttribute("chartFoodReplyList"); 


%> 
<script src="<%=jsSrc%>Chart.min.js"></script>
<script src="<%=jsSrc%>utils.js"></script>

<script>
	
	/* bar Chart Data */
	var color = Chart.helpers.color;
	var barChartData = {
		labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월'],
		datasets: [{
				label: '호텔후기',
				backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
				borderColor: window.chartColors.red,
				borderWidth: 1,
				data: [
				<%
					if (chartHotelReplyList != null && chartHotelReplyList.size() > 0) { 
						for (int i = 0 ; i < chartHotelReplyList.size() ; i++) {
							ChartReplyInfo list = chartHotelReplyList.get(i);
								out.println(list.getValue() + ", ");
						}
					}
				%>]
			}, {
				label: '음식점후기',
				backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
				borderColor: window.chartColors.blue,
				borderWidth: 1,
				data: [
				<%
					if (chartFoodReplyList != null && chartFoodReplyList.size() > 0) { 
						for (int i = 0 ; i < chartFoodReplyList.size() ; i++) {
							ChartReplyInfo list = chartFoodReplyList.get(i);
								out.println(list.getValue() + ", ");
						}
					}
				%>]
			}, {
				label: '여행지후기',
				backgroundColor: color(window.chartColors.yellow).alpha(0.5).rgbString(),
				borderColor: window.chartColors.yellow,
				borderWidth: 1,
				data: [
				<%
					if (chartTourReplyList != null && chartTourReplyList.size() > 0) { 
						for (int i = 0 ; i < chartTourReplyList.size() ; i++) {
							ChartReplyInfo list = chartTourReplyList.get(i);
								out.println(list.getValue() + ", ");
						}
					}
				%>]
			}
	/* -- 데이터 막대 추가
		, {
			label: '순이익2',
			backgroundColor: color(window.chartColors.green).alpha(0.5).rgbString(),
			borderColor: window.chartColors.blue,
			borderWidth: 1,
			data: [15, 20, 17, 13, 28, 22, 9]
		}
	*/
		]
	};
	

	/* doughnut Chart Data */
	var config = {
			type : 'doughnut',
			data : {
				datasets : [ {
					data : [ <%=ageInfo.getAge10()%>, <%=ageInfo.getAge20()%>, <%=ageInfo.getAge30()%>, <%=ageInfo.getAge40()%>, <%=ageInfo.getAgeEtc()%> ],
					backgroundColor : [ window.chartColors.red,
							window.chartColors.orange, window.chartColors.yellow,
							window.chartColors.green, window.chartColors.blue ],
					label : '점유율'
				} ],
				labels : [ "10대", "20대", "30대", "40대", "50대 이상" ]
			},
			options : {
				responsive : true,
				legend : {
					position : 'top',
				},
				title : {
					display : true,
					text : '나이대별 가입자수'
				},
				animation : {
					animateScale : true,
					animateRotate : true
				}
			}
		};

	window.onload = function() {
		var ctx = document.getElementById('chart-area').getContext('2d');
		window.myDoughnut = new Chart(ctx, config);
		

		var ctx2 = document.getElementById('chart-bar').getContext('2d');
		window.myBar = new Chart(ctx2, {
			type: 'bar',
			data: barChartData,
			options: {
				responsive: true,
				legend:{ position:'top' }, 
				title:{ display:true, text:'월별 서비스별 후기 건수' }
			}
		});
	};
</script>
<style>
	.divStat {
	    display: flex;
	    margin-top: 20px;
	}
	.divStatCard {
		border-style: solid;
	    height: 65px;
	    border-width: thin;
	    width: 25%;
	    padding: 10px;
	    border-color: #cccccc;
	    display: grid;
	    margin-right:10px;
	}
	.spanStatCnt {
		font-size: 25px;
	    margin-top: 10px;
	    margin-left: 10px;
	}
	.divChart {
		margin-top: 20px;
		border-style: solid;
	    border-width: thin;
	    border-color: #cccccc; 
	}
	canvas {
		-moz-user-select: none;
		-webkit-user-select: none;
		-ms-user-select: none;
	}
	
</style>

<article >
	<h3>DashBoard</h3>
	
	<!-- content -->
	<div class="content">
		<div class="divStat">
			<div class="divStatCard">
				<span>Monthly 호텔 예약 건수</span> 
				<span class="spanStatCnt"><%=rv_total_cnt %></span>
			</div>
			<div class="divStatCard">
				<span>Monthly 호텔 후기 건수</span> 
				<span class="spanStatCnt"><%=rp_hotel_tot_cnt %></span>
			</div>
			<div class="divStatCard">
				<span>Monthly 음식점 후기 건수</span> 
				<span class="spanStatCnt"><%=rp_food_tot_cnt %></span>
			</div>
			<div class="divStatCard">
				<span>Monthly 여행지 후기 건수</span> 
				<span class="spanStatCnt"><%=rp_tour_tot_cnt %></span>
			</div>
		</div>

		<div class="divChart">	
			<canvas id="chart-bar"></canvas>
		</div>

		<div class="divChart">
			<canvas id="chart-area"></canvas>
		</div>
	</div>
	<!-- //content -->

</article>
<!-- //article -->


<%@ include file="../_inc/incAdminFooter.jsp"%>