<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%@ include file="../com/_header.jsp"%>

<style>
.fontBlue {
	color: blue;
	font-weight: bold;
}

.fontRed {
	color: red;
	font-weight: bold;
}
/* focus 효과 */
.selectbox.focus {
	border-color: #66afe9;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
}
</style>


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

	<div class="p-3" style="margin-left: 20px; width: 100%;">
		<h2>1대1문의</h2>
		<span>고객님의 질문을 적극 적으로 답변해드리고자 노력하겠습니다</span>
		<hr class="my-4">
		<!-- content 영역 시작 -->
		<div class="">
			<div class="album py-4 bg-light" style="margin: auto">


				<div class="col-md-10" style="margin: auto">

					<h2>1대1문의</h2>
					<span>고객님의 질문을 적극 적으로 답변해드리고자 노력하겠습니다</span>
					<hr class="my-4">

					<form class="needs-validation" novalidate name="frmJoin"
						method="post" action="question_.qst" style="margin-top: 10px;"
						enctype="multipart/form-data">

						<input type="hidden" name="wtype" value="in" /> <input
							type="hidden" name="idChk" id="idChk" value="n" />


						<div class="row g-3">
							<div class="col-12">
								<label for="mi_id" class="form-label">성명</label> <input
									type="text" class="form-control" id="mi_id" name="mi_id"
									placeholder="" value="김형곤" onkeyup="chkDupID(this.value);"
									required>
							</div>

							<div class="col-12">
								<label for="mi_email" class="form-label">이메일</label> <input
									type="email" class="form-control" id="mi_email" name="mi_email"
									placeholder="you@example.com" value="mail001@naver.com">
								<div class="invalid-feedback">이메일을 입력해주세요</div>
							</div>
							<div class="col-12">
								<label for="mi_phone" class="form-label">전화번호</label> <input
									type="text" id="mi_phone" name="mi_phone" maxlength="13"
									class="form-control" value="010-9141-7851" />
							</div>
							<div class="col-12">
								<label for="mi_title" class="form-label">제목</label> <input
									type="text" class="form-control" id="mi_title" name="mi_title"
									placeholder="" value="궁금합니다" required>
							</div>
							<div>
								<ul>
									<li>질문 유형  
										<select name="area" >
												<option value="티켓발권" selected="selected">티켓 발권</option>
												<option value="환불규정">환불규정</option>
												<option value="사이트이용">사이트이용</option>
												<option value="고객서비스">고객서비스</option>
												<option value="현지서비스">현지서비스</option>
												<option value="기타문의">기타문의</option>
										</select></li>
								</ul>
							</div>

							<div>문의 내용</div>
							<div>
								<textarea cols="65" rows="10"></textarea>
							</div>
							<hr class="my-4">
							<div class="form-check" style="margin-top: 0;">
								<input type="checkbox" class="form-check-input" id="agree"
									name="agree"> <label class="form-check-label"
									for="agree"><strong>개인정보 수집 및 이용</strong>에 동의합니다.</label>
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input" id="save-info">
								<label class="form-check-label" for="save-info"><strong>개인정보
										제3자 제공</strong>에 동의합니다.</label>
							</div>
							<hr class="my-4">
							<div class="col-12">
								<button class="w-100 btn btn-secondary btn-lg" type="submit">등록하기</button>
							</div>
						</div>
				</div>
				</form>
			</div>
		</div>

		<%@ include file="../com/_footer.jsp"%>