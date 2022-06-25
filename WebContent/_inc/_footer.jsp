<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String incSrc_F = request.getContextPath() + "/_inc/";
%>
<style>
.txt_policy { 
    font-size: 13px;
    line-height: 20px;
    color: #999;
</style>
 
<footer class="text-muted py-5" style="background-color: #272727;">
	<div class="container">
	<p class="txt_policy">(주)제주리닷컴 | 대표:이조</p>
	<p class="txt_policy">주소:서울시 구로구 디지털로32길 30(코오롱디지털타워 906호)</p>
	<p class="txt_policy">사업자등록번호:104-81-83563사업자정보확인 | 관광사업등록:제26004-2011-3호 | 통신판매업신고증:2004-01644호 | 개인정보보호책임자:시몬 | 이메일:sikim@jejudo.com</p>
	<p class="txt_policy">Copyright©2017 JEJUDO.COM. All rights reserved. </p>
	</div>
</footer>
<script src="<%=incSrc_F%>bootstrap.bundle.min.js"></script>
</body>
</html>