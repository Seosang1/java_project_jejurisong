<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%@ include file="mypage_header.jsp"%>
<%
if (loginMember == null) {
	out.println("<script>");
	out.println("alert('로그인 후 사용하실 수 있습니다.');");
	out.println("location.href='login_form.jsp?url=" + referer + "';");
	out.println("</script>");
	out.close();
}

request.setCharacterEncoding("utf-8");
ArrayList<ReplyInfo> rp_list = (ArrayList<ReplyInfo>) request.getAttribute("rp_list"); // 호텔 후기 리스트
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
	<div class="contents" style="padding:0px;">
		<h4 style="margin-top:25px;margin-left:10px;">내가 작성한 여행지 후기</h4>
		<div class="my-3 p-3 bg-body rounded shadow-sm" style="display: flex;flex-wrap: wrap;"> 
	
			<%
			if (rp_list != null && rp_list.size() > 0) {
				for (int i = 0; i < rp_list.size(); i++) {
					ReplyInfo info = rp_list.get(i);
			%>
			<div class="card" style="margin-right: 10px;width: 48%;margin:10px;padding:10px;">
				<div class="card-body">
					<p><a href="tour_view.tour?tour_code=<%=info.getTour_code() %>"><%=info.getTour_name() %></a></p>
					<h5 class="card-title" style="margin-top:10px;"><%=common.getStar().get(info.getReply_score())%></h5>
					<h5 class="card-title"><%=info.getReply_content()%></h5>
					<p class="card-text">작성일 : <%= info.getReply_reg_date().substring(0, 11) %></p>
				</div>
			</div>
		<%
			}
		} else {
		%>

			<div class="card" style="margin-right: 10px;width: 48%;margin:10px;padding:10px;">
				<div class="card-body">
					<p>등록된 후기가 없습니다. <br />소중한 후기를 등록해주세요.</p>
				</div>
			</div>
		<% } %>
	
	
		</div>
	</div>
</div>


<%@ include file="../com/_footer.jsp"%>