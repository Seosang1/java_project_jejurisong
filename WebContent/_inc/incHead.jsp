<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
String incSrc = request.getContextPath() + "/_inc/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="<%=incSrc %>/css/reset1.css" />
	<link rel="stylesheet" type="text/css" href="<%=incSrc %>/css/base1.css" />
	<link rel="stylesheet" type="text/css" href="<%=incSrc %>/css/layout1.css" />
 	<link rel="stylesheet" type="text/css" href="<%=incSrc %>/css/main1.css" />
</head>
<body>
<div id="header">
		<h1 class="logo"><a href="#"><img src="<%=incSrc %>/header/header_logo_150_177.png" width="159" height="177" alt="로고" onclick = "location.href ='index.do'" /></a></h1>
		<ul id="infoMenu">
			<li><a href="member/join_form.jsp"><img src="<%=incSrc %>/header/header_upper_77_17_join.png" width="77" height="17" alt="회원 가입" class="hand" onmouseover= "this.incSrc='<%=incSrc %>/header/header_upper_ov_80_19_join.png';" onmouseout ="this.incSrc='<%=incSrc %>/header/header_upper_77_17_join.png';"/></a></li>
			<li><a href="member/mypage_form.jsp"><img src="<%=incSrc %>/header/header_upper_97_16_mypage.png" width="97" height="16" alt="마이페이지"  class="hand"  onmouseover= "this.incSrc='<%=incSrc %>/header/header_upper_ov_100_18_mypage.png';" onmouseout ="this.incSrc='<%=incSrc %>/header/header_upper_97_16_mypage.png';"/></a></li>
			<li><a href="#"><img src="<%=incSrc %>/header/header_upper_58_17_event.png" width="58" height="17" alt="이벤트"  class="hand"  onmouseover= "this.incSrc='<%=incSrc %>/header/header_upper_ov_61_20_event.png';" onmouseout ="this.incSrc='<%=incSrc %>/header/header_upper_58_17_event.png';"/></a></li>
			<li><a href="#"><img src="<%=incSrc %>/header/header_upper_77_18_center.png" width="77" height="18" alt="고객센터" class="hand"  onmouseover= "this.incSrc='<%=incSrc %>/header/header_upper_ov_81_20_center.png';" onmouseout ="this.incSrc='<%=incSrc %>/header/header_upper_77_18_center.png';"/></a></li>
		</ul>
		<ul id="navigation">
			<li id = "navi"><a href="#"><img src="<%=incSrc %>/header/header_menu_126_27_tourInfo.png" width="126" height="27" alt="여행 정보" class="hand" onmouseover= "this.incSrc='<%=incSrc %>/header/header_menu_ov_130_29_tourInfo.png';" onmouseout ="this.incSrc='<%=incSrc %>/header/header_menu_126_27_tourInfo.png';"/></a>	</li>
			<li id = "navi"><a href="#"><img src="<%=incSrc %>/header/header_menu_57_27_hotel.png" width="57" height="27" alt="숙박" class="hand" onmouseover= "this.incSrc='<%=incSrc %>/header/header_menu_ov_60_29_hotel.png';" onmouseout ="this.incSrc='<%=incSrc %>/header/header_menu_57_27_hotel.png';"/></a></li>
			<li id = "navi"><a href="#"><img src="<%=incSrc %>/header/header_menu_87_27_flight.png" width="87" height="27" alt="항공권" class="hand" onmouseover= "this.incSrc='<%=incSrc %>/header/header_menu_ov_90_29_flight.png';" onmouseout ="this.incSrc='<%=incSrc %>/header/header_menu_87_27_flight.png';"/></a></li>
			<li id = "navi"><a href="#"><img src="<%=incSrc %>/header/header_menu_85_26_planner.png" width="85" height="26" alt="플래너" class="hand" onmouseover= "this.incSrc='<%=incSrc %>/header/header_menu_ov__90_26_planner.png';" onmouseout ="this.incSrc='<%=incSrc %>/header/header_menu_85_26_planner.png';"/></a></ul>
		<ul id="naviSub">
				<li><a href="#"><img src="<%=incSrc %>/header/header_submenu_28_13_all.png" width="28" height = "13" alt = "��ü" class="naviSubs"  onmouseover= "this.incSrc='<%=incSrc %>/header/header_submenu_ov_31_15_all.png';" onmouseout ="this.incSrc='<%=incSrc %>/header/header_submenu_28_13_all.png';"/></a></li>
				<li><a href="#"><img src="<%=incSrc %>/header/header_submenu_78_14_addMem.png" width="78" height = "14" alt = "동행인 구인"  class="naviSubs"onmouseover= "this.incSrc='<%=incSrc %>/header/header_submenu_ov_80_15_addMem.png';" onmouseout ="this.incSrc='<%=incSrc %>/header/header_submenu_78_14_addMem.png';"/></a></li>
				<li><a href="#"><img src="<%=incSrc %>/header/header_submenu_78_14_makePlan.png" width="78" height = "14" alt = "일정 만들기"  class="naviSubs" onmouseover= "this.incSrc='<%=incSrc %>/header/header_submenu_ov_81_15_makePlan.png';" onmouseout ="this.incSrc='<%=incSrc %>/header/header_submenu_78_14_makePlan.png';"/></a></li>
				<li><a href="#"><img src="<%=incSrc %>/header/header_submenu_93_14_sharePlan.png" width="93" height = "14" alt = "일정 공유하기" class="naviSubs" onmouseover= "this.incSrc='<%=incSrc %>/header/header_submenu_ov_96_15_sharePlan.png';" onmouseout ="this.incSrc='<%=incSrc %>/header/header_submenu_93_14_sharePlan.png';"/></a></li>
				<li><a href="#"><img src="<%=incSrc %>/header/header_submenu_93_14_chkPlan.png" width="93" height = "13" alt = "일정 확인하기"  class="naviSubs" onmouseover= "this.incSrc='<%=incSrc %>/header/header_submenu_ov_96_15_chkPlan.png';" onmouseout ="this.incSrc='<%=incSrc %>/header/header_submenu_93_14_chkPlan.png';"/></a></li>
	</ul>
</div>