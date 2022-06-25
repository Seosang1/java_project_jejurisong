<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
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
ReserveInfo info = (ReserveInfo) request.getAttribute("info"); 

// ▼▼▼ 가져온 데이터 변수에 셋팅 ▼▼▼
String hotel_code = info.getHotel_code();
String room_code = info.getRoom_code();
String hotel_name = info.getHotel_name();
String room_type = info.getRoom_type();
String room_name = common.getRoomType().get(info.getRoom_type()) ;
String mem_id = (String) request.getAttribute("mem_id");
String rv_sdate = info.getRv_sdate(); 					// 투숙시작일
String rv_edate = info.getRv_edate(); 					// 투숙종료일
int rv_cnt = info.getRv_cnt(); 		// 투숙인원
int rv_price = info.getRv_price(); 					// 금액
int rv_discount = info.getRv_discount(); 				// 할인율
int rv_dis_price = info.getRv_dis_price(); 			// 할인 금액  


// ▼▼▼ 실제 결제할 금액 계산 ▼▼▼
// 할인금액 x 박 + (2인 이상일 경우 인당 10,000원 추가)

/* 날짜 차이 */ 
Date sdate = new SimpleDateFormat("yyyy-MM-dd").parse(rv_sdate);
Date edate = new SimpleDateFormat("yyyy-MM-dd").parse(rv_edate);
Calendar stmpDate = Calendar.getInstance();
Calendar etmpDate = Calendar.getInstance();
stmpDate.setTime(sdate); //특정 일자
etmpDate.setTime(edate); //특정 일자 
long diffSec = (edate.getTime() - sdate.getTime()) / 1000;
int dateDiff = (int)(diffSec / (24*60*60));					// ◀ 일자수 차이 (N박)	

int cntDiff = (rv_cnt - info.getRoom_min());			// ◀ 추가 인원

int rv_pay_price = info.getRv_pay_price();	// ◀  최종 결제금액
 
 

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


<!-- content 영역 시작 -->
<div class="contents">

	<button type="button" class="btn btn-dark btn-lg" style="width:100%;text-align:left;">예약정보 입력</button>
	
	<div class="album py-3">
	
		<div class="rv_title">예약 정보</div>
		<table class="table rv_table">
			<thead class="table-light">
				<tr>
					<th>예약번호</th>
					<th>예약일</th>
					<th>예약상태</th>
				</tr>
			</thead>
			<tbody>
				<tr style="text-align:center;">
					<td><%=info.getRv_code()%></td> 
					<td><%=info.getRv_date().substring(0, 10)%></td> 
					<td>
					<%

			      	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
			        Calendar c1 = Calendar.getInstance();
				 	String now = dateFormat.format(c1.getTime()); 
				 	Date dtNow = dateFormat.parse(now);
				 	Date dtEdate = dateFormat.parse(info.getRv_edate()); 

			      	String rv_status = "예약확정"; 
			      	if (info.getRv_state().equals("b")) {
			      		rv_status = "예약취소";
			      	} else {
					 	if (dtNow.after(dtEdate)){
					 		rv_status = "여행종료"; 
					 	}
			      	}
					%>
					<%=rv_status%>
					</td> 
				</tr>
			</tbody>
		</table>

		<div style="height:15px;"></div>
		
		<!-- 상품 상세 정보 -->
		<div class="rv_title">상품 상세 정보</div>
		<table class="table rv_table">
			<tbody>
				<tr>
					<th scope="row">숙소정보</th>
					<td><%=info.getHotel_name()%></td>
				</tr>
				<tr>
					<th scope="row">투숙일</th>
					<td><%=rv_sdate%> ~ <%=rv_edate%> <strong>(<%=dateDiff%>박 <%=(dateDiff+1)%>일)</strong></td>
				</tr>
				<tr>
					<th scope="row">투숙인원</th>
					<td><%=rv_cnt%>명</td>
				</tr>
			</tbody>
		</table>

		<div style="height:15px;"></div>
		
		<!-- 요금 상세정보 입력 -->
		<div class="rv_title">요금 상세 정보</div>
		<table class="table rv_table">
			<thead class="table-light">
				<tr>
					<th>기본상품가</th>
					<th>할인가</th>
					<th>숙박일수</th>
					<th>추가금액</th>
					<th>총 합계 금액</th>
				</tr>
			</thead>
			<tbody>
				<tr style="text-align:center;">
					<td><%=String.format("%,d", info.getRv_price())%>원</td>
					<td>
						<%=String.format("%,d", info.getRv_dis_price())%>원
						<span style="color:red">(<%=info.getRv_discount()%>%)</span>
					</td>
					<td><%=dateDiff%>일</td>
					<td>
						<% if(cntDiff > 0) { %>
						<%=String.format("%,d", (cntDiff * 10000))%>원 (<%=cntDiff%>인 추가)
						<% } else {
							out.println("-");	
						}
						%>
					</td>
					<td><%=String.format("%,d", rv_pay_price)%>원</td>
				</tr>
			</tbody>
		</table>

		<div style="height:15px;"></div>
		
		<!-- 예약정보 입력 -->
		<div class="col-md-12 col-lg-8">
			<div class="rv_title">예약자 정보 확인</div>
			
			<form class="needs-validation" novalidate name="frm" style="margin-left:30px;width:1050px;"> 
				<div class="row g-3">
					<div class="col-sm-4">
						<label for="rv_name" class="form-label">예약자 성명</label> 
						<input type="text" class="form-control" id="rv_name" name="rv_name" placeholder="홍길동" value="<%=info.getRv_name() %>"  disabled readonly>
						<div class="invalid-feedback">예약자 성명을 입력해주세요.</div>
					</div>
	
					<div class="col-4">
						<label for="rv_phone" class="form-label">연락처</label> 
						<input type="text" class="form-control" id="rv_phone" name="rv_phone" placeholder="010-0000-0000" value="<%=info.getRv_phone() %>"  disabled readonly>
						<div class="invalid-feedback">예약자 연락처를 입력해주세요.</div>
					</div>
	
					<div class="col-4">
						<label for="rv_email" class="form-label">이메일</label> 
						<input type="email" class="form-control" id="rv_email" name="rv_email" placeholder="you@example.com" value="<%=info.getRv_email() %>"  disabled readonly>
						<div class="invalid-feedback">이메일을 입력해주세요</div>
					</div>
	
					<div class="col-12">
						<label for="rv_content" class="form-label">요청사항</label>
						<textarea class="form-control" placeholder="요청사항을 입력해주세요" id="rv_content" name="rv_content" style="height: 100px"  disabled readonly><%=info.getRv_content() %></textarea> 
					</div>
	
				</div>
			</form>
		</div> 
		
		<hr class="my-4"> 
		<button class="w-100 btn btn-secondary btn-lg" onclick="location.href='mypage_rv.mypage'">목록으로</button>
	</div> 
</div> 

<%@ include file="../com/_footer.jsp"%>
