
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="db.JdbcUtil"%>
<%@ page import="vo.*"%>
<%@ include file="../com/_header.jsp"%>
<%
request.setCharacterEncoding("utf-8");


// ▼▼▼ 데이터 받아와서 변수 셋팅 ▼▼▼ 
ArrayList<FoodInfo> foodList = (ArrayList<FoodInfo>) request.getAttribute("foodList");
PageInfo pageInfo = (PageInfo) request.getAttribute("pageInfo");
Common common = new Common();
HashMap<String, String> mapSchargs = (HashMap<String, String>) request.getAttribute("schargs");
String schargs = "";

// ▼▼▼ 검색관련 쿼리스트링 제작 ▼▼▼
for (String key : mapSchargs.keySet()) {
	schargs += "&" + key + "=" + mapSchargs.get(key);
}

String btnMap  = (String)request.getAttribute("btnMap"); 

String type_qry = (String)request.getAttribute("type_qry") ;
String area_qry = (String)request.getAttribute("area_qry") ; 
String order_qry = (request.getAttribute("pmOrder") == null) ? "" : (String) request.getAttribute("pmOrder");

String pmOrder = (String) request.getAttribute("pmOrder"); 	//	 정렬에 대한 쿼리스트링 셋팅
String pmArea = (String) request.getAttribute("pmArea"); 	//	 지역에 대한 쿼리스트링 셋팅

String cpage = "&cpage=" + pageInfo.getCpage();



%>


<script>
	$(document).ready(function() {
<%if (btnMap != null && btnMap.equals("on")) {%>
	$('.layer_map_area').show();
<%}%>
	var toggleMapArea = $('.toggleMapArea');

		$('a[href="#"]').click(function(e) {
			e.preventDefault();
		})

		// aside 클릭 이벤트
		toggleMapArea.click(function() {
			$('.layer_map_area').toggle(500);
			$('#btnMap').removeClass();
		});

	});
</script>

<style>
.desc_item .per_sale {
	left: 0;
	top: 5px;
	width: 60px;
	font-size: 20px;
	line-height: 35px;
	color: #ff5722;
}

.desc_item .per_sale .num_per {
	font-size: 34px;
}

.desc_item .txt_price {
	display: block;
	font-size: 12px;
	line-height: 15px;
	color: #999;
	text-decoration: line-through;
	letter-spacing: 0;
	text-align: left;
}

.desc_item .txt_sale {
	display: block;
	font-size: 17px;
	line-height: 20px;
	letter-spacing: 0;
}

.desc_item .txt_sale .num_sale {
	font-weight: 700;
}

.desc_item .txt_rule {
	display: block;
	margin-top: 5px;
	font-size: 12px;
	line-height: 15px;
	color: #666;
}

.toggleMapArea {
	text-align: center;
	padding-top: 40px;
}

.toggleMapArea button {
	border: 1px solid #aaa;
	border-radius: 5px;
	background: #fff;
	padding: 0 10px;
}

.toggleMapArea button.on span {
	background-image: url(<%=commImgSrc%>arrow-bar-up.svg);
}

.toggleMapArea button span {
	display: block;
	height: 33px;
	line-height: 33px;
	font-size: 16px;
	color: #aaa;
	background-image: url(<%=commImgSrc%>arrow-bar-down.svg);
	background-repeat: no-repeat;
	padding-right: 30px;
	background-position: 100%;
}

.layer_map_area {
	position: relative;
	margin: 0 auto;
	max-width: 866px;
	height: auto;
	margin-top: 52px;
}

.layer_map_area .btn_map_reset {
	position: absolute;
	bottom: 40px;
	right: 10px;
	border: 1px solid #aaa;
	border-radius: 5px;
	width: 145px;
	height: 33px;
	font-size: 15px;
	color: #aaa;
	background: #fff;
}

.layer_map_area .layer_map ul {
	position: relative;
	height: 520px;
	background: url(<%=commImgSrc%>map_large.png) no-repeat center 0;
}
</style>


<!-- 내용 -->
<div class="contents" style="text-align: center;">

	<input type="hidden" name="ord" value="<%=pageInfo.getOrd()%>" /> 
	<input type="hidden" name="area" value="<%=pageInfo.getArea()%>" /> 
	<input type="hidden" name="psize" value="<%=pageInfo.getPsize()%>" />

	<!--  타입검색  -->
	<div class="row" style="margin-top: 40px;">
		<div class="btn-group" role="group">
			<input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" 
					onclick="location.href='food_list.food'" <%if (mapSchargs.get("food_type") == null) {%> checked <%}%>>
			<label class="btn btn-outline-secondary" for="btnradio1">전체</label>
			<%
			int n = 2;
			for (String key : common.getFoodType().keySet()) {
			%>
			<input type="radio" class="btn-check" name="btnradio"
				id="btnradio<%=n%>"
				onclick="location.href='food_list.food?food_type=<%=key%><%=area_qry+order_qry+cpage%>'"
				autocomplete="off"
				<%if (mapSchargs.get("food_type") != null && mapSchargs.get("food_type").equals(key)) {%>
				checked <%}%>> <label class="btn btn-outline-secondary"
				for="btnradio<%=n%>"><%=common.getFoodType().get(key)%></label>
			<%
			n++;
			}
			%>
		</div>
	</div>


	<!--  지도검색  -->
	<div class="row">
		<div class="toggleMapArea button span">
			<button type="button" class="" id="btnMap">
				<span>지도에서 선택(전체)</span>
			</button>
		</div>

		<div class="layer_map_area" style="display: none;text-align: center;">
			<div class="layer_map" style="margin: auto;width: 500px;">
				<img src="<%=foodImgSrc %>jejuMap.png" usemap="#useJejuMap" >
				<map name="useJejuMap" >
					<area shape="poly" coords="101,72,164,58,175,70,183,69,189,120,232,140,183,147,158,188,144,184,135,228,106,226,94,257,14,193,14,159,75,94"
						href="food_list.food?food_area=W<%=type_qry+order_qry+cpage %>">
					<area shape="poly" coords="209,40,278,26,275,36,286,40,287,57,297,68,300,95,251,138,234,144,222,130,201,126,183,101,182,68,167,68,169,58,200,47"
						href="food_list.food?food_area=N<%=type_qry+order_qry+cpage %>">
					<area shape="poly" coords="299,15,313,23,385,9,408,13,412,26,455,36,455,47,464,53,469,72,473,69,475,101,463,103,462,122,440,138,430,159,420,183,380,184,365,202,300,207,292,221,288,200,276,190,267,162,253,148,242,143,254,132,279,125,291,102,299,96,297,66,287,45,274,39,276,29,297,21"
						href="food_list.food?food_area=E<%=type_qry+order_qry+cpage %>">
					<area shape="poly" coords="144,225,137,230,165,225,197,225,201,237,228,231,256,232,280,228,291,222,289,201,279,191,278,174,271,163,256,153,247,145,214,147,200,146,184,145,173,162,158,189,148,183,140,197,139,216,136,221"                            
						href="food_list.food?food_area=A<%=type_qry+order_qry+cpage %>">
				</map>
			</div>
			<button type="button" class="btn_map_reset" style="position: static; margin-top: 10px;" 
				onclick="location.href='food_list.food<%=type_qry.replace("&", "?")%>'">전체지역보기</button>
		</div>
	</div>  


	<!--  정렬조건  -->
	<div class="row" style="text-align: right; margin-top: 20px;">
		<p id="ord">
			정렬조건 : 
			<a href="food_list.food?ord=review_cntd<%=type_qry+area_qry+cpage%>" style="font-weight:<%=(pageInfo.getOrd().equals("review_cntd")) ? "bold; color:blue;" : "normal"%>">리뷰순</a>&nbsp;&nbsp;
			<a href="food_list.food?ord=scored<%=type_qry+area_qry+cpage%>" style="font-weight:<%=(pageInfo.getOrd().equals("scored")) ? "bold; color:blue;" : "normal"%>">별점순</a>&nbsp;&nbsp;
			<a href="food_list.food?ord=liked<%=type_qry+area_qry+cpage%>" style="font-weight:<%=(pageInfo.getOrd().equals("liked")) ? "bold; color:blue;" : "normal"%>">좋아요순</a>&nbsp;&nbsp;
			<a href="food_list.food?ord=reg_datea<%=type_qry+area_qry+cpage%>" style="font-weight:<%=(pageInfo.getOrd().equals("reg_datea")) ? "bold; color:blue;" : "normal"%>">등록일순</a>&nbsp;&nbsp;
		</p>
	</div>
	
	
	<!-- 음식점 목록 영역 -->
	<div class="container" style="margin-top: 20px; margin-botton: 20px;">
		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			<%
			if (foodList != null && foodList.size() > 0) {
				// 상품 검색결과가 있으면
				for (int i = 0; i < foodList.size(); i++) {
					FoodInfo fi = foodList.get(i);
			%>
			<div class="col">
				<a
					href="food_view.food?1=1<%=schargs%>&food_code=<%=fi.getFood_code()%>&ord=<%=pageInfo.getOrd()%>&psize=<%=pageInfo.getPsize()%>">
					<div class="card shadow-sm">
						<img src="<%=foodImgSrc%><%=fi.getFood_img1()%>" width="100%"
							height="180px;" />
						<div class="cardbody">
							<p class="card-title">
								<strong><%=fi.getFood_name()%></strong>
							</p>
							<p class="card-subtitle mb-2 text-muted"><%=common.getArea().get(fi.getFood_area())%></p>
							<p class="card-text">
								<span> 전화번호 : <%=fi.getFood_tel()%><br /> 좋 아 요 : <%=fi.getFood_like()%><br />
									리 뷰 : <%=fi.getFood_review_cnt()%><br />
								</span>
								<%=common.getStar().get(Math.ceil(fi.getFood_score()))%>
							</p>
							<div style="height: 10px;"></div>
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
	<!--  페이징 영역 -->
	<%
	if (foodList != null && foodList.size() > 0) {
		schargs = "?ord=" + pageInfo.getOrd() + "&psize=" + pageInfo.getPsize() + schargs;

		out.println("<div id=\"foodPage\">");

		if (pageInfo.getCpage() == 1) { // 현재 페이지 번호가 1이면
			out.println("[&lt;&lt;]&nbsp;&nbsp;[&lt;]&nbsp;&nbsp;");
		} else {
			out.print("<a href='food_list.food" + schargs + "&cpage=1" + "'>");
			out.println("[&lt;&lt;]</a>&nbsp;&nbsp;");
			out.print("<a href='food_list.food" + schargs + "&cpage=" + (pageInfo.getCpage() - 1) + "'>");
			out.println("[&lt;]</a>&nbsp;&nbsp;");
		} // 첫 페이지와 이전 페이지 링크

		for (int i = 1, k = pageInfo.getSpage(); i <= pageInfo.getBsize() && k <= pageInfo.getEpage(); i++, k++) {
			// i : 루프돌릴 횟수를 검사하는 용도의 변수, k : 페이지 번호 출력용 변수
			// 조건 : bsize만큼 루프를 도는데 페이지가 마지막 페이지일 경우 bsize보다 작아도 멈춤
			if (pageInfo.getCpage() == k) { // 현재 페이지 번호일 경우 링크없이 강조만 함
		out.print("&nbsp;<strong>" + k + "</strong>&nbsp;");
			} else {
		out.print("&nbsp;<a href='food_list.food" + schargs + "&cpage=" + k + "'>");
		out.print(k + "</a>&nbsp;");
			}
		}

		if (pageInfo.getCpage() == pageInfo.getPcnt()) { // 현재 페이지번호가 마지막 페이지 번호이면
			out.println("&nbsp;&nbsp;[&gt;]&nbsp;&nbsp;[&gt;&gt;]");
		} else {
			out.println(
			"&nbsp;&nbsp;<a href='food_list.food" + schargs + "&cpage=" + (pageInfo.getCpage() + 1) + "'>[&gt;]</a>");
			out.print("&nbsp;&nbsp;<a href='food_list.food" + schargs + "&cpage=" + pageInfo.getPcnt() + "'>");
			out.println("[&gt;&gt;]</a>");
		}

		out.println("</div>");
	}
	%>
</div>

<%@ include file="../com/_footer.jsp"%>

