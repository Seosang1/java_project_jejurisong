<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<%@ page import="db.JdbcUtil"%> 
<%@ page import="vo.*" %> 
<%@ include file="../com/_header.jsp"%>
<%
request.setCharacterEncoding("utf-8");

Common common = new Common();

String mi_id = (loginMember != null)? loginMember.getMi_id() : "" ;

// ▼▼▼ 데이터 받아와서 변수 셋팅 ▼▼▼  
FoodInfo info = (FoodInfo) request.getAttribute("info");
ArrayList<ReplyInfo> replyList = (ArrayList<ReplyInfo>) request.getAttribute("replyList");
int replyCnt = (int) request.getAttribute("replyCnt");
HashMap<String, String> mapSchargs = (HashMap<String, String>) request.getAttribute("schargs");

String schargs = ""; 
// ▼▼▼ 검색관련 쿼리스트링 제작 ▼▼▼ 
for (String key : mapSchargs.keySet()) {
	schargs += "&" + key + "=" + mapSchargs.get(key);
}
%>
<link href="<%=cssSrc%>carousel.css" rel="stylesheet">

<style>
.box {
	width: 60px;
	height: 60px;
	border-radius: 70%;
	overflow: hidden;
}

.profile {
	width: 100%;
	height: 100%;
	object-fit: cover;
} 

.food-card {
	position: relative; 
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word; 
    background-clip: border-box;  
    }
.foodBtn { width:100%; margin-right:50px; font-weight:bold;}

.food-img { 
    position: relative;
    display: flex;
    min-width: 0;
    flex-direction: column; 
    word-wrap: break-word; 
    }
.txtLeft {text-align:left; line-height:200%;}
.slideFoodImg { width: 750px; height:500px; }
</style> 

<!-- content 영역 시작 -->
<div class="contents">

<!-- *** Tour Info Layout *** -->	
	<div class="container" style="margin-top:30px;margin-bottom:50px;">
		<div class="row featurette">
			<h2>[<%=common.getFoodType().get(info.getFood_type()) %>] <%=info.getFood_name() %> | <%=common.getArea().get(info.getFood_area()) %></h2>
			
			<hr style="margin-top:10px;" />
 
			<!--  슬라이드 배너  -->
			<div id="myCarousel" class="carousel slide" data-bs-ride="carousel" style="margin-bottom: 1rem;">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
					<% if ( info.getFood_img2()!=null && !info.getFood_img2().equals("")) { %>
					<button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
					<% } %>
					<% if ( info.getFood_img3()!=null && !info.getFood_img3().equals("")) { %>
					<button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3" class=""></button>
					<% } %>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
							<rect width="100%" height="100%" fill="#777">
								<img src="<%=foodImgSrc+info.getFood_img1() %>" />
							</rect> 
						</svg>			 
					</div>
				<% if ( info.getFood_img2()!=null && !info.getFood_img2().equals("")) { %>
					<div class="carousel-item">
						<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
							<rect width="100%" height="100%" fill="#777">
								<img src="<%=foodImgSrc+info.getFood_img2() %>" />
							</rect>
						</svg> 
					</div> 
				<% } %>
				<% if ( info.getFood_img3()!=null && !info.getFood_img3().equals("")) { %>
					<div class="carousel-item">
						<svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
							<rect width="100%" height="100%" fill="#777">
								<img src="<%=foodImgSrc+info.getFood_img3() %>" />
							</rect>
						</svg> 
					</div> 
				<% } %>
				</div>
				<button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span> 
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span> 
					<span class="visually-hidden">Next</span>
				</button>
			</div> 

	      	<div class="col-md-12 order-md-2">
	        	<h4><span class="text-muted"><%=info.getFood_addr() %></span></h4>
	        	<p class="lead" style="margin-top:10px;"><%=common.getStar().get((double)info.getFood_score())%>  </p>
	        	<p class="lead" style="margin-top:10px;"><strong>평균 <%=info.getFood_score()%>점 /</strong> <%=info.getFood_review_cnt() %>개의 후기</p>
				<p class="card-text " style="margin-top:10px;">
					전화번호 :&nbsp;<%=info.getFood_tel() %>
				</p>
				<p class="card-text txtLeft">
					영업시간 :&nbsp;<%=info.getFood_open() %>
					~
					<%=info.getFood_close() %>
				</p>
				<p class="card-text txtLeft">
					지 역 :&nbsp;<%=common.getArea().get(info.getFood_area()) %>
				</p>
				<p class="card-text txtLeft">
					주 소 :&nbsp;<%=info.getFood_addr() %>
				</p>
				<p class="card-text txtLeft">
					주차여부 :&nbsp;<%=common.getFoodParkingYn().get(info.getFood_park_yn()) %>
				</p>
				<p class="card-text txtLeft">
					매장분류 :&nbsp;<%=common.getFoodType().get(info.getFood_type()) %>
				</p> 
	      	</div>
	    </div>
	</div>
	
	<!-- *** 후기 list *** -->
	<div>
		<hr class="featurette-divider">
	</div>

	<div class="row featurette">
		<div class="mb-12" >
			<h1 class="h4 mb-1" style="display: contents;">후기</h1>
			<span class="badge text-dark rounded-pill align-text-bottom" style=" margin-left: 10px;background-color: orange;margin-bottom: 8px;"><%=replyCnt %></span> 
			<span style="float:right;"><a href="food_reply_form.food?food_code=<%=info.getFood_code()%>"><span class="btn btn-outline-dark">후기작성</span></a></span>
		</div> 
		<hr style="margin-top:5px;" />
	</div>
			
	<div class="p-3 bg-body rounded shadow-sm">
		<%
			if (replyList != null && replyList.size() > 0) {
				for (int i = 0; i < replyList.size(); i++) {
					ReplyInfo replyInfo = replyList.get(i);
										
		%>
		<div class="d-flex text-muted pt-3" style="padding:10px;">
		<% if(replyInfo.getMi_pic() == null) { %>
			<svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16" style="width:60px;height:60px;margin-top: 10px;">
			 	<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
			  	<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
			</svg>
			
		<% } else { %>  
			<!-- /jejurisong/common/images/MemImg/<%=replyInfo.getMi_pic()%>" -->
			<div class="box" style="background: #BDBDBD;">
				<img class="profile" src="https://github.com/mdo.png" >
			</div>
		<% } %>
			<p class="pb-3 mb-0 small lh-sm border-bottom" style="width:100%;padding:10px;display: grid;margin-left: 20px;"> 
				<strong class="d-block text-gray-dark">@<%=replyInfo.getMi_id()%></strong> 
				<span style="margin-top: 10px;"><%=replyInfo.getReply_content()%></span>
				<span style="margin-top: 10px;margin-bottom: 5px;"><%=common.getStar().get(replyInfo.getReply_score())%></span>
			</p>
			<span>
				<% if (replyInfo.getMi_id().equals(mi_id)) { %>
				<a href="food_reply_del.food?food_code=<%=replyInfo.getReply_code()%>&reply_idx=<%=replyInfo.getReply_idx()%>&mi_id=<%=mi_id%>">x</a>
				<% } %>
			</span>
		</div>
		
			<%
				}
			} else {
		%>
		
		<div class="d-flex text-muted pt-3">
			<p class="pb-3 mb-0 small lh-sm border-bottom" style="width:100%">등록된 후기가 없습니다. 소중한 후기를 남겨주세요. </p>
		</div>
		<%
			}
		%>
	</div>
 
 
</div>
<%@ include file="../com/_footer.jsp"%>
