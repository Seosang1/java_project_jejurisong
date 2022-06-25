<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

ArrayList<ReserveInfo> list = (ArrayList<ReserveInfo>) request.getAttribute("list");
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
				<img class="profile" src="https://github.com/mdo.png" >
			</div>
		</div>
  		<div style="width:120px;">
			<h5>예약건수</h5>
			<h5 style="color:grey;">1</h5>
		</div>
  		<div style="width:150px;">
			<h5>후기등록</h5>
			<h5 style="color:grey;">1</h5>
		</div> 
	</div>
	
	
	<div class="nav-scroller bg-body shadow-sm">
		<nav class="nav nav-underline" aria-label="Secondary navigation">
			<a class="nav-link active" aria-current="page" href="mypage_rv.mypage">
				예약내역
				<span class="badge bg-light text-dark rounded-pill align-text-bottom">27</span>
			</a>
			<a class="nav-link" href="#"> 
				숙박 리뷰 
				<span class="badge bg-light text-dark rounded-pill align-text-bottom">27</span>
			</a>  
			<a class="nav-link" href="#"> 
				음식점 리뷰 
				<span class="badge bg-light text-dark rounded-pill align-text-bottom">27</span>
			</a>  
			<a class="nav-link" href="#"> 
				여행지 리뷰 
				<span class="badge bg-light text-dark rounded-pill align-text-bottom">27</span>
			</a>  
		</nav>
	</div>


	<div class="my-3 p-3 bg-body rounded shadow-sm">
		<h6 class="border-bottom pb-2 mb-0">Recent updates</h6>
		<div class="d-flex text-muted pt-3">
			<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32"
				height="32" xmlns="http://www.w3.org/2000/svg" role="img"
				aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice"
				focusable="false">
				<title>Placeholder</title><rect width="100%" height="100%"
					fill="#007bff"></rect>
				<text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg>

			<p class="pb-3 mb-0 small lh-sm border-bottom">
				<strong class="d-block text-gray-dark">@username</strong> Some
				representative placeholder content, with some information about this
				user. Imagine this being some sort of status update, perhaps?
			</p>
		</div>
		<div class="d-flex text-muted pt-3">
			<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32"
				height="32" xmlns="http://www.w3.org/2000/svg" role="img"
				aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice"
				focusable="false">
				<title>Placeholder</title><rect width="100%" height="100%"
					fill="#e83e8c"></rect>
				<text x="50%" y="50%" fill="#e83e8c" dy=".3em">32x32</text></svg>

			<p class="pb-3 mb-0 small lh-sm border-bottom">
				<strong class="d-block text-gray-dark">@username</strong> Some more
				representative placeholder content, related to this other user.
				Another status update, perhaps.
			</p>
		</div>
		<div class="d-flex text-muted pt-3">
			<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32"
				height="32" xmlns="http://www.w3.org/2000/svg" role="img"
				aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice"
				focusable="false">
				<title>Placeholder</title><rect width="100%" height="100%"
					fill="#6f42c1"></rect>
				<text x="50%" y="50%" fill="#6f42c1" dy=".3em">32x32</text></svg>

			<p class="pb-3 mb-0 small lh-sm border-bottom">
				<strong class="d-block text-gray-dark">@username</strong> This user
				also gets some representative placeholder content. Maybe they did
				something interesting, and you really want to highlight this in the
				recent updates.
			</p>
		</div>
		<small class="d-block text-end mt-3"> <a href="#">All
				updates</a>
		</small>
	</div>

	<div class="my-3 p-3 bg-body rounded shadow-sm">
		<h6 class="border-bottom pb-2 mb-0">Suggestions</h6>
		<div class="d-flex text-muted pt-3">
			<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32"
				height="32" xmlns="http://www.w3.org/2000/svg" role="img"
				aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice"
				focusable="false">
				<title>Placeholder</title><rect width="100%" height="100%"
					fill="#007bff"></rect>
				<text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg>

			<div class="pb-3 mb-0 small lh-sm border-bottom w-100">
				<div class="d-flex justify-content-between">
					<strong class="text-gray-dark">Full Name</strong> <a href="#">Follow</a>
				</div>
				<span class="d-block">@username</span>
			</div>
		</div>
		<div class="d-flex text-muted pt-3">
			<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32"
				height="32" xmlns="http://www.w3.org/2000/svg" role="img"
				aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice"
				focusable="false">
				<title>Placeholder</title><rect width="100%" height="100%"
					fill="#007bff"></rect>
				<text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg>

			<div class="pb-3 mb-0 small lh-sm border-bottom w-100">
				<div class="d-flex justify-content-between">
					<strong class="text-gray-dark">Full Name</strong> <a href="#">Follow</a>
				</div>
				<span class="d-block">@username</span>
			</div>
		</div>
		<div class="d-flex text-muted pt-3">
			<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32"
				height="32" xmlns="http://www.w3.org/2000/svg" role="img"
				aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice"
				focusable="false">
				<title>Placeholder</title><rect width="100%" height="100%"
					fill="#007bff"></rect>
				<text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg>

			<div class="pb-3 mb-0 small lh-sm border-bottom w-100">
				<div class="d-flex justify-content-between">
					<strong class="text-gray-dark">Full Name</strong> <a href="#">Follow</a>
				</div>
				<span class="d-block">@username</span>
			</div>
		</div>
		<small class="d-block text-end mt-3"> <a href="#">All
				suggestions</a>
		</small>
	</div>
</div>



<table>
	<tr>
		<td>
			<table style="width: 250px; height: 408px">
				<tr>
					<td>
						<h3>마이페이지</h3>
					</td>
				<tr>
					<td>예약내역</td>
				</tr>
				<tr>
					<td>나의 여행 일정</td>
				</tr>
				<tr>
					<td>회원정보수정</td>
				</tr>
			</table>
		</td>
		<td>

			<table>
				<tr>
					<td>
						<h3>예약내역</h3>
					</td>
				</tr>
			</table>
			<table border="1">
				<tr>
					<td>예약 확정</td>
					<td>여행완료</td>
					<td>예약취소</td>
				</tr>
				<tr>
					<td>건</td>
					<td>건</td>
					<td>건</td>
				</tr>
			</table>
			<table style="width: 770px; height: 50px;">
				<tr>
					<td>예약내역</td>
					<td>취소내역</td>
				</tr>
			</table>
			<table style="width: 770px; height: 120px;" border="1">
				<tr>
					<th>예약일</th>
					<td></td>
					<th>상품정보</th>
					<td></td>
					<th>금액</th>
					<td></td>
					<th>"예약상태"</th>
					<td></td>
				</tr>
			</table>
		</td>
	</tr>
	<%
	// 이곳이 루프를 돌면서 값을 뿌려줘야 합니다!
	%>
</table>

<%@ include file="../com/_footer.jsp"%>