<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<%@ page import="db.JdbcUtil"%> 
<%@ page import="vo.*" %> 
<%@ include file="../com/_header.jsp"%>

<% 
request.setCharacterEncoding("utf-8");
Common common = new Common();

String mi_id = (loginMember != null)? loginMember.getMi_id() : "" ;

FoodInfo foodInfo = (FoodInfo)request.getAttribute("foodInfo");
ArrayList<ReplyInfo> replyList = (ArrayList<ReplyInfo>) request.getAttribute("replyList");
int replyCnt = (int) request.getAttribute("replyCnt");

PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");   
MemberInfo memberInfo = (MemberInfo)request.getAttribute("memberInfo");   
 

String src = request.getContextPath(); 
%> 
<style>  
div {margin:0 auto;}
 #totalView {margin-top:100px; width:1180px;} 
div .br {display:block; height:30px;} 

a, a:hover, a:visited, a:active{
    text-decoration: none;
    color: #000;
}
a:hover{
    color: #a00;
}
h1{
    text-align: center;
    background-color: #fff;
    padding: 5px;
    margin: 0;
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
<div id="totalView"> 
<!-- 헤더영역 --> 
<%@ include file="../_inc/incInfo.jsp" %>  
<div class="br"></div> 
	<div id="fdLay" class="bg-white">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 shadow-sm" style="padding: 0px;">
					<h3 class="text-info text-left">
						<button type="button" class="btn btn-lg btn-info foodBtn txtLeft">
							제주도 맛집
							<%=foodInfo.getFood_name() %>
							입니다.
						</button>
					</h3>
					<div class="br"></div>
					<div class="row">
						<div class="col-md-4 textLeft">
							<img
								src="<%=src %>/common/images/FoodImg/<%=foodInfo.getFood_img1()%>"
								style="width: 500px; height: 300px;" />
						</div>
						<div class="col-md-5  ">
							<div class="food-card bg-default txtLeft">
								<h5 class="card-header">
									상호명 :
									<%=foodInfo.getFood_name() %>
								</h5>
								<div class="card-body txtLeft">
									<p class="card-text ">
										전화번호 :&nbsp;<%=foodInfo.getFood_tel() %>
									</p>
									<p class="card-text txtLeft">
										영업시간 :&nbsp;<%=foodInfo.getFood_open() %>
										~
										<%=foodInfo.getFood_close() %>
									</p>
									<p class="card-text txtLeft">
										지 역 :&nbsp;<%=common.getArea().get(foodInfo.getFood_area()) %>
									</p>
									<p class="card-text txtLeft">
										주 소 :&nbsp;<%=foodInfo.getFood_addr() %>
									</p>
									<p class="card-text txtLeft">
										주차여부 :&nbsp;<%=common.getFoodParkingYn().get(foodInfo.getFood_park_yn()) %>
									</p>
									<p class="card-text txtLeft">
										매장분류 :&nbsp;<%=common.getFoodType().get(foodInfo.getFood_type()) %>
									</p>
									<p class="card-text txtLeft">
										<%=common.getStar().get(Math.ceil(foodInfo.getFood_score())) %>&nbsp;&nbsp;
										<a>(리뷰 수 : <%=foodInfo.getFood_review_cnt() %>)&nbsp;[리뷰보기]
										</a>
									</p>
									<p class="card-text txtLeft">
										매장분류 :&nbsp;<%=common.getFoodType().get(foodInfo.getFood_type()) %>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="br"></div>
					<a class="btn btn-info foodBtn" data-bs-toggle="collapse"
						href="#collapseExample" role="button" aria-expanded="false"
						aria-controls="collapseExample"> 매장사진 </a>
					<!-- 표시 미표시 -->
					<div class="collapse.show" id="collapseExample">
						<div class="food-img">
							<!-- 이미지슬라이드 -->
							<div id="carouselExampleIndicators" class="carousel slide"
								data-bs-ride="carousel">
								<div class="carousel-indicators">
									<button type="button"
										data-bs-target="#carouselExampleIndicators"
										data-bs-slide-to="0" class="active" aria-current="true"
										aria-label="Slide 1"></button>
									<button type="button"
										data-bs-target="#carouselExampleIndicators"
										data-bs-slide-to="1" aria-label="Slide 2"></button>
									<button type="button"
										data-bs-target="#carouselExampleIndicators"
										data-bs-slide-to="2" aria-label="Slide 3"></button>
								</div>
								<div class="carousel-inner">
									<div class="carousel-item active">
										<img
											src="<%=src %>/common/images/FoodImg/<%=foodInfo.getFood_img1()%>"
											class="slideFoodImg" alt="...">
									</div>
									<div class="carousel-item">
										<img
											src="<%=src %>/common/images/FoodImg/<%=foodInfo.getFood_img2()%>"
											class="slideFoodImg" alt="...">
									</div>
									<div class="carousel-item">
										<img
											src="<%=src %>/common/images/FoodImg/<%=foodInfo.getFood_img3()%>"
											class="slideFoodImg" alt="...">
									</div>
								</div>
								<button class="carousel-control-prev" type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide="prev">
									<span class="carousel-control-prev-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Previous</span>
								</button>
								<button class="carousel-control-next" type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide="next">
									<span class="carousel-control-next-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Next</span>
								</button>
							</div>
						</div>
					</div>
					<div class="br"></div>
					<!-- 후기 및 별점 기능 -->
					<div>
						<hr class="featurette-divider">
					</div>
					<div class="row featurette">
						<div class="mb-12">
							<h1 class="h4 mb-1" style="display: contents;">후기</h1>
							<span class="badge text-dark rounded-pill align-text-bottom"
								style="margin-left: 10px; background-color: orange; margin-bottom: 8px;"><%=replyCnt%></span>
							<span style="float: right;"><a
								href="food_reply_form.food?food_code=<%=foodInfo.getFood_code()%>"><span
									class="btn btn-outline-dark">후기작성</span></a></span>
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
<div class="br"> </div>
<%@ include file="../com/_footer.jsp"%> 
