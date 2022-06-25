<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%@ include file="../com/_header.jsp"%> 
<%
	request.setCharacterEncoding("utf-8");
	ArrayList<NoticeInfo> noticeList = (ArrayList<NoticeInfo>) request.getAttribute("noticeList");
	PageInfo pageInfo = (PageInfo) request.getAttribute("pageInfo");

	int cpage = pageInfo.getCpage();
	int rcnt = pageInfo.getRcnt();
	int pcnt = pageInfo.getPcnt();
	int spage = pageInfo.getSpage();
	int epage = pageInfo.getEpage();
	int psize = pageInfo.getPsize();
	int bsize = pageInfo.getBsize();

	String schtype = pageInfo.getSchtype();
	String keyword = pageInfo.getKeyword();
	String args = "", schargs = "";

	if (schtype == null || keyword == null) {
		schtype = "";
		keyword = "";
	} else if (!keyword.equals("")) {
		schargs = "&schtype=" + schtype + "&keyword=" + keyword;
	}
	args = "&cpage=" + cpage + schargs;
%>
<div class="contents" style="display: flex;">
	<div class="flex-shrink-0 p-3 bg-white" style="width: 230px;height:50vh;">
		<h2 class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">고객센터</h2>
		<ul class="list-unstyled ps-0">
			<li class="mb-1">
				<button class="btn btn-toggle align-items-center rounded collapsed"
					data-bs-toggle="collapse" data-bs-target="#account-collapse"
					aria-expanded="false" onclick="location.href='notice_list.brd'">
					<img src="<%=commImgSrc%>menu-arrow.svg" />
					공지사항
				</button>
			</li>
			<li class="mb-1">
				<button class="btn btn-toggle align-items-center rounded collapsed"
					data-bs-toggle="collapse" data-bs-target="#account-collapse"
					aria-expanded="false" onclick="location.href='question_form.qst'">
					<img src="<%=commImgSrc%>menu-arrow.svg" />
					1:1 문의하기
				</button>
			</li>
		</ul>
	</div>

	<div class="p-3" style="margin-left: 20px; width: 100%;">
	<h2>공지사항</h2>
	<table width="700" cellpadding="5" cellspacing="0" id="brd"  class="table table-striped" style="margin-top:20px;"> 
		<tr>
			<th width="10%">번호</th>
			<th width="*">제목</th>
			<th width="15%">작성일</th>
			<th width="15%">조회수</th>
		</tr>
		<%
			if (noticeList.size() > 0 && rcnt > 0) {
				int num = rcnt - (psize * (cpage - 1));
				String title = "", lnk = "";
				for (int i = 0; i < noticeList.size(); i++) {
					NoticeInfo ni = noticeList.get(i);
					title = ni.getBn_title();
					if (title.length() > 30)
						title = title.substring(0, 28) + "...";
					lnk = "<a href='notice_view.brd?bnidx=" + ni.getBn_idx() + args + "'>";
		%>
		<tr align="center">
			<td><%=num%></td>
			<td align="left"><%=lnk + title + "</a>"%></td>
			<td><%=ni.getBn_date().substring(2, 11).replace('-', '.')%></td>
			<td><%=ni.getBn_read()%></td>
		</tr>
		<%
			num--;
				}
			} else {
				out.println("<tr><td colspan='4' align='center'>검색결과가 없습니다.</td></tr>");
			}
		%>
	</table>
	<form name="frmsch" method="get" align="center">
		<p style="width: 700px;" align="center">
			<select name="schtype">
				<option value="title" <%if (schtype.equals("title")) {%> selected
					<%}%>>제목</option>
				<option value="content" <%if (schtype.equals("content")) {%>
					selected <%}%>>내용</option>
				<option value="tc" <%if (schtype.equals("tc")) {%> selected <%}%>>제목+내용</option>
				
			</select> <input type="text" name="keyword" value="<%=keyword%>" /> <input
				type="submit" value="검색" />
		</p>
	</form>
	<table width="700" cellpadding="5" style="margin-top: 20px;">
		<tr>
			<td width="700" align="center">
			 <%
				if (noticeList != null && noticeList.size() > 0 && rcnt > 0) {
					String pLink = "notice_list.brd?cpage=";
					if (cpage == 1) {
						out.println("[&lt;&lt;]&nbsp;&nbsp;[&lt;]&nbsp;&nbsp;");
					} else {
						out.print("<a href='" + pLink + "1" + schargs + "'>");
						out.println("[&lt;&lt;]</a>&nbsp;&nbsp;");
						out.print("<a href='" + pLink + (cpage - 1) + schargs + "'>");
						out.println("[&lt;]</a>&nbsp;&nbsp;");
					} // 첫 페이지와 이전 페이지 링크

					for (int i = 1, j = spage; i <= bsize && j <= epage; i++, j++) {
						// i : 루프돌릴 횟수를 검사할 변수, j : 페이지 번호 출력용 변수
						if (cpage == j)
							out.print("&nbsp;<strong>" + j + "</strong>&nbsp;");
						else
							out.print("&nbsp;<a href='" + pLink + j + schargs + "'>" + j + "</a>&nbsp;");
					}

					if (cpage == pcnt) {
						out.println("&nbsp;&nbsp;[&gt;]&nbsp;&nbsp;[&gt;&gt;]");
					} else {
						out.println("&nbsp;&nbsp;<a href='" + pLink + (cpage + 1) + schargs + "'>[&gt;]</a>");
						out.println("&nbsp;&nbsp;<a href='" + pLink + pcnt + schargs + "'>[&gt;&gt;]</a>");
					}
				}
			%>
			</td>
		</tr>
	</table>
</div>

</div>


	<%@ include file="../com/_footer.jsp"%>