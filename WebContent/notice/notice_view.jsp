<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%@ include file="../com/_header.jsp"%>
<%
PageInfo pageInfo = (PageInfo) request.getAttribute("pageInfo");
NoticeInfo noticeInfo = (NoticeInfo) request.getAttribute("noticeInfo");

String args = "?cpage=" + pageInfo.getCpage();
if (pageInfo.getKeyword() != null && !pageInfo.getKeyword().equals("")) {
	args += "&schtype=" + pageInfo.getSchtype() + "&keyword=" + pageInfo.getKeyword();
} // 검색조건이 있을 경우에만 쿼리스트링을 만들어 줌
%>

<div class="contents" style="display: flex;">
	<div class="flex-shrink-0 p-3 bg-white"
		style="width: 230px; height: 50vh;">
		<h2
			class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">고객센터</h2>
		<ul class="list-unstyled ps-0">
			<li class="mb-1">
				<button class="btn btn-toggle align-items-center rounded collapsed"
					data-bs-toggle="collapse" data-bs-target="#account-collapse"
					aria-expanded="false" onclick="location.href='notice_list.brd'">
					<img src="<%=commImgSrc%>menu-arrow.svg" /> 공지사항
				</button>
			</li>
			<li class="mb-1">
				<button class="btn btn-toggle align-items-center rounded collapsed"
					data-bs-toggle="collapse" data-bs-target="#account-collapse"
					aria-expanded="false" onclick="location.href='question_form.qst'">
					<img src="<%=commImgSrc%>menu-arrow.svg" /> 1:1 문의하기
				</button>
			</li>
		</ul>
	</div>

	<style>
		.brdView tr {padding:10px;vertical-align: top;}
		.brdView td {padding:10px;}
	</style>
	<div class="p-3" style="margin-left: 20px; width: 100%;">
		<h2>게시글 보기</h2>
		<table class="brdView" width="100%" style="margin-top:20px; ">
			<tr>
				<th width="200px;"  >글제목</th>
				<td><%=noticeInfo.getBn_title()%></td>
			</tr>
			<tr>
				<th>글내용</th>
				<td height="70px;"><%=noticeInfo.getBn_content().replace("\r\n", "<br />")%></td>
			</tr>
			<tr>
				<th>작성일자</th>
				<td><%=noticeInfo.getBn_date()%></td>
			</tr>
			<tr>
				<th>조회수</th>
				<td><%=noticeInfo.getBn_read()%></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="button"
					value="목록으로 가기" onclick="location.href='notice_list.brd<%=args%>';" />
				</td>
			</tr>
		</table>
	</div>
</div>

	<%@ include file="../com/_footer.jsp"%>