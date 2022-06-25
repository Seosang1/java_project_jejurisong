<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%@ include file="../com/_header.jsp"%>
<%
if (loginMember == null) {  
	out.println("<script>");
	out.println("alert('로그인 후 사용하실 수 있습니다.');");
	out.println("location.href='login_form.jsp?url=member/mypage.mem';");
	out.println("</script>");
	out.close();
}

request.setCharacterEncoding("utf-8"); 
 
%> 
<script>
	function byeBye() {
		if (confirm("진짜 탈퇴? \n 탈퇴 돈 XX")) {
			// 디비에서 업데이트 N - 로그아웃
			location.href = "proc.mem?wtype=del";
		} else {
			return false;
		}
	}
</script> 
<div class="contents">

	<div class="album py-4 bg-light col-md-6" style="margin:auto">
	
			
		<div class="col-md-10" style="margin:auto">
		
			<h2>회원정보 수정</h2> 
			<hr class="my-4">
	
			<form class="needs-validation" novalidate name="frmJoin" method="post" action="proc.mem" style="margin-top: 10px;" enctype="multipart/form-data">

				<input type="hidden" name="wtype" value="up" /> 
				<input type="hidden" name="idChk" id="idChk" value="n" />
				
				
				<div class="row g-3">
					<div class="col-12">
						<label for="mi_id" class="form-label">아이디</label> 
						<input class="form-control" type="text" value="<%=loginMember.getMi_id() %>" aria-label="<%=loginMember.getMi_id() %>" disabled readonly>
					</div> 
					
					
					<div class="col-12">
						<label for="old_pwd" class="form-label">기존 비밀번호</label> 
						<input type="password" class="form-control" id="old_pwd" name="old_pwd" value="" required>
					</div>
					<div class="col-12">
						<label for="mi_pwd" class="form-label">비밀번호</label> 
						<input type="password" class="form-control" id="mi_pwd" name="mi_pwd" value="" required>
					</div> 
					<div class="col-12">
						<label for="mi_pwd2" class="form-label">비밀번호 확인</label> 
						<input type="password" class="form-control" id="mi_pwd2" name="mi_pwd2" value="" required>
					</div> 
					<div class="col-12">
						<label for="mi_name" class="form-label">이름</label> 
						<input class="form-control" type="text" value="<%=loginMember.getMi_name() %>" aria-label="<%=loginMember.getMi_name() %>" disabled readonly>
					</div> 
					<div class="col-12">
						<label for="mi_birth" class="form-label">생년월일</label>
						<input class="form-control" type="text" value="<%=loginMember.getMi_birth() %>" aria-label="<%=loginMember.getMi_birth() %>" disabled readonly>
					</div>
					<div class="col-12">
						<label for="mi_email" class="form-label col-12">성별</label> 
						<input class="form-control" type="text" value="<%=loginMember.getMi_gender().equals("f") ? "여자" : "남자"%>" aria-label="<%=loginMember.getMi_gender().equals("f") ? "여자" : "남자"%>" disabled readonly>
					</div> 
					<div class="col-12">
						<label for="mi_pic" class="form-label">사진</label> 
			          	<input type="file" class="form-control" id="mi_pic" name="mi_pic" aria-label="Small file input example">
			        </div>
					<div class="col-12">
						<label for="mi_issns" class="form-label col-12">SNS 수신</label> 
						<div class="form-check form-check-inline">
							<input name="mi_issns" type="radio" class="form-check-input" value="y" <%if (loginMember.getMi_issns().equals("y")) {%> checked="checked" <%}%> required> 
							<label class="form-check-label" for="mi_issns">수신</label>
						</div>
						<div class="form-check form-check-inline">
							<input name="mi_issns" type="radio" class="form-check-input" value="n" <%if (loginMember.getMi_issns().equals("n")) {%> checked="checked" <%}%> required> 
							<label class="form-check-label" for="mi_issns">미수신</label>
						</div>
					</div>
					<div class="col-12">
						<label for="mi_ismail" class="form-label col-12">메일 수신</label> 
						<div class="form-check form-check-inline">
							<input name="mi_ismail" type="radio" class="form-check-input" value="y" <%if (loginMember.getMi_ismail().equals("y")) {%> checked="checked" <%}%> required> 
							<label class="form-check-label" for="mi_ismail">수신</label>
						</div>
						<div class="form-check form-check-inline">
							<input name="mi_ismail" type="radio" class="form-check-input" value="n" <%if (loginMember.getMi_ismail().equals("n")) {%> checked="checked" <%}%>  required> 
							<label class="form-check-label" for="mi_ismail">미수신</label>
						</div>
					</div>
					
					<hr class="my-4">
					
					<div class="col-12"> 
						<button class="w-100 btn btn-secondary btn-lg" type="submit">정보 수정</button>  
					</div> 
					<div class="col-12"> 
						<button class="w-100 btn btn-outline-secondary btn-lg" onclick="byeBye()">회원 탈퇴</button>  
					</div> 
				
				</div>
			</form>
		</div>
	</div>  
</div>

<%@ include file="../com/_footer.jsp"%>