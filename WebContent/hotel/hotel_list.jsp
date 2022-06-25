<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%@ include file="../com/_header.jsp"%>
<%
request.setCharacterEncoding("utf-8");
 

// ▼▼▼ 데이터 받아와서 변수 셋팅 ▼▼▼ 
ArrayList<HotelInfo> list = (ArrayList<HotelInfo>) request.getAttribute("list");
PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
Common common = new Common();
HashMap<String, String> mapSchargs = (HashMap<String, String>) request.getAttribute("schargs");
String schargs = "";

// ▼▼▼ 검색관련 쿼리스트링 제작 ▼▼▼
String args = "?cpage=" + pageInfo.getCpage();
for (String key : mapSchargs.keySet()) {
	schargs += "&" + key + "=" + mapSchargs.get(key);
}

String msg =  (String)request.getAttribute("msg");
if (!msg.equals("")) {
	out.println("<script>");
	out.println("alert('"+msg+"')");
	out.println("</script>");
	
}
%>


<style>
	.desc_item .per_sale {left:0;top:5px;width:60px;font-size:20px;line-height:35px;color:#ff5722;}
	.desc_item .per_sale .num_per {font-size:34px;}
	.desc_item .txt_price {display:block;font-size:12px;line-height:15px;color:#999;text-decoration:line-through;letter-spacing:0; text-align:left;}
	.desc_item .txt_sale {display:block;font-size:17px;line-height:20px;letter-spacing:0;}
	.desc_item .txt_sale .num_sale {font-weight:700;}
	.desc_item .txt_rule {display:block;margin-top:5px;font-size:12px;line-height:15px;color:#666;}
</style>

<script>

$(document).ready(function(){
	
	$('#txt_sdate').change(function() {
		
		var date = $("#txt_sdate").val();

		var date1 = new Date($("#txt_sdate").val());
		var date2 = new Date($("#txt_edate").val());
 
		if (date1 > date2) {
			$("#txt_edate").val(formatDate(date));
		}
	}); 
	
	function formatDate(date) {
	    var d = new Date(date),
        	year = d.getFullYear(),
	        month = '' + (d.getMonth() + 1),
	        day = '' + (d.getDate() + 1);

	    if (month.length < 2) 
	        month = '0' + month;
	    if (day.length < 2) 
	        day = '0' + day;

	    return [year, month, day].join('-');
	}
	
});


function onchangeOrder(val) {
	console.log(val);
}

</script>

<!-- 내용 -->
<div class="contents">

	<!-- 조회 -->
	<div class="card">
		<div class="card-body">
			<form class="row g-3" id="frm" name="frm" method="get" action="hotel_list.hotel">
				<div class="col-md-2">
					<label for="sl_area" class="form-label">지역</label> 
					<select class="form-select" name="sl_area"
						aria-label="원하시는 지역을 선택해주세요">
						<option value="" selected>전체</option>
					<% for(String key : common.getArea().keySet()) { 
						String sl = "";
						if (key.equals(mapSchargs.get("area"))) sl = " selected = 'selected' ";
					%>
						<option value="<%=key%>" <%=sl %>><%=common.getArea().get(key) %></option>
					<% } %>
					</select>  
				</div>
				<div class="col-md-2">
					<label for="sl_type" class="form-label">유형</label> <select
						class="form-select" name="sl_type" aria-label="원하시는 유형을 선택해주세요">
						<option value="" selected>전체</option>
					<% for(String key : common.getHotelType().keySet()) {
						String sl = "";
						if (key.equals(mapSchargs.get("type"))) sl = " selected = 'selected' "; %>
						<option value="<%=key%>" <%=sl %>><%=common.getHotelType().get(key) %></option>
					<% } %>
					</select> 
				</div>
				<div class="col-md-2">
					<label for="txt_sdate" class="form-label">시작일</label> <input
						type="date" class="form-control" id="txt_sdate" name="txt_sdate" value="<%=common.nullToString(mapSchargs.get("sdate")) %>">
				</div>
				<div class="col-md-2">
					<label for="txt_edate" class="form-label">종료일</label> <input
						type="date" class="form-control" id="txt_edate" name="txt_edate" value="<%=common.nullToString(mapSchargs.get("edate")) %>">
				</div>
				<div class="col-md-3">
					<label for="txt_name" class="form-label">호텔명</label> 
					<input type="text" class="form-control" id="txt_name" name="txt_name" value="<%=common.nullToString(mapSchargs.get("name")) %>">
				</div>
				<div class="col-md-1" style="margin-top: 46px;">
					<button type="submit" class="btn btn-primary">조회</button>
				</div>
			</form>

		</div>
	</div>
	
	<!--  정렬  -->
	<div class="row" style="margin-top:20px;">
		<div class="row justify-content-end">
			<div class="col-2">
				<select class="form-select" aria-label="Default select example"  style="margin-left:25px;" onchange="onchangeOrder(this.value)">
					<option value="pp" selected>인기순</option>
					<option value="pc">가격순</option>
				</select>
			</div>
		</div>

		<!-- 리스트 -->
		<div class="container" style="margin-top: 20px;">

			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

				<%
			if (list != null && list.size() > 0) {
				// 숙박 리스트가 있다면 돌리기
				for (int i = 0; i < list.size(); i++) {
					HotelInfo hotelInfo = list.get(i);
					String hotel_addr = common.txtToShort(hotelInfo.getHotel_addr(), 10);
			%>
				<div class="col">
					<a
						href="hotel_view.hotel?hotel_code=<%=hotelInfo.getHotel_code() + schargs %>">
						<div class="card shadow-sm">
							<img
								src="<%=hotelImgSrc+hotelInfo.getHotel_img1() %>"
								width="100%" height="180px;" />
							<div class="card-body">
								<p class="card-title">
									<strong><%=hotelInfo.getHotel_name() %></strong>
								</p>
								<p class="card-subtitle mb-2 text-muted"><%=common.getArea().get(hotelInfo.getHotel_area()) %></p>
								<p class="card-text">
									<span class="desc_item" style="display: flex;"> <em
										class="per_sale"><span class="num_per"><%=hotelInfo.getRoom_discount() %></span>%</em>
										<span style="disply: block; margin-left: 10px;"> <span
											class="txt_price"><%=String.format("%,d", hotelInfo.getRoom_price()) %></span>
											<span class="txt_sale"><span class="num_sale"><%=String.format("%,d", hotelInfo.getRoom_dis_price()) %></span>원</span>
									</span>
									</span>
								</p>
							</div>
						</div>
					</a>
				</div>

				<%
				}
			}
			%>

			</div>
		</div>
	</div>
</div>
	<%@ include file="../com/_footer.jsp"%>