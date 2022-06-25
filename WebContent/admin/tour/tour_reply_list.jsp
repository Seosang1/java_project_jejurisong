<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ include file="../_inc/incAdminHead.jsp" %>
<%@ include file="../_inc/incAdminLeft.jsp" %>   

<%
request.setCharacterEncoding("utf-8");
@SuppressWarnings("unchecked")
//(어노테이션) 호환되지 않은 유형으로 작동하면 프로그램이 컴파일 되지 않기에 해당 경고를 보여줌 (ArrayList 제네릭 사용시 밑줄 가리는 방법)


// ▼▼▼ 데이터 받아와서 변수 셋팅 ▼▼▼ 
ArrayList<ReplyInfo> list = (ArrayList<ReplyInfo>)request.getAttribute("list"); 
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
						if (chk_del[i].disabled == false) {
							chk_del[i].checked = status;	
						}
						 
					} 
				}
				
				/* 삭제처리 */
				function onProcDel(code) {
					console.log("delete proc :" + code); 
					var arrCheck = []; 
					
					if (code == "all") {
						var chk_del = document.getElementsByName("chk_del");
						for (var i = 0; i < chk_del.length; i++ ) {
							if (chk_del[i].checked == true && chk_del[i].disabled == false) {
								arrCheck[i] = chk_del[i].value;
							} 
						} 
					} else {
						arrCheck[0] = code; 
					}
					 
					if (arrCheck.length == 0) {
						alert("삭제할 정보가 없습니다. \n삭제할 데이터를 선택 후 삭제해주세요.");
						return false;
					} else {

						if (confirm("정말 삭제하시겠습니까?")) {

					        var frm = document.createElement("form"); 
					        frm.setAttribute("method", "Post");  					//Post 방식
					        frm.setAttribute("action", "tour_reply_del.toura"); //요청 보낼 주소

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
				<h3>여행지 리스트 > 후기 리스트</h3>
				
				<!-- content -->
				<div id="content">
				
					<!-- *** Search Layout *** -->
					<form name="frmSearch" method="get" action="tour_reply_list.toura">
						
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
									<span class="title01">여행지유형</span> 
									<span style="width: 180px;">
										<select name="sl_type" style="width: 160px;">
											<option value="">전체</option>
										<% for(String key : common.getTourType().keySet()) {
											String sl = "";
											if (key.equals(mapSchargs.get("type"))) sl = " selected = 'selected' "; %>
											<option value="<%=key%>" <%=sl %>><%=common.getTourType().get(key) %></option>
										<% } %>
										</select> 
									</span>  
									<span class="title01">삭제여부</span> 
									<span>
										<select name="sl_del_yn" style="width: 100px;">
											<option value="">전체</option>
										<% for(String key : common.getDelYn().keySet()) { 
											String sl = "";
											if (key.equals(mapSchargs.get("del_yn"))) sl = " selected = 'selected' ";%>
											<option value="<%=key%>" <%=sl %>><%=common.getDelYn().get(key) %></option>
										<% } %> 
										</select> 
									</span> 
								</li> 
								<li> 
									<span class="title01">여행지명</span> 
									<span><input type="text" name="txt_name" value="<%=common.nullToString(mapSchargs.get("name")) %>" style="width: 300px"></span> 
								</li>
							</ul>
							<span class="btn" style="margin-top:15px;">
								<a href="#" onclick="document.frmSearch.submit()" class="btn_search">조회</a> 
							</span>
						</div> 
					</form>
		
					<div class="table_top">
						총 <span><%=pageInfo.getRcnt() %></span>건 
						
						<span class="btn_event" style="display:block;position:absolute;top:0px;right:0px;">
							<a href="#" onclick="onProcDel('all')" class="btn_default gray">삭제</a>
						</span>
					</div>
		
					<!-- *** list *** -->
					<div class="tbl_wrap_list">
						<table class="tbl_list">  
							<thead>
								<tr>
									<th scope="col"><input type="checkbox" id="allCheck" onclick="onCheckAll(this.checked)" /></th> 
									<th scope="col">지역</th>
									<th scope="col">여행지유형</th>
									<th scope="col">여행지</th>
									<th scope="col">평점</th>
									<th scope="col">후기내용</th> 
									<th scope="col">작성자</th>
									<th scope="col">작성일</th>
									<th scope="col">삭제여부</th> 
								</tr>
							</thead>
							<tbody>
						<%
						
						if (list != null && list.size() > 0) {
							// 숙박 리스트가 있다면 돌리기
							for (int i = 0 ; i < list.size() ; i++) {
						      	ReplyInfo replyInfo = list.get(i); 

						      	String dis = "";
						      	if(replyInfo.getReply_del_yn().equals("y")) {
						      		dis = "disabled";
						      	}
						%>
							<tr onmouseover="this.className='on'" onmouseout="this.className=''" onclick="location.href='#';">
								<td><input type="checkbox" name="chk_del" value="<%=replyInfo.getReply_code() %>" <%=dis %>/></td>
								<td><%=common.getArea().get(replyInfo.getTour_area()) %></td> 
								<td><%=common.getTourType().get(replyInfo.getTour_type()) %></td> 
								<td><%=replyInfo.getTour_name() %></td> 
								<td><%=replyInfo.getReply_score() %></td>
								<td><%=replyInfo.getReply_content() %></td>  
								<td><%=replyInfo.getMi_id() %></td>
								<td><%=replyInfo.getReply_reg_date() %></td>
								<td>
								<% if(replyInfo.getReply_del_yn().equals("n")) { %>
								<input type="button" value="삭제" onclick="onProcDel('<%=replyInfo.getReply_idx() %>')" />
								<% } else { %>
									삭제완료
								<% } %>
								</td>
							</tr> 
				            <%
							}
						} else {
							%>
								<tr>
					                <td colspan="8" style="height:150px">
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
				<% if (list != null && list.size() > 0) {
						args = "?psize=" + pageInfo.getPsize() + schargs;
						
						String firstUrl = "#";
						String prevUrl = "#";
						String lastUrl = "#";
						String nextUrl = "#";
					
						if (pageInfo.getCpage() > 1) { 
							firstUrl = "tour_reply.toura" + args + "&cpage=1";
							prevUrl  = "tour_reply.toura?cpage=" + (pageInfo.getCpage() - 1);
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
								<a href="tour_reply.toura<%=args + "&cpage=" + k %>"><%=k %></a> 
					<%		}
						}
						if (pageInfo.getCpage() != pageInfo.getPcnt()) {	// 현재 페이지번호가 마지막 페이지 번호이면
							lastUrl = "tour_reply.toura" + args + (pageInfo.getCpage() + 1);
							nextUrl = "tour_reply.toura" + args + "&cpage=" + pageInfo.getPcnt(); 
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