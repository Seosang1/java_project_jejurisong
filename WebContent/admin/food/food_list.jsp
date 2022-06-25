<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ include file="../_inc/incAdminHead.jsp" %>
<%@ include file="../_inc/incAdminLeft.jsp" %>   


<%
request.setCharacterEncoding("utf-8");
@SuppressWarnings("unchecked")
//(어노테이션) 호환되지 않은 유형으로 작동하면 프로그램이 컴파일 되지 않기에 해당 경고를 보여줌 (ArrayList 제네릭 사용시 밑줄 가리는 방법)


// ▼▼▼ 데이터 받아와서 변수 셋팅 ▼▼▼ 
ArrayList<FoodInfo> foodList = (ArrayList<FoodInfo>)request.getAttribute("foodList"); 
PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");  
Common common = new Common(); 
HashMap<String, String> mapSchargs = (HashMap<String, String> )request.getAttribute("schargs"); 
String schargs = "";

// ▼▼▼ 검색관련 쿼리스트링 제작 ▼▼▼
String args = "?cpage=" + pageInfo.getCpage();  
for(String key : mapSchargs.keySet()) {
	schargs += "&"+key +"=" +  mapSchargs.get(key);
}

%> 
			<!-- *** article *** -->  
			<script> 
				
				/* 체크박스 전체 선택/해제 */
				function onCheckAll(status) {
					
					var chk_del = document.getElementsByName("chk_del");
					
					for (var i = 0; i < chk_del.length; i++ ) {
						chk_del[i].checked = status; 
					} 
				}
				
				/* 삭제처리 */
				function onProcDel() {
					console.log("delete proc");
					
					var chk_del = document.getElementsByName("chk_del");
					var arrCheck = []; 
					for (var i = 0; i < chk_del.length; i++ ) {
						if (chk_del[i].checked == true) {
							arrCheck[i] = chk_del[i].value;
						} 
					} 
					
					console.log(arrCheck);
					if (arrCheck.length == 0) {
						alert("삭제할 음식점 정보가 없습니다. \n삭제할 데이터를 선택 후 삭제해주세요.");
						return false;
					} else {

						if (confirm("정말 삭제하시겠습니까?")) {

					        var frm = document.createElement("form"); 
					        frm.setAttribute("method", "Post");  					//Post 방식
					        frm.setAttribute("action", "food_del.fooda"); //요청 보낼 주소

					        var hiddenField = document.createElement("input"); 
					        hiddenField.setAttribute("type", "hidden");
					        hiddenField.setAttribute("name", "arrCheck");
					        hiddenField.setAttribute("value", arrCheck); 
					        frm.appendChild(hiddenField); 
					        document.body.appendChild(frm); 
					        frm.submit();
						} 
					}

					
					
				}
			</script>
			
			<article>
				<h3>음식점 리스트 > 음식점 리스트</h3>
				
				<!-- content -->
				<div id="content">
				
					<!-- *** Search Layout *** -->
					<form name="frmSearch" method="get" action="food_list.fooda">
						
						<div class="box_search01">
							<ul> 
								<li>
									<span class="title01">지역</span>  
									<span style="width: 140px;">
										<select name="sl_area" style="width: 120px;">
											<option value="">전체</option>
										<% for(String key : common.getArea().keySet()) { 
											String sl = "";
											if (key.equals(mapSchargs.get("area"))) sl = " selected = 'selected' ";
										%>
											<option value="<%=key%>" <%=sl %>><%=common.getArea().get(key) %></option>
										<% } %>
										</select>  
									</span>
									<span class="title01">음식점 유형</span> 
									<span style="width: 180px;">
										<select name="sl_type" style="width: 160px;">
											<option value="">전체</option>
										<% for(String key : common.getFoodType().keySet()) {
											String sl = "";
											if (key.equals(mapSchargs.get("type"))) sl = " selected = 'selected' "; %>
											<option value="<%=key%>" <%=sl %>><%=common.getFoodType().get(key) %></option>
										<% } %>
										</select> 
									</span>  
									<span class="title01">오픈여부</span> 
									<span>
										<select name="sl_open_yn" style="width: 100px;">
											<option value="">전체</option>
										<% for(String key : common.getOpenYn().keySet()) { 
											String sl = "";
											if (key.equals(mapSchargs.get("open_yn"))) sl = " selected = 'selected' ";%>
											<option value="<%=key%>" <%=sl %>><%=common.getOpenYn().get(key) %></option>
										<% } %> 
										</select> 
									</span> 
								</li> 
								<li> 
									<span class="title01">음식점명</span> 
									<span><input type="text" name="txt_name" value="<%=common.nullToString(mapSchargs.get("name")) %>" style="width: 300px"></span> 
								</li>
							</ul>
							<span class="btn" style="margin-top:15px;">
								<a href="#" onclick="document.frmSearch.submit()" class="btn_search">조회</a> 
							</span>
						</div> 
					</form>
		
					<div class="table_top">
						총 <span>12</span>건 
						
						<span class="btn_event" style="display:block;position:absolute;top:0px;right:0px;">
							<a href="food_form.fooda" class="btn_default blue">등록</a>
							<a href="#" onclick="onProcDel()" class="btn_default gray">삭제</a>
						</span>
					</div>
		
					<!-- *** list *** -->
					<div class="tbl_wrap_list">
						<table class="tbl_list">  
							<thead>
								<tr>
									<th scope="col"><input type="checkbox" id="allCheck" onclick="onCheckAll(this.checked)" /></th> 
									<th scope="col">지역</th>
									<th scope="col">음식점 유형</th>
									<th scope="col">음식점명</th>  
									<th scope="col">운영시간</th>  
									<th scope="col">평점</th>
									<th scope="col">리뷰</th> 
									<th scope="col">운영여부</th>
									<th scope="col">삭제여부</th>
								</tr>
							</thead>
							<tbody>
						<%
						
						if (foodList != null && foodList.size() > 0) {
							// 음식점 리스트가 있다면 돌리기
							for (int i = 0 ; i < foodList.size() ; i++) {
						      	FoodInfo foodInfo = foodList.get(i); 
						      	String food_addr = ( foodInfo.getFood_addr().length() > 10 ) ? foodInfo.getFood_addr().substring(0, 10) + "..." : foodInfo.getFood_addr();
						%>
							<tr onmouseover="this.className='on'" onmouseout="this.className=''" onclick="location.href='#';">
								<td><input type="checkbox" name="chk_del" value="<%=foodInfo.getFood_code() %>" /></td>
								<td><%=common.getArea().get(foodInfo.getFood_area()) %></td>
								<td><%=common.getFoodType().get(foodInfo.getFood_type()) %></td> 
								<td><a href="food_view.fooda?food_code=<%=foodInfo.getFood_code() %>"><%=foodInfo.getFood_name() %></a></td> 
								<td><%=foodInfo.getFood_open() %>-<%=foodInfo.getFood_close() %></td> 
								<td><%=foodInfo.getFood_score() %></td>
								<td><%=foodInfo.getFood_review_cnt() %></td> 
								<td><%=common.getOpenYn().get(foodInfo.getFood_open_yn()) %></td> 
								<td><%=common.getDelYn().get(foodInfo.getFood_del_yn()) %></td>
							</tr> 
				            <%
							}
						} else {
							%>
								<tr>
					                <td colspan="13" style="height:150px">
					                    <div class="nodata"><p>조회 하신 데이터가 없습니다.</p></div>
					            	</td>
					            </tr>
								<%}
								%>
							</tbody>
						</table>
					</div> 
					
					<!-- *** paging ***  -->
					

					<div class="paging">
				<% if (foodList != null && foodList.size() > 0) {
						args = "?psize=" + pageInfo.getPsize() + schargs;
						
						String firstUrl = "#";
						String prevUrl = "#";
						String lastUrl = "#";
						String nextUrl = "#";
					
						if (pageInfo.getCpage() > 1) { 
							firstUrl = "food_list.fooda" + args + "&cpage=1";
							prevUrl  = "food_list.fooda?cpage=" + (pageInfo.getCpage() - 1);
						} // 첫 페이지와 이전 페이지 링크
					%>
						<a href="<%=firstUrl%>"><img src='../admin/common/images/btn_pg_first.png' alt='첫 페이지' /></a>
						<a href="<%=prevUrl%>"><img src='../admin/common/images/btn_pg_previous.png' alt='이전 페이지' /></a>
						<span class='wrap'>
					<%  
						for (int i = 1, k = pageInfo.getSpage() ; i <= pageInfo.getBsize() && k <= pageInfo.getEpage() ; i++, k++) {
							if (pageInfo.getCpage() == k) { %> 
								<a href='#' class='on'><%=k %></a>
					<%		} else { %>
								<a href="food_list.fooda<%=args + "&cpage=" + k %>"><%=k %></a> 
					<%		}
						}
						if (pageInfo.getCpage() != pageInfo.getPcnt()) {	// 현재 페이지번호가 마지막 페이지 번호이면
							lastUrl = "food_list.fooda" + args + (pageInfo.getCpage() + 1);
							nextUrl = "food_list.fooda" + args + "&cpage=" + pageInfo.getPcnt(); 
						} 
					%> 
						</span>
						<a href="<%=nextUrl%>"><img src='../admin/common/images/btn_pg_next.png' id='next' alt='다음 페이지' /></a>
						<a href="<%=lastUrl%>"><img src='../admin/common/images/btn_pg_last.png' id='nextEnd' alt='마지막 페이지' /></a>
					<% 
					
				}%>
					</div>
					<!-- //페이징 -->  
		
				</div>
				<!-- //content --> 
			
			</article> 
			<!-- //article --> 
		 
		
		<%@ include file="../_inc/incAdminFooter.jsp" %>