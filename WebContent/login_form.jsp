<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%@ include file="./com/_header.jsp"%>
<% 
if (loginMember != null) {
%>
<script>
	alert("잘못된 경로로 들어오셨습니다.");
	history.back();
</script>
<%
	out.close();	// 파일 실행을 강제로 종료시킴
}

System.out.println("login_form.jsp url : " + request.getParameter("url"));
String url = request.getParameter("url");	// 로그인 후 이동할 페이지 주소(없는 경우도 있음)
if (url == null)	url = "";	// url값이 없으면 빈 문자열로 변환하여 사용
%>
<script>
	function chkVal(frm) {
		var uid = frm.uid.value;
		var pwd = frm.pwd.value;

		if (uid == "") {
			alert("아이디를 입력하세요");
			frm.uid.focus();
			return false;
		} else if (uid.length < 4) {
			alert("아이디는 4자 이상 ");
			frm.uid.focus();
			return false;
		}

		if (pwd == "") {
			alert("비밀번호를 입력하세요");
			frm.pwd.focus();
			return false;
		} else if (uid.length < 4) {
			alert("비밀번호는 4자 이상 ");
			frm.pwd.focus();
			return false;
		}

		return true;
	}
</script>
<style>
.form-signin {
	width: 100%;
	max-width: 330px; 
    margin-top: 120px;
    margin-left: auto;
    margin-right: auto;
    text-align: center;
    padding: 40px 0 100px;
    min-height: calc(100vh - 296px);
}

.form-signin .checkbox {
	font-weight: 400;
}

.form-signin .form-floating:focus-within {
	z-index: 2;
}

.form-signin input[type="email"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
</style>
<main class="form-signin">
	<form name="frmLogin" action="login" method="post"
		onsubmit="return chkVal(this);">  
		<input type="hidden" name="url" value="<%=url %>" />
		<h1 class="h3 mb-3 fw-normal" style="margin-bottom:10px;">회원 로그인</h1>

		<div class="form-floating">
			<input type="text" class="form-control" id="uid" name="uid" value="test" placeholder="아이디"> 
			<label for="uid">아이디</label>
		</div>
		<div class="form-floating" style="margin-top: 10px;">
			<input type="password" class="form-control" id="pwd" name="pwd" value="1234" placeholder="비밀번호"> 
			<label for="pwd">비밀번호</label>
		</div> 
		<div>
			<button class="w-100 btn btn-lg btn-secondary" type="submit">로그인</button>
		</div>

		<div class="checkbox mb-3" style="text-align:left;margin-top:10px;">
			<label><input type="checkbox" value="remember-me"> 아이디 기억하기</label>
		</div>
		<hr /> 
		<div style="color:grey">
			<a href="javascript:alert('준비중입니다. \n1:1 문의하기를 이용해주세요.')">아이디찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;  
			<a href="javascript:alert('준비중입니다. \n1:1 문의하기를 이용해주세요.')">비밀번호찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="join_form.mem">회원가입</a>
		</div>
		
	</form>
</main>

<%@ include file="./com/_footer.jsp"%>