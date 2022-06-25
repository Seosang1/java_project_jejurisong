<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%@ include file="../com/_header.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	Common common = new Common();

	String mi_id = (loginMember != null)? loginMember.getMi_id() : "" ;
	
	// ▼▼▼ 데이터 받아와서 변수 셋팅 ▼▼▼ 
	HotelInfo hotelInfo = (HotelInfo) request.getAttribute("hotelInfo");
	ArrayList<RoomInfo> roomList = (ArrayList<RoomInfo>) request.getAttribute("roomList");
	ArrayList<ReplyInfo> replyList = (ArrayList<ReplyInfo>) request.getAttribute("replyList");
	int replyCnt = (int) request.getAttribute("replyCnt");
	HashMap<String, String> mapSchargs = (HashMap<String, String>) request.getAttribute("schargs");
	String schargs = "";

	// ▼▼▼ 검색관련 쿼리스트링 제작 ▼▼▼ 
	for (String key : mapSchargs.keySet()) {
		schargs += "&" + key + "=" + mapSchargs.get(key);
	}
	// System.out.println("hotel_view.jsp schargs : "+ schargs);
	// &sdate=2021-06-09&name=해비치&hotel_code=A0003&type=RST&edate=2021-07-07
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
</style>

<script>
	$(document).ready(
			function() {

				$('#sdate').change(function() {

					var date = $("#sdate").val();

					var date1 = new Date($("#sdate").val());
					var date2 = new Date($("#edate").val());

					console.log(date1 > date2);
					if (date1 > date2) {
						$("#edate").val(formatDate(date));
					}
				});

				function formatDate(date) {
					var d = new Date(date), year = d.getFullYear(), month = ''
							+ (d.getMonth() + 1), day = '' + (d.getDate() + 1);

					if (month.length < 2)
						month = '0' + month;
					if (day.length < 2)
						day = '0' + day;

					return [ year, month, day ].join('-');
				}
			});
</script>
<!-- content 영역 시작 -->
<div class="contents">

	<!-- *** Search Layout *** -->
	<div class="card">
		<div class="card-body">
			<form id="frm" class="row g-3" name="frm" method="get"
				action="hotel_view.hotel">
				<input type="hidden" name="hotel_code"
					value="<%=common.nullToString(mapSchargs.get("hotel_code"))%>" />
				<input type="hidden" name="type"
					value="<%=common.nullToString(mapSchargs.get("type"))%>" /> <input
					type="hidden" name="name"
					value="<%=common.nullToString(mapSchargs.get("name"))%>" />

				<div class="col-md-4">
					<label for="sdate" class="form-label">시작일</label> <input
						type="date" class="form-control" id="sdate" name="sdate"
						value="<%=common.nullToString(mapSchargs.get("sdate"))%>">
				</div>
				<div class="col-md-4">
					<label for="edate" class="form-label">종료일</label> <input
						type="date" class="form-control" id="edate" name="edate"
						value="<%=common.nullToString(mapSchargs.get("edate"))%>">
				</div>
				<div class="col-md-2">
					<label for="cnt" class="form-label">숙박인원</label> <input
						type="number" class="form-control" id="cnt" name="cnt"
						value="<%=common.nullToString(mapSchargs.get("cnt"))%>">
				</div>
				<div class="col-md-2" style="margin-top: 46px;">
					<button type="submit" class="btn btn-primary">조회</button>
				</div>
			</form>
		</div>
	</div>

	<!-- *** hotel Info Layout *** -->
	<div class="container" style="margin-top: 30px; margin-bottom: 50px;">
		<div class="row featurette">
			<h2><%=hotelInfo.getHotel_name()%>
				|
				<%=common.getArea().get(hotelInfo.getHotel_area())%></h2>

			<hr style="margin-top: 10px;" />

			<!--  슬라이드 배너  -->
			<div id="myCarousel" class="carousel slide" data-bs-ride="carousel"
				style="margin-bottom: 1rem;">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#myCarousel"
						data-bs-slide-to="0" class="active" aria-current="true"
						aria-label="Slide 1"></button>
					<%
						if (hotelInfo.getHotel_img2() != null && !hotelInfo.getHotel_img2().equals("")) {
					%>
					<button type="button" data-bs-target="#myCarousel"
						data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
					<%
						}
					%>
					<%
						if (hotelInfo.getHotel_img3() != null && !hotelInfo.getHotel_img3().equals("")) {
					%>
					<button type="button" data-bs-target="#myCarousel"
						data-bs-slide-to="2" aria-label="Slide 3" class=""></button>
					<%
						}
					%>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<svg class="bd-placeholder-img" width="100%" height="100%"
							xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<rect width="100%" height="100%" fill="#777">
								<img src="common/images/HotelImg/<%=hotelInfo.getHotel_img1()%>" />
							</rect> 
						</svg>
					</div>
					<%
						if (hotelInfo.getHotel_img2() != null && !hotelInfo.getHotel_img2().equals("")) {
					%>
					<div class="carousel-item">
						<svg class="bd-placeholder-img" width="100%" height="100%"
							xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<rect width="100%" height="100%" fill="#777">
								<img src="common/images/HotelImg/<%=hotelInfo.getHotel_img2()%>" />
							</rect>
						</svg>
					</div>
					<%
						}
					%>
					<%
						if (hotelInfo.getHotel_img3() != null && !hotelInfo.getHotel_img3().equals("")) {
					%>
					<div class="carousel-item">
						<svg class="bd-placeholder-img" width="100%" height="100%"
							xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<rect width="100%" height="100%" fill="#777">
								<img src="common/images/HotelImg/<%=hotelInfo.getHotel_img3()%>" />
							</rect>
						</svg>
					</div>
					<%
						}
					%>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#myCarousel" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#myCarousel" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>

			<div class="col-md-12 order-md-2">
				<h4><span class="text-muted"><%=hotelInfo.getHotel_addr()%></span></h4> 
	        	<p class="lead"><%=common.getStar().get(hotelInfo.getHotel_score()) %> </p>
	        	<p class="lead" style="margin-top:10px;"><strong>평균 <%=hotelInfo.getHotel_score() %>점 /</strong> <%=hotelInfo.getHotel_review_cnt() %>개의 후기</p> 
				<p class="lead" style="margin-top:10px;"><%=hotelInfo.getHotel_detail()%></p>
			</div>
		</div>
	</div>


	<!-- *** Room list *** -->
	<div>
		<hr class="featurette-divider">
	</div>
	<%
		if (roomList != null && roomList.size() > 0) {
			for (int i = 0; i < roomList.size(); i++) {
				RoomInfo info = roomList.get(i);

				String[] arrEq = info.getRoom_eq().split(",");
	%>
	<div class="row mb-1">
		<div class="col-md-12" style="font-size: 14px;">
			<div
				class="row g-0 border rounded overflow-hidden flex-md-row shadow-sm h-md-250 position-relative">
				<div class="col-auto d-none d-lg-block">
					<img
						src="<%=roomImgSrc + info.getRoom_img()%>"
						width="200px" height="130px" />
				</div>
				<div class="col p-4 d-flex flex-column position-static">
					<h4 class="mb-0" style="width: 300px;"><%=common.getRoomType().get(info.getRoom_type())%></h4>
					<div class="mb-1 text-muted" style="margin-top: 5px;">
					<%
						for (int j = 0; j < arrEq.length; j++) {
					%>
						<%=common.getHoteEquip().get(arrEq[j].trim())%>
					<%
						}
					%>
					</div>
					<p style="margin-top: 5px;"><%=info.getRoom_svc()%></p>
				</div>
				<div class="col p-4 d-flex flex-column position-static">
					<p class="mb-auto">
						기본
						<%=info.getRoom_min()%>인/최대
						<%=info.getRoom_max()%>인
					</p>
				</div>
				<div class="col p-4 d-flex flex-column position-static">
					<p><%=String.format("%,d", info.getRoom_dis_price())%>원
					</p>
					<p style="font-size: 12px;">1박당 객실요금(세금포함)</p>
				</div>
				<div class="col p-4 d-flex flex-column position-static">
					<a
						href="reserve_form.reserve?room_code=<%=info.getRoom_code() + schargs%>"
						class="stretched-link">
						<button type="button" class="btn btn-secondary"
							style="opacity: 70%;">예약하기</button>
					</a>
				</div>
			</div>
		</div>
	</div>
	<%
			}
		} else {
	%>
	<div class="row mb-1">
		<div class="col-md-12">
			<h3 class="mb-0">해당되는 방이 없습니다.</h3>
		</div>
	</div>
	<%
		}
	%>



	<!-- *** 후기 list *** -->
	<div>
		<hr class="featurette-divider">
	</div>

	<div class="row featurette">
		<div class="mb-12" >
			<h1 class="h4 mb-1" style="display: contents;">후기</h1>
			<span class="badge text-dark rounded-pill align-text-bottom" style=" margin-left: 10px;background-color: orange;margin-bottom: 8px;"><%=replyCnt %></span> 
			<span style="float:right;"><a href="hotel_reply_form.hotel?<%=schargs.substring(1)%>"><span class="btn btn-outline-dark">후기작성</span></a></span>
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
				<span style="margin-top: 10px;"><%=replyInfo.getHotel_name() %></span>
				<span style="margin-top: 10px;"><%=replyInfo.getReply_content()%></span>
				<span style="margin-top: 10px;margin-bottom: 5px;"><%=common.getStar().get(replyInfo.getReply_score())%></span>
			</p>
			<span>
				<% if (replyInfo.getMi_id().equals(mi_id)) { %>
				<a href="hotel_reply_del.hotel?<%=schargs.substring(1)%>&reply_idx=<%=replyInfo.getReply_idx()%>&mi_id=<%=mi_id%>">x</a>
				<% } %>
			</span>
		</div>
		
			<%
				}
			} else {
		%>
		
		<div class="d-flex text-muted pt-3" style="width:100%;">
			<p class="pb-3 mb-0 small lh-sm border-bottom" style="width:100%;">등록된 후기가 없습니다. 소중한 후기를 남겨주세요. </p>
		</div>
		<%
			}
		%>
	</div>
 
 
</div>
<%@ include file="../com/_footer.jsp"%>