<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./com/_header.jsp"%>
<%
	session.invalidate();		// 세션의 모든 정보를 삭제	
%>
<script>
	location.href= "index.do";
</script>
<%@ include file="./com/_footer.jsp"%>