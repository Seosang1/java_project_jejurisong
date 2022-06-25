<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String src2 = request.getContextPath() + "/common/";
%>
<style>
div #infoInc {display:inline-block; text-align:center; margin-left:300px;}
div .tourInfoTitle {display:flex; margin:10px; }
div .infoImg {width:150px; height:100px;} 
</style>
	<div id="infoInc">
		<div class="tourInfoTitle">
			<div class="infoSrc" id="infoRel">
				<a href="food_list.food" ><img src="<%=src2 %>images/InfoImg/foodMain.png" class="infoImg" /></a>
			</div>
			<div class="infoSrc" class="infoAb">
				<a href="culture_info.info" ><img src="<%=src2 %>images/InfoImg/cultMain.png" class="infoImg" /></a>
			</div>
			<div class="infoSrc" class="infoAb">
				<a href="traffic_info.info" ><img src="<%=src2 %>images/InfoImg/trafficMain.png" class="infoImg" /></a>
			</div>
			<div class="infoSrc" class="infoAb">
				<a href="guide_info.info" ><img src="<%=src2 %>images/InfoImg/guideMain.png" class="infoImg" /></a>
			</div>
		</div>  
	</div>  