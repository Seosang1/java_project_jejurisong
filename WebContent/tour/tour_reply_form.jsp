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

// ▼▼▼ 데이터 받아와서 변수 셋팅 ▼▼▼ 
TourInfo info = (TourInfo) request.getAttribute("info");  


%>

<style>
	.rv_title {
		padding-left: 5px;
	    margin: 5px 0px 20px 20px;
	    border-left: 1px solid grey;
	    border-left-width: 5px;
	    border-radius: .25rem;
	}
	
	.rv_table {
		margin-left: 20px;
	    width: 95%;
	    border-collapse: collapse;
	    border: 1px solid #ebebeb;
	    border-top: 2px solid #b3b3b3;
	}
	
	.rv_table th {
		text-align: center;
	} 
</style>	
 
<!-- 별점 관련 css -->
<link href="<%=commonSrc%>css/star.css?v=20210705" rel="stylesheet">

<!-- content 영역 시작 -->
<div class="contents">

	<button type="button" class="btn btn-dark btn-lg" style="width:100%;text-align:left;">여행지 후기 작성</button>
	
	<div class="row mb-1" style="margin-top:20px">
		<div class="col-md-12" style="font-size: 14px;">
			<div class="row g-0 border rounded overflow-hidden flex-md-row shadow-sm h-md-250 position-relative" style="padding:20px;">
				<div class="col-auto d-none d-lg-block" style="margin-top: 30px;margin-left: 20px;">
					<img src="<%=tourImgSrc %><%=info.getTour_img1() %>" width="400px;" />
					<h5 style="margin-top:10px;text-align:center;"><%=info.getTour_name()%></h5>
					<h6 style="margin-top:10px;text-align:center;"><%=info.getTour_addr()%></h6>
				</div>
				<div class="col p-4 d-flex flex-column position-static">
					<!-- 예약정보 입력 -->
					<div class="col-md-8 col-lg-11">
						<form class="needs-validation" novalidate name="frm" method="post" action="tour_reply_proc.tour" style="margin-left:30px;width:100%">
							<input type="hidden" name="hd_tour_code" value="<%=info.getTour_code()%>" />
							<input type="hidden" name="hd_mi_id" value="<%=loginMember.getMi_id() %>" />
							
							
							<div class="row g-3">
								<div class="col-sm-4">
									<label class="form-label">별점등록</label> 						
									
									<span class="star-input">
										<span class="input">
									    	<input type="radio" name="star-input" value="1" id="p1">
									    	<label for="p1">1</label>
									    	<input type="radio" name="star-input" value="2" id="p2">
									    	<label for="p2">2</label>
									    	<input type="radio" name="star-input" value="3" id="p3">
									    	<label for="p3">3</label>
									    	<input type="radio" name="star-input" value="4" id="p4">
									    	<label for="p4">4</label>
									    	<input type="radio" name="star-input" value="5" id="p5">
									    	<label for="p5">5</label>
									  	</span>
									  	<output for="star-input"><b>0</b>점<input type="hidden" name="hd_score" id="hd_score" value="" /></output>						
									</span>
								</div>
			 
								<div class="col-12">
									<label for="reply_detail" class="form-label">리뷰내용</label>
									<textarea class="form-control" placeholder="리뷰를 입력해주세요" id="reply_content" name="reply_content" style="height: 150px"></textarea> 
								</div>
							</div> 
							<hr class="my-4"> 
							<button class="w-100 btn btn-secondary btn-lg" type="submit">리뷰 등록</button>
						</form>
					</div>   
				</div>
			</div>
		</div>
	</div>
	 
</div> 


<script src="<%=commonSrc %>js/jquery-1.11.3.min.js"></script>
<script src="<%=commonSrc %>js/star.js"></script>
<%@ include file="../com/_footer.jsp"%>
