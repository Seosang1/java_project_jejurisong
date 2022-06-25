<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%@ include file="mypage_header.jsp"%> 
<%

request.setCharacterEncoding("utf-8");
ArrayList<ReserveInfo> rv_list_a = (ArrayList<ReserveInfo>) request.getAttribute("rv_list_a");		// 예약 리스트
ArrayList<ReserveInfo> rv_list_b = (ArrayList<ReserveInfo>) request.getAttribute("rv_list_b");		// 예약 취소 리스트 

%>
<meta name="referrer" content="no-referrer" />
<div class="bd-example" style="margin-top: 20px;">
	<nav>
		<div class="nav nav-tabs mb-3" id="nav-tab" role="tabrv_list_a">
			<button class="nav-link active" id="nav-home-tab"
				data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
				role="tab" aria-controls="nav-home" aria-selected="true">예약내역</button>
			<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
				data-bs-target="#nav-profile" type="button" role="tab"
				aria-controls="nav-profile" aria-selected="false">취소내역</button>
		</div>
	</nav>
	<div class="tab-content" id="nav-tabContent">
		<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
			<div class="bd-example">
				<table class="table table-striped" style="text-align:center;">
					<thead>
						<tr>
							<th scope="col">예약번호</th>
							<th scope="col">예약일</th>
							<th scope="col">상품정보</th>
							<th scope="col">금액</th>
							<th scope="col">예약상태</th> 
						</tr>
					</thead>
					<tbody> 
					<% if (rv_list_a != null && rv_list_a.size() > 0) {
						for (int i = 0 ; i < rv_list_a.size() ; i++) {
							ReserveInfo info = rv_list_a.get(i); 
					      	String dis = ""; 
					      	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
					        Calendar c1 = Calendar.getInstance();
						 	String now = dateFormat.format(c1.getTime()); 
						 	Date dtNow = dateFormat.parse(now);
						 	Date dtEdate = dateFormat.parse(info.getRv_edate());

						 	String rv_sdate = info.getRv_sdate().substring(0, 10);
						 	String rv_edate = info.getRv_edate().substring(0, 10);

					      	String rv_status = "예약확정";
					      	boolean rvBtn = false;
					      	if (info.getRv_state().equals("b")) {
					      		rv_status = "예약취소";
					      	} else {
							 	if (dtNow.after(dtEdate)){
							 		rv_status = "여행종료";
							 		rvBtn = true;
							 	}
					      	}
				            
					%>
						<tr>
							<td scope="row"><strong><a href="mypage_rv_view.mypage?rv_code=<%=info.getRv_code() %>"><%=info.getRv_code() %></a></strong></td>
							<td><%=info.getRv_date().substring(0, 10) %></td>
							<td><%=info.getHotel_name() %></td>
							<td><%=String.format("%,d", info.getRv_pay_price()) %>원</td>
							<td><%=rv_status %></td>
						</tr> 
			            <%
						}
					} else { %>
							<tr>
				                <td colspan="5" style="height:222px">
				                    <div class="nodata" style="margin-top: 80px;"><p>조회 하신 데이터가 없습니다.</p></div>
				            	</td>
				            </tr>
					<% } %> 
					</tbody>
				</table>
			</div>
			<%if (rv_list_a != null && rv_list_a.size() > 0 && rv_list_a.size() < 15) { %>
			<div style="height:<%=20-rv_list_a.size()%>0px;"></div>
			<% } %>
		</div>
		<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
			<div class="bd-example">
				<table class="table table-striped" style="text-align:center;">
					<thead>
						<tr>
							<th scope="col">예약코드</th>
							<th scope="col">예약일</th>
							<th scope="col">상품정보</th>
							<th scope="col">금액</th>
							<th scope="col">예약상태</th>
						</tr>
					</thead>
					<tbody> 
					<% if (rv_list_b != null && rv_list_b.size() > 0) {
						for (int i = 0 ; i < rv_list_b.size() ; i++) {
							ReserveInfo info = rv_list_b.get(i); 
					      	String dis = ""; 
					      	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
					        Calendar c1 = Calendar.getInstance();
						 	String now = dateFormat.format(c1.getTime()); 
						 	Date dtNow = dateFormat.parse(now);
						 	Date dtEdate = dateFormat.parse(info.getRv_edate());

						 	String rv_sdate = info.getRv_sdate().substring(0, 10);
						 	String rv_edate = info.getRv_edate().substring(0, 10); 
				            
					%>
						<tr>
							<td scope="row"><%=info.getRv_code() %></td>
							<td><%=info.getRv_date().substring(0, 10) %></td>
							<td><%=info.getHotel_name() %></td>
							<td><%=String.format("%,d", info.getRv_pay_price()) %>원</td>
							<td>예약취소</td>
						</tr> 
			            <%
						}
					} else { %>
							<tr>
				                <td colspan="5" style="height:222px">
				                    <div class="nodata" style="margin-top: 80px;"><p>조회 하신 데이터가 없습니다.</p></div>
				            	</td>
				            </tr>
					<% } %> 
					</tbody>
				</table>
			</div>
			<%if (rv_list_b != null && rv_list_b.size() > 0 && rv_list_b.size() < 15) { %>
			<div style="height:<%=20-rv_list_b.size()%>0px;"></div>
			<% } %>
		</div> 
	</div>
</div>
</div>


<%@ include file="../com/_footer.jsp"%>