
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<%@ page import="db.JdbcUtil"%> 
<%@ page import="vo.*" %>
<%@ include file="../com/_header.jsp"%>
<%
request.setCharacterEncoding("utf-8");
String src = request.getContextPath() + "/common/";
ArrayList<FoodInfo> foodList = (ArrayList<FoodInfo>)request.getAttribute("foodList");   
PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");   
FoodInfo foodInfo = (FoodInfo)request.getAttribute("foodInfo"); 
String pmOrder = (String)request.getAttribute("pmOrder"); 	//	 정렬에 대한 쿼리스트링 셋팅
String pmArea = (String)request.getAttribute("pmArea"); 	//	 지역에 대한 쿼리스트링 셋팅
String args = "", schargs = "";
// 검색관련 쿼리스트링 제작 
args = "?cpage=" + pageInfo.getCpage() + schargs; 
if (pageInfo.getKeyword() == null) schargs += "&keyword=";  
else schargs += "&keyword=" + pageInfo.getKeyword();
Common comm = new Common(); 
%> 

<!-- content 영역 -->  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 
<style> 
body  {text-align:center;}
div {margin:0 auto; text-align:center;}
#totalList {  height:100%; width:1180px; display:inline-block;} 
#fdRay {display:inline-block;}
 

div #foodOrd {margin:20px auto;}
#ord {text-align:right;} 

.br {display:block; height:30px; width:*; }
  
div .fdFilter #fdMap {margin: 10px; display:block; }
.fdFilter ul li {font-size:20px;}
.fdOrdChk {margin-left:0px; float:left; margin-top:5px; }
.fdChkBox {width:15px; height:15px; } 
#fdMapTitile {display:block; width:800px; }
div #fdOrdTitle {display:block; border:5px #4f4f4f solid;}
#allChk {font-weight:bold; line-height:0.5em;}
 
.outerBox {
    border:5px #4f4f4f solid; width:350px; height:440px; text-align:center;
    padding:5px; margin:10px; display:inline-block;
}
.innerBox {
    border:1px #000 solid; width:340px; height:435px; padding:5px; 
    text-align:center; display:table-cell;  
} 
div .foodImg { margin-top:0;}
.foodName { font-size:15px; padding-top:7px; padding-bottom:3px; font-weight:bold; }
.starRate {width:100px; height:40px;} 
 
div #foodPage { width:100%;}
</style>
<script>
function getSelectedChk() {	// 선택한 체크박스들의 value값을 리턴하는 함수
	var idx = "";	// 선택한 체크박스들의 value값을 쉼표로 구분하여 저장하는 변수
}

function chkAll(all) {
	var arrChk = document.frmFood.chk;
	for (var i = 0 ; i < arrChk.length ; i++) {
		arrChk[i].checked = all.checked;
	}
}

function choose(chk) {
	if (!chk.checked) {	// 현재 체크박스를 체크 해제했을 경우
		document.frmCart.all.checked = false;
	}
} 
function chkVal() {
	var flag = false;
	var fdVal = document.getElementByName("chk");	// 배열의 형태
	System.out.println("name 밸류값 :" +chkVal);
	for (var i = 0; i < fdVal.length; i++) {
		if (fdVal[i].checked) {
			System.out.println("name 하나이상 :" +chkVal[i].value);
		}
	}
	return flag;
}
</script>
<input type="hidden" name="ord" value="<%=pageInfo.getOrd() %>" />
<input type="hidden" name="area" value="<%=pageInfo.getArea() %>" />
<input type="hidden" name="psize" value="<%=pageInfo.getPsize() %>" />
<div class="br"></div>
<div class="br"></div>
<div class="br"></div>
<div id="totalList">  
<%@ include file="../_inc/incInfo.jsp"  %> 
<!-- 음식점 필터링 -->
<div class="br"></div>
<div class="card">
	<div class="card-body">
		<form class="row g-3" id="frm" name="frm" method="get" action="food_list.food">
			<div id="mapImg">
				<img src="<%=src %>images/FoodImg/jejuMap.png" usemap="#useJejuMap" >
				<map name="useJejuMap" >
					<area shape="poly" coords="101,72,164,58,175,70,183,69,189,120,232,140,183,147,158,188,144,184,135,228,106,226,94,257,14,193,14,159,75,94"
						href="food_list.food?area=W&ord=coded">
					<area shape="poly" coords="209,40,278,26,275,36,286,40,287,57,297,68,300,95,251,138,234,144,222,130,201,126,183,101,182,68,167,68,169,58,200,47"
						href="food_list.food?area=N&ord=coded">
					<area shape="poly" coords="299,15,313,23,385,9,408,13,412,26,455,36,455,47,464,53,469,72,473,69,475,101,463,103,462,122,440,138,430,159,420,183,380,184,365,202,300,207,292,221,288,200,276,190,267,162,253,148,242,143,254,132,279,125,291,102,299,96,297,66,287,45,274,39,276,29,297,21"
						href="food_list.food?area=E&ord=coded">
					<area shape="poly" coords="144,225,137,230,165,225,197,225,201,237,228,231,256,232,280,228,291,222,289,201,279,191,278,174,271,163,256,153,247,145,214,147,200,146,184,145,173,162,158,189,148,183,140,197,139,216,136,221"                            
						href="food_list.food?area=S&ord=coded">
				</map>
			</div>
			<div class="col-md-8">
				<ul>  
					<li class="fdOrdChk" id="allChk"><input type="checkbox" class="fdChkBox" checked="checked" name="all" onclick="chkAll(this);"/>&nbsp;전체선택&nbsp;&nbsp;</li> 
					<li class="fdOrdChk"><input type="checkbox" class="fdChkBox" name="chk" value="KFR" checked="checked"  onclick="choose(this);" />&nbsp;한식&nbsp;&nbsp;</li>
					<li class="fdOrdChk"><input type="checkbox" class="fdChkBox" name="chk" value="CFR" checked="checked" onclick="choose(this);" />&nbsp;중식&nbsp;&nbsp;</li>
					<li class="fdOrdChk"><input type="checkbox" class="fdChkBox" name="chk" value="KJFR" checked="checked" onclick="choose(this);" />&nbsp;향토음식&nbsp;&nbsp;</li>
					<li class="fdOrdChk"><input type="checkbox" class="fdChkBox" name="chk" value="JFR" checked="checked" onclick="choose(this);" />&nbsp;일식&nbsp;&nbsp;</li>
					<li class="fdOrdChk"><input type="checkbox" class="fdChkBox" name="chk" value="WTF" checked="checked" onclick="choose(this);" />&nbsp;양식&nbsp;&nbsp;</li>
					<li class="fdOrdChk"><input type="checkbox" class="fdChkBox" name="chk" value="CF" checked="checked" onclick="choose(this);" />&nbsp;카페&nbsp;&nbsp;
				</ul> 
			</div> 
			<div class="col-md-3">
				<input type="text" class="form-control" id="txt_name" name="txt_name" value="">
			</div>
			<div class="col-md-1">
				<button type="submit" onclick="chkVal();" id="filterSubmit" class="btn btn-primary">조회</button>
			</div>
		</form>

	</div>
</div>
<div id="foodOrd">
	<p id="ord">정렬조건 : 
	<a href="food_list.food<%=args%>&ord=review_cntd<%=pmArea %>" 
		style="font-weight:<%=(pageInfo.getOrd().equals("review_cntd")) ? "bold; color:blue;" : "normal" %>">리뷰순</a>&nbsp;&nbsp;
	<a href="food_list.food<%=args%>&ord=scored<%=pmArea %>" 
		style="font-weight:<%=(pageInfo.getOrd().equals("scored")) ? "bold; color:blue;" : "normal" %>">별점순</a>&nbsp;&nbsp;
	<a href="food_list.food<%=args%>&ord=liked<%=pmArea %>" 
		style="font-weight:<%=(pageInfo.getOrd().equals("liked")) ? "bold; color:blue;" : "normal" %>">좋아요 순</a>&nbsp;&nbsp;
	<a href="food_list.food<%=args%>&ord=reg_datea<%=pmArea %>" 
		style="font-weight:<%=(pageInfo.getOrd().equals("reg_datea")) ? "bold; color:blue;" : "normal" %>">등록일 순</a>&nbsp;&nbsp;
		</p>
	</div>  
<!-- 음식점 목록 영역 -->
<div class="container" style="margin-top: 20px;">
	<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
		<% 
		if (foodList != null && foodList.size() > 0) {
		// 상품 검색결과가 있으면
			for (int i = 0 ; i < foodList.size() ; i++) {
			FoodInfo fi = foodList.get(i);   
		%> 
		<div class="col">
			<a href="food_view.food<%=args %>&id=<%=fi.getFood_code() %>&ord=<%=pageInfo.getOrd() %>&psize=<%=pageInfo.getPsize()%>">
			<div class="card shadow-sm">
			<img src="<%=src %>/images/FoodImg/<%=fi.getFood_img1() %>" width="100%" height="180px;" />
				<div class="cardbody">
					<p class="card-title">	
						<strong><%=fi.getFood_name() %></strong>
					</p>
					<p class="card-subtitle mb-2 text-muted"><%=comm.getArea().get(fi.getFood_area()) %></p>
						<p class="card-text">
							<span >  
									전화번호 : <%=fi.getFood_tel() %><br />
									좋 아 요 : <%=fi.getFood_like() %><br />
									리    뷰 : <%=fi.getFood_review_cnt() %><br />								
							</span>
									<%=comm.getStar().get(Math.ceil(fi.getFood_score())) %>	 	
						</p>
					<div style="height:10px;"></div>
				</div>
			</div>
			</a>
		</div>   
			<%  
			}
		}
	%>
	</div>
</div>  
<div class="br"></div>
<!--  페이징 영역 -->
<%
if (foodList != null && foodList.size() > 0) {
	args = "?ord=" + pageInfo.getOrd() + "&psize=" + pageInfo.getPsize() + schargs;

	out.println("<div id=\"foodPage\">");

	if (pageInfo.getCpage() == 1) {	// 현재 페이지 번호가 1이면
		out.println("[&lt;&lt;]&nbsp;&nbsp;[&lt;]&nbsp;&nbsp;");
	} else {
		out.print("<a href='food_list.food" + args + "&cpage=1" + "'>");
		out.println("[&lt;&lt;]</a>&nbsp;&nbsp;");
		out.print("<a href='food_list.food" + args + 
			"&cpage=" + (pageInfo.getCpage() - 1) + "'>");
		out.println("[&lt;]</a>&nbsp;&nbsp;");
	} // 첫 페이지와 이전 페이지 링크

	for (int i = 1, k = pageInfo.getSpage() ; i <= pageInfo.getBsize() && k <= pageInfo.getEpage() ; i++, k++) {
	// i : 루프돌릴 횟수를 검사하는 용도의 변수, k : 페이지 번호 출력용 변수
	// 조건 : bsize만큼 루프를 도는데 페이지가 마지막 페이지일 경우 bsize보다 작아도 멈춤
		if (pageInfo.getCpage() == k) {	// 현재 페이지 번호일 경우 링크없이 강조만 함
			out.print("&nbsp;<strong>" + k + "</strong>&nbsp;");
		} else {
			out.print("&nbsp;<a href='food_list.food" + args + "&cpage=" + k + "'>");
			out.print(k + "</a>&nbsp;");
		}
	} 

	if (pageInfo.getCpage() == pageInfo.getPcnt()) {	// 현재 페이지번호가 마지막 페이지 번호이면
		out.println("&nbsp;&nbsp;[&gt;]&nbsp;&nbsp;[&gt;&gt;]");
	} else {
		out.println("&nbsp;&nbsp;<a href='food_list.food" + args + 
			"&cpage=" + (pageInfo.getCpage() + 1) + "'>[&gt;]</a>");
		out.print("&nbsp;&nbsp;<a href='food_list.food" + args + 
			"&cpage=" + pageInfo.getPcnt() + "'>");
		out.println("[&gt;&gt;]</a>");
	}

	out.println("</div>");
}
%>  
</div>
<div class="br"></div>
<script src="food/jquery-1.11.3.min.js"></script>
<script src="food/star.js"></script>

<%@ include file="../com/_footer.jsp"%> 

	  