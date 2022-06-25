<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%@ include file="../com/_header.jsp"%>
<%
if (loginMember != null) {
%>
<script>
	alert("잘못된 경로로 들어오셨습니다.");
	history.back();
</script>
<%
out.close(); // 파일 실행을 강제로 종료시킴
}

request.setCharacterEncoding("utf-8"); 
%>

<style>
.fontBlue {
	color: blue;
	font-weight: bold;
}

.fontRed {
	color: red;
	font-weight: bold;
}
</style>
<script>
	function chkValue(frm) {
		var agree = frm.agree.value;
		if (agree == "n") {
			alert("약관에 동의해야 회원가입이 가능합니다.");
			frm.agree.focus();
			return false;
		}

		return true;
	}

	function setDomain(domain) {
		var e3 = document.frmJoin.e3;
		if (domain == "direct") {
			e3.value = "";
			e3.focus();
		} else {
			e3.value = domain;
		}
	}

	function chkDupID(uid) {
		if (uid.length >= 4) {
			$.ajax({
				type : "POST", //데이터 전송방법
				url : "/jejurisong/dupID", //데이터를 받을 서버의 URL로 컨트롤러
				data : {
					"uid" : uid
				}, //컨트롤러로 보낼 데이터
				success : function(chkRst) {
					//데이터를 보내어 실행한 결과를 chkRst로 받아옴
					var msg = "";
					console.log(chkRst);
					if (chkRst == 0) { //uid와 동일한 회원정보가 없으면
						msg = "<span class='fontBlue'>사용하실 수 있는 ID입니다.</span>";
						$("#idChk").val("y");
					} else { //uid와 동일한 회원정보가 있으면(중복된 ID이면)
						msg = "<span class='fontRed'>이미 사용중인 ID입니다.</span>";
						$("#idChk").val("n");
					}
					document.getElementById("idMsg").innerHTML = msg;
				}
			});
		}
	}
</script>


<!-- content 영역 시작 -->
<div class="contents">
	<div class="album py-4 bg-light col-md-6" style="margin:auto">
	
			
		<div class="col-md-10" style="margin:auto">
		
			<h2>회원가입</h2>
			<span>제주리송 회원이 되시고 나만의 여행 후기를 남겨주세요.</span>
			<hr class="my-4">
	
			<form class="needs-validation" novalidate name="frmJoin" method="post" action="proc.mem" style="margin-top: 10px;" enctype="multipart/form-data">

				<input type="hidden" name="wtype" value="in" /> 
				<input type="hidden" name="idChk" id="idChk" value="n" />
				
				
				<div class="row g-3">
					<div class="col-12">
						<label for="mi_id" class="form-label">아이디</label> 
						<input type="text" class="form-control" id="mi_id" name="mi_id" placeholder="" value="id001" onkeyup="chkDupID(this.value);" required>
						<div class="invalid-feedback"></div>
						<span id="idMsg" style="font-size: 80%">아이디는 4~20자의 영문 및 숫자 조합으로 입력하세요.</span>
					</div> 
					<div class="col-12">
						<label for="mi_pwd" class="form-label">비밀번호</label> 
						<input type="password" class="form-control" id="mi_pwd" name="mi_pwd" value="1234" required>
					</div> 
					<div class="col-12">
						<label for="mi_pwd2" class="form-label">비밀번호 확인</label> 
						<input type="password" class="form-control" id="mi_pwd2" name="mi_pwd2" value="1234" required>
					</div> 
					<div class="col-12">
						<label for="mi_name" class="form-label">이름</label> 
						<input type="text" class="form-control" id="mi_name" name="mi_name" value="아이디공공일" required>
					</div> 
					<div class="col-12">
						<label for="mi_birth" class="form-label">생년월일</label> 
						<input type="date" class="form-control" id="mi_birth" name="mi_birth" value="1990-10-10" required>
					</div>
					<div class="col-12">
						<label for="mi_email" class="form-label col-12">성별</label> 
						<div class="form-check form-check-inline">
							<input name="mi_gender" type="radio" class="form-check-input" value="m" required> 
							<label class="form-check-label" for="mi_gender">남</label>
						</div>
						<div class="form-check form-check-inline">
							<input name="mi_gender" type="radio" class="form-check-input" value="f" checked="checked" required> 
							<label class="form-check-label" for="mi_gender">여</label>
						</div>
					</div>
					<div class="col-12">
						<label for="mi_phone" class="form-label">전화번호</label>  
						<input type="text" id="mi_phone" name="mi_phone" maxlength="13" class="form-control" value="010-8383-2083"/>
					</div>
					<div class="col-12">
						<label for="mi_email" class="form-label">이메일</label> 
						<input type="email" class="form-control" id="mi_email" name="mi_email" placeholder="you@example.com" value="id001@naver.com">
						<div class="invalid-feedback">이메일을 입력해주세요</div>
					</div> 
					<div class="col-12">
						<label for="mi_pic" class="form-label">사진</label> 
			          <input type="file" class="form-control" id="mi_pic" name="mi_pic" aria-label="Small file input example">
			        </div>
					<div class="col-12">
						<label for="mi_issns" class="form-label col-12">SNS 수신</label> 
						<div class="form-check form-check-inline">
							<input name="mi_issns" type="radio" class="form-check-input" value="y" required> 
							<label class="form-check-label" for="mi_issns">수신</label>
						</div>
						<div class="form-check form-check-inline">
							<input name="mi_issns" type="radio" class="form-check-input" value="n" checked="checked" required> 
							<label class="form-check-label" for="mi_issns">미수신</label>
						</div>
					</div>
					<div class="col-12">
						<label for="mi_ismail" class="form-label col-12">메일 수신</label> 
						<div class="form-check form-check-inline">
							<input name="mi_ismail" type="radio" class="form-check-input" value="y" required> 
							<label class="form-check-label" for="mi_ismail">수신</label>
						</div>
						<div class="form-check form-check-inline">
							<input name="mi_ismail" type="radio" class="form-check-input" value="n" checked="checked" required> 
							<label class="form-check-label" for="mi_ismail">미수신</label>
						</div>
					</div>
					
					<div class="col-12">
						<label for="ma_zip" class="form-label">우편번호</label> 
						<input type="text" class="form-control" id="ma_zip" name="ma_zip" value="13102" style="width:150px;" maxlength="5" required>
					</div> 
					<div class="col-12">
						<label for="ma_addr1" class="form-label">주소</label> 
						<input type="text" class="form-control" id="ma_addr1" name="ma_addr1" value="서울시 강남구 강남대로" required>
						<input type="text" class="form-control" id="ma_addr2" name="ma_addr2" value="428 만이빌딩 504호"  style="margin-top:5px;" required>
					</div> 
						  
					<hr class="my-4">
					<div class="form-check" style="margin-top:0;">
						<input type="checkbox" class="form-check-input" id="agree" name="agree" checked>
						<label class="form-check-label" for="agree"><strong>개인정보 수집 및 이용</strong>에 동의합니다.</label>
					</div> 
					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="save-info" checked>
						<label class="form-check-label" for="save-info"><strong>개인정보 제3자 제공</strong>에 동의합니다.</label>
					</div>
					
					<hr class="my-4">
					
					<div class="col-12"> 
						<button class="w-100 btn btn-secondary btn-lg" type="submit">회원 가입</button> 
					</div> 
				
				</div>
			</form>
		</div>
	</div>
</div>

<%@ include file="../com/_footer.jsp"%>