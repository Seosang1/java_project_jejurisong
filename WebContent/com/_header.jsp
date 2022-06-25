<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="vo.*"%>
<%
// ***** 이미지 경로 

String cssSrc = request.getContextPath() + "/common/css/";
String jsSrc = request.getContextPath() + "/common/js/";

String incSrc = request.getContextPath() + "/com/";
String commonSrc = request.getContextPath() + "/common/"; 
String tourSrc = request.getContextPath() + "/tour/"; 
String tourImgSrc = request.getContextPath() + "/common/images/TourImg/";
String foodImgSrc = request.getContextPath() + "/common/images/FoodImg/";
String roomImgSrc = request.getContextPath() + "/common/images/RoomImg/";
String hotelImgSrc = request.getContextPath() + "/common/images/HotelImg/";
String memberImgSrc = request.getContextPath() + "/common/images/memberImg/";
String introImgSrc = request.getContextPath() + "/common/images/IntroImg/"; 
String mainImgSrc = request.getContextPath() + "/common/images/main/";
String commImgSrc = request.getContextPath() + "/common/images/commImg/";


// ***** 로그인 정보
String mi_pic = "";
MemberInfo loginMember = (MemberInfo) session.getAttribute("loginMember");
if (loginMember != null) {
	mi_pic = loginMember.getMi_pic();
	mi_pic = (mi_pic != null && !mi_pic.equals(""))? mi_pic : "no-image.png"  ;
}


// ***** 이전 페이지 정보
String referer = (String)request.getHeader("REFERER"); 


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JEJURISONG</title>

<!-- Bootstrap core CSS -->
<link href="<%=cssSrc%>bootstrap.min.css" rel="stylesheet">

<!-- 헤더 관련 css -->
<link href="<%=cssSrc%>_header.css" rel="stylesheet">

<!-- 공통 jquery -->
<script src="<%=jsSrc%>jquery-3.6.0.js"></script>

<!-- 네비게이션 스크립트 -->
<script src="<%=jsSrc%>_header.js"></script>  
</head>
<body> 
	<div class="page-header">
		<div class="inner">
			<h1 class="site-logo">
				<a href="index.do"><img src="<%=commonSrc %>images/header/logo.png" width="300px" height="55px" /></a>
			</h1>
			<div class="primary-nav">
				<ul>
					<li><a href="jeju_intro.intro">제주정보</a></li>
					<li><a href="hotel_list.hotel">숙박</a></li>
					<li><a href="food_list.food">음식점</a></li>
					<li><a href="tour_list.tour">여행지</a></li>
					<li><a href="notice_list.brd">고객센터</a></li>
					<li>
					<% if (loginMember != null) { %>
					<div class="dropdown text-end">
				          <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
				            <img src="<%=memberImgSrc %><%=mi_pic %>" alt="mdo" width="32" height="32" class="rounded-circle">
				          </a>
				          <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1" style="">
				            <li><a class="dropdown-item" href="mypage_rv.mypage">마이페이지</a></li>
				            <li><a class="dropdown-item" href="mypage.mem">회원정보수정</a></li> 
				            <li><a class="dropdown-item" href="logout.jsp">로그아웃</a></li>
				          </ul>
				        </div>
					
					<% } else { %>  
						<a href="login_form.jsp">로그인</a>
					<% } %> 
					
					</li>
					<!--li><a href="#">고객센터</a></li-->
				</ul>
			</div>
		</div>
	</div>