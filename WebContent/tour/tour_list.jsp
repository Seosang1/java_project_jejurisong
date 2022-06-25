<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%@ include file="../com/_header.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	
	
	// ▼▼▼ 데이터 받아와서 변수 셋팅 ▼▼▼ 
	ArrayList<TourInfo> list = (ArrayList<TourInfo>) request.getAttribute("list");
	PageInfo pageInfo = (PageInfo) request.getAttribute("pageInfo");
	Common common = new Common();
	HashMap<String, String> mapSchargs = (HashMap<String, String>) request.getAttribute("schargs");
	String schargs = "";

	// ▼▼▼ 검색관련 쿼리스트링 제작 ▼▼▼
	for (String key : mapSchargs.keySet()) {
		schargs += "&" + key + "=" + mapSchargs.get(key);
	}
	
	String btnMap  = (String)request.getAttribute("btnMap"); 

	String type_qry = (String)request.getAttribute("type_qry") + "&btnMap=on";
	String area_qry = (String)request.getAttribute("area_qry") ; 
	 
%>

	<script>
	$(document).ready(function(){
	<% if (btnMap !=null && btnMap.equals("on")) { %>
		$('.layer_map_area').show();
	<% } %>
		
		 var toggleMapArea = $('.toggleMapArea');
	 
		 
	    $('a[href="#"]').click(function(e) {
	        e.preventDefault();
	    })
	 
	    // aside 클릭 이벤트
	    toggleMapArea.click(function () { 
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
<div class="contents">

	<!--  타입검색  -->
	<div class="row" style="margin-top: 40px;">
		<div class="btn-group" role="group">
			<input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" onclick="location.href='tour_list.tour<%=area_qry.replace("&", "?") %>'" <%if (mapSchargs.get("tour_type") == null) { %> checked <% } %>> 
			<label class="btn btn-outline-secondary" for="btnradio1">전체</label>
			<%
				int n = 2;
				for (String key : common.getTourType().keySet()) {
			%>
			<input type="radio" class="btn-check" name="btnradio" id="btnradio<%=n%>" 
				onclick="location.href='tour_list.tour?tour_type=<%=key %><%=area_qry %>'" autocomplete="off"  <%if (mapSchargs.get("tour_type") != null && mapSchargs.get("tour_type").equals(key)) { %> checked <% } %>> 
			<label class="btn btn-outline-secondary" for="btnradio<%=n%>"><%=common.getTourType().get(key)%></label>
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
						href="tour_list.tour?tour_area=W<%=type_qry %>">
					<area shape="poly" coords="209,40,278,26,275,36,286,40,287,57,297,68,300,95,251,138,234,144,222,130,201,126,183,101,182,68,167,68,169,58,200,47"
						href="tour_list.tour?tour_area=N<%=type_qry %>">
					<area shape="poly" coords="299,15,313,23,385,9,408,13,412,26,455,36,455,47,464,53,469,72,473,69,475,101,463,103,462,122,440,138,430,159,420,183,380,184,365,202,300,207,292,221,288,200,276,190,267,162,253,148,242,143,254,132,279,125,291,102,299,96,297,66,287,45,274,39,276,29,297,21"
						href="tour_list.tour?tour_area=E<%=type_qry %>">
					<area shape="poly" coords="144,225,137,230,165,225,197,225,201,237,228,231,256,232,280,228,291,222,289,201,279,191,278,174,271,163,256,153,247,145,214,147,200,146,184,145,173,162,158,189,148,183,140,197,139,216,136,221"                            
						href="tour_list.tour?tour_area=A<%=type_qry %>">
				</map>
			</div>
			<button type="button" class="btn_map_reset" style="position: static; margin-top: 10px;" 
				onclick="location.href='tour_list.tour<%=type_qry.replace("&", "?")%>'">전체지역보기</button>
		</div>
	</div>  
 

	<!--  정렬  -->
	<div class="row" style="margin-top:20px;">
		<div class="row justify-content-end">
			<div class="col-2">
				<select class="form-select" aria-label="Default select example" style="margin-left:25px;" 
						onchange="location.href=this.value">
					<option value="tour_list.tour?order_by=a<%=schargs%>" <%if (mapSchargs.get("order_by") !=null && mapSchargs.get("order_by").equals("a")) { %> selected <% } %> >별점순</option>
					<option value="tour_list.tour?order_by=b<%=schargs%>" <%if (mapSchargs.get("order_by") !=null && mapSchargs.get("order_by").equals("b")) { %> selected <% } %> >리뷰순</option>
				</select>
			</div>
		</div>
	</div>

	<!-- 리스트 -->
	<div class="container" style="margin-top: 20px;">
		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			<%
		if (list != null && list.size() > 0) {
			// 숙박 리스트가 있다면 돌리기
			for (int i = 0; i < list.size(); i++) {
				TourInfo info = list.get(i); 
		%>
			<div class="col" style="height: 400px;">
				<a href="tour_view.tour?tour_code=<%=info.getTour_code() + schargs %>">
					<div class="card shadow-sm" style="height: 100%;">
						<img src="<%=tourImgSrc+info.getTour_img1() %>" height="250px;" />
						<div class="card-body">
							<p class="card-title"><strong><%=info.getTour_name() %></strong></p>
							<p class="card-subtitle mb-2 text-muted"><%=common.getArea().get(info.getTour_area()) %></p>
							<p class="card-text" style="color: #ef6d00;size:10px;">#<%=info.getTour_tag().replace(",", " #") %></p>
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