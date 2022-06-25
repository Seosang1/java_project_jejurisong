<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ include file="../_inc/incAdminHead.jsp" %>
<%@ include file="../_inc/incAdminLeft.jsp" %>   

<%
request.setCharacterEncoding("utf-8");
@SuppressWarnings("unchecked")
//(어노테이션) 호환되지 않은 유형으로 작동하면 프로그램이 컴파일 되지 않기에 해당 경고를 보여줌 (ArrayList 제네릭 사용시 밑줄 가리는 방법)


// ▼▼▼ 데이터 받아와서 변수 셋팅 ▼▼▼ 
ArrayList<MemberInfo> list = (ArrayList<MemberInfo>)request.getAttribute("list"); 
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
						alert("삭제할 숙박정보가 없습니다. \n삭제할 데이터를 선택 후 삭제해주세요.");
						return false;
					} else {

						if (confirm("정말 삭제하시겠습니까?")) {

					        var frm = document.createElement("form"); 
					        frm.setAttribute("method", "Post");  					//Post 방식
					        frm.setAttribute("action", "member_del.membera"); 	//요청 보낼 주소

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
				<h3>회원 > 회원 리스트</h3>
				
				<!-- content -->
				<div id="content">
				
					<!-- *** Search Layout *** -->
					<form name="frmSearch" method="get" action="member_list.membera">
						
						<div class="box_search01">
							<ul>  
								<li> 
									<span class="title01">회원아이디</span> 
									<span><input type="text" name="txt_id" value="<%=common.nullToString(mapSchargs.get("id")) %>" style="width: 200px"></span> 
									<span class="title01" style="margin-left:20px;">회원이름</span> 
									<span><input type="text" name="txt_name" value="<%=common.nullToString(mapSchargs.get("name")) %>" style="width: 200px"></span> 
								</li>
							</ul>
							<span class="btn" style="margin-top:0px;">
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
									<th scope="col">아이디</th>
									<th scope="col">이름</th>
									<th scope="col">생년월일</th>  
									<th scope="col">성별</th>
									<th scope="col">전화번호</th>
									<th scope="col">이메일</th> 
									<th scope="col">sns수신여부</th> 
									<th scope="col">email수신여부</th> 
								</tr>
							</thead>
							<tbody>
						<%
						
						if (list != null && list.size() > 0) {
							// 숙박 리스트가 있다면 돌리기
							for (int i = 0 ; i < list.size() ; i++) {
						      	MemberInfo memberInfo = list.get(i); 

						      	String dis = ""; 
						%>
							<tr onmouseover="this.className='on'" onmouseout="this.className=''" >
								<td><input type="checkbox" name="chk_del" value="<%=memberInfo.getMi_id() %>" <%=dis %>/></td>
								<td><%=memberInfo.getMi_id() %></td> 
								<td><%=memberInfo.getMi_name() %></td> 
								<td><%=memberInfo.getMi_birth() %></td> 
								<td><%=common.getGender().get(memberInfo.getMi_gender()) %></td> 
								<td><%=memberInfo.getMi_phone() %></td> 
								<td><%=memberInfo.getMi_email() %></td> 
								<td><%=common.getAgree().get(memberInfo.getMi_issns()) %></td> 
								<td><%=common.getAgree().get(memberInfo.getMi_ismail()) %></td>
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
							firstUrl = "member_list.membera" + args + "&cpage=1";
							prevUrl  = "member_list.membera?cpage=" + (pageInfo.getCpage() - 1);
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
								<a href="member_list.membera<%=args + "&cpage=" + k %>"><%=k %></a> 
					<%		}
						}
						if (pageInfo.getCpage() != pageInfo.getPcnt()) {	// 현재 페이지번호가 마지막 페이지 번호이면
							lastUrl = "member_list.membera" + args + (pageInfo.getCpage() + 1);
							nextUrl = "member_list.membera" + args + "&cpage=" + pageInfo.getPcnt(); 
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