<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%@ include file="../com/_header.jsp"%>
<!-- 내용 --> 
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
					aria-expanded="false" onclick="location.href='question_index.qst'">
					<img src="<%=commImgSrc%>menu-arrow.svg" />
					1:1 문의하기
				</button>
			</li>
		</ul>
	</div>

	<div class="p-3" style="margin-left: 20px; width: 100%;">
		<h2>공지사항</h2>
		<form name="frmsch" method="get">
			<p style="width: 700px;" align="right">
				<select name="schtype">
					<option value="title">제목</option>
					<option value="content">내용</option>
					<option value="tc">제목+내용</option>

				</select> <input type="text" name="keyword" value="" /> <input type="submit"
					value="검색" />
			</p>
		</form>
		<table width="700" cellpadding="5" cellspacing="0" id="brd"
			class="table table-striped">
			<tr>
				<th width="10%">번호</th>f
				<th width="*">제목</th>
				<th width="15%">작성일</th>
				<th width="15%">조회수</th>
			</tr>
			<tr align="center">
				<td>1</td>
				<td align="left">1</td>
				<td>1</td>
				<td>2</td>
			</tr>
		</table>
	</div>

</div>

<%@ include file="../com/_footer.jsp"%>