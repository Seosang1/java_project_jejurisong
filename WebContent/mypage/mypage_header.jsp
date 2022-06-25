<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%@ include file="../com/_header.jsp"%>
<%

if (loginMember == null) {
	out.println("<script>");
	out.println("alert('로그인 후 사용하실 수 있습니다.');");
	out.println("location.href='login_form.jsp?url="+referer+"';");
	out.println("</script>");
	out.close();
}

request.setCharacterEncoding("utf-8"); 	
Common common = new Common();
int rv_total_cnt = (Integer)request.getAttribute("rv_total_cnt");		// 예약 건수 전체
int rp_total_cnt = (Integer)request.getAttribute("rp_total_cnt");		// 후기 건수 전체
int rp_hotel_tot_cnt = (Integer) request.getAttribute("rp_hotel_tot_cnt");	// 호텔 후기 건수
int rp_tour_tot_cnt = (Integer) request.getAttribute("rp_tour_tot_cnt");	// 여행지 후기 건수
int rp_food_tot_cnt = (Integer) request.getAttribute("rp_food_tot_cnt");	// 음식점 후기 건수
 
String nowPage = (String)request.getAttribute("nowPage");;


%>

<style>
.box {
	width: 120px;
	height: 120px;
	border-radius: 70%;
	overflow: hidden;
}

.profile {
	width: 100%;
	height: 100%;
	object-fit: cover;
}
</style>
<!-- 내용 -->
<div class="contents">
	<div class="d-flex align-items-center p-3 my-3 bg-purple rounded shadow-sm">
		<div style="width:150px;">
			<div class="box" style="background: #BDBDBD;">
				<img class="profile" src="<%=memberImgSrc %><%=mi_pic %>" >
			</div>
		</div>
  		<div style="width:120px;">
			<h5>예약건수</h5>
			<h5 style="color:grey;"><%=rv_total_cnt %></h5>
		</div>
  		<div style="width:150px;">
			<h5>후기등록</h5>
			<h5 style="color:grey;"><%=rp_total_cnt %></h5>
		</div> 
	</div>
	
	
	<div class="nav-scroller bg-body shadow-sm">
		<nav class="nav nav-underline" aria-label="Secondary navigation">
			<a class="nav-link active" aria-current="page" href="mypage_rv.mypage" <% if (nowPage.equals("mypage_rv.mypage")) { %> style="background-color: #e0e0e0;" <% } %>>
				예약내역
				<span class="badge bg-light text-dark rounded-pill align-text-bottom"><%=rv_total_cnt %></span>
			</a>
			<a class="nav-link" href="mypage_rp_hotel.mypage" <% if (nowPage.equals("mypage_rp_hotel.mypage")) { %> style="background-color: #e0e0e0;" <% } %>> 
				숙박 리뷰 
				<span class="badge bg-light text-dark rounded-pill align-text-bottom"><%=rp_hotel_tot_cnt %></span>
			</a>  
			<a class="nav-link" href="mypage_rp_food.mypage" <% if (nowPage.equals("mypage_rp_food.mypage")) { %> style="background-color: #e0e0e0;" <% } %>> 
				음식점 리뷰 
				<span class="badge bg-light text-dark rounded-pill align-text-bottom"><%=rp_food_tot_cnt %></span>
			</a>  
			<a class="nav-link" href="mypage_rp_tour.mypage" <% if (nowPage.equals("mypage_rp_tour.mypage")) { %> style="background-color: #e0e0e0;" <% } %>> 
				여행지 리뷰 
				<span class="badge bg-light text-dark rounded-pill align-text-bottom"><%=rp_tour_tot_cnt %></span>
			</a>  
		</nav>
	</div>

