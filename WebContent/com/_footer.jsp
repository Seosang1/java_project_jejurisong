<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String jsSrc2 = request.getContextPath() + "/common/js/";
%>
<style>
.txt_policy {
	font-size: 13px;
	line-height: 20px;
	color: #999;
}
</style>



<!-- ******************** aside : top버튼 ******************** -->
<style>
aside {
	display: none;
	position: fixed;
	cursor: pointer;
	width: 60px;
	height: 60px;
	right: 2%;
	bottom: 5%;
	background-color: #aaaaaa;
	color: #fff;
	z-index: 10;
}

aside img {
	width: 40px;
	height: 40px;
	margin: 10px 10px;
}

aside:hover {
	opacity: .8;
}
</style>


<script>
	$(document).ready(function() {
		var asideUp = $('aside');

		$('a[href="#"]').click(function(e) {
			e.preventDefault();
		})

		// 스크롤 이벤트
		$(window).scroll(function() {

			var height = $(document).scrollTop();

			// aside 표시 설정
			if (height > 500) {
				asideUp.show(500)
			} else {
				asideUp.hide(500)
			}
		});

		// aside 클릭 이벤트
		asideUp.click(function() {
			$('html, body').animate({
				scrollTop : 0
			}, 400);
		});

	});
</script>
<aside>
	<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" fill="currentColor" class="bi bi-arrow-up-square" viewBox="0 0 16 16">
  		<path fill-rule="evenodd" d="M15 2a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2zM0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm8.5 9.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z" />
	</svg>
</aside>


<footer class="text-muted py-5" style="background-color: #272727;">
	<div class="container">
		<p class="txt_policy">(주)제주리닷컴 | 대표:이조</p>
		<p class="txt_policy">주소:서울특별시 강남구 강남대로 428(만이빌딩 504호)</p>
		<p class="txt_policy">사업자등록번호:97-95-94870 | 개인정보보호책임자:김서송 | 이메일:kkss@jejurisong.com</p>
		<p class="txt_policy">Copyright©2021 JEJURISONG.COM. All rights reserved.</p>
		<p class="txt_policy"><a href="<%=request.getContextPath()%>/admin/login_form.jsp">admin</a></p>
	</div>
</footer>
<script src="<%=jsSrc2%>bootstrap.bundle.min.js"></script>


</body>

</html>