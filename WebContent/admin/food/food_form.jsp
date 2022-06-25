<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ include file="../_inc/incAdminHead.jsp"%>
<%@ include file="../_inc/incAdminLeft.jsp"%>


<%
	request.setCharacterEncoding("utf-8");
	@SuppressWarnings("unchecked")
	//(어노테이션) 호환되지 않은 유형으로 작동하면 프로그램이 컴파일 되지 않기에 해당 경고를 보여줌 (ArrayList 제네릭 사용시 밑줄 가리는 방법)

	// ▼▼▼ 데이터 받아와서 변수 셋팅 ▼▼▼ 
	ArrayList<FoodInfo> foodList = (ArrayList<FoodInfo>)request.getAttribute("foodList");
	PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	Common common = new Common();

	// ▼▼▼ 검색관련 쿼리스트링 제작 ▼▼▼
	String args = "", schargs = "";
	String tmp = "";
%>

<style>
.radio_my {
    display: inline-block; 
    vertical-align: middle;
    cursor: pointer;
    padding-left: 10px;
}
.radio_my input {
	margin-top: -5px;
}
</style>

<script>
	function onSubmit() {
		var frm = document.frm; 
		/* 
		if (frm.sl_area.value == "") {
			alert("지역을 선택해주세요");
			return false;
		}
		
		if (frm.sl_type.value == "") {
			alert("음식점 유형을 선택해주세요");
			return false;
		}
		
		if (frm.txt_name.value == "") {
			alert("음식점명을 입력해주세요");
			return false;
		}
		
		if (frm.txt_zip.value == "") {
			alert("우편번호를 입력해주세요");
			return false;
		}
		
		if (frm.txt_addr.value == "") {
			alert("주소를 입력해주세요");
			return false;
		}
		
		if (frm.txt_tel.value == "") {
			alert("전화번호를 입력해주세요");
			return false;
		}
		
		if (frm.txt_stime.value == "") {
			alert("체크인 시간을 입력해주세요");
			return false;
		}
		
		if (frm.txt_etime.value == "") {
			alert("체크아웃 시간을 입력해주세요");
			return false;
		}
		
		if (frm.txt_detail.value == "") {
			alert("상세내용을 입력해주세요");
			return false;
		}
		
		if (frm.img_1.value == "") {
			alert("사진을 선택해주세요");
			return false;
		} else if(!isFileExt(frm.img_1.value)) {
			alert("'이미지1'의 파일은 jpg, gif, png, jpeg 파일만 선택 가능합니다. 다시 선택해주세요.");	return false;
		}
		
		if(frm.img_2.value != "" && !isFileExt(frm.img_2.value)) {
			alert("'이미지2'의 파일은 jpg, gif, png, jpeg 파일만 선택 가능합니다. 다시 선택해주세요.");	return false;
		}
		
		if(frm.img_3.value != "" && !isFileExt(frm.img_3.value)) {
			alert("'이미지3'의 파일은 jpg, gif, png, jpeg 파일만 선택 가능합니다. 다시 선택해주세요.");	return false;
		}
		*/
		frm.submit();
	}
	
	// 숫자만
	function onlyNum(obj) {
		if (isNaN(obj.value) == true)  {
			obj.value = "";
		}
	}

	 
	// 파일확장자 확인(이미지파일 확인여부)
	var arrImg = ["jpg", "gif", "png", "jpeg"];
	function isFileExt(str) { 
		var arrTmp = str.split("\\");
		fileNameTmp =  arrTmp[arrTmp.length - 1]; 
		var ext = str.substring(str.lastIndexOf(".") + 1);
		for (var i = 0; i < arrImg.length; i++ ) {
			if (ext == arrImg[i]) return true;
		}
		return false;
	}
</script>
<!-- article -->
<article>
	<h3>음식점 리스트 > 음식점 등록 폼</h3>
	<!-- content -->
	<div id="content">

		<!-- table_view -->
		<form name="frm" action="food_proc.fooda" method="post" enctype="multipart/form-data">
			<div class="tbl_wrap_view">
				<table class="tbl_view01">
					<tr>
						<th scope="row" style="width:80px">지역</th>
						<td>
							<select name="sl_area">
								<option value="">선택</option>
							<% for(String key : common.getArea().keySet()) { %>
								<option value="<%=key%>"><%=common.getArea().get(key) %></option>
							<% } %>
							</select> 
						</td>
						<th scope="row" style="width:80px">음식점 유형</th>
						<td>
							<select name="sl_type">
								<option value="">선택</option>
							<% for(String key : common.getFoodType().keySet()) { %>
								<option value="<%=key%>"><%=common.getFoodType().get(key) %></option>
							<% } %>
							</select> 
						</td>
						<th scope="row" style="width:80px">음식점 명</th>
						<td>
							<span><input type="text" name="txt_name" value="음식점명_테스트"></span>
						</td>
					</tr> 
					<tr> 
						<th scope="row">우편번호</th>
						<td>
							<span><input type="text" name="txt_zip" onkeyup="onlyNum(this);" value="13101"></span>
						</td>
						<th scope="row">주소</th>
						<td colspan="3">
							<span><input type="text" name="txt_addr" style="width: 460px" value="제주시 주소 테스트"></span>
						</td>
					</tr>
					<tr> 
						<th scope="row">전화번호</th>
						<td>
							<span><input type="text" name="txt_tel" value="000-1111"></span>
						</td>
						<th scope="row">오픈시간</th>
						<td>
							<span><input type="text" name="txt_stime" value="14:00"></span>
						</td>
						<th scope="row">닫는시간</th>
						<td>
							<span><input type="text" name="txt_etime" value="11:00"></span>
						</td>
					</tr>
					<tr> 
						<th scope="row">상세내용</th>
						<td colspan="5">
							<span><textarea name="txt_detail" style="width:770px; height:60px;">제주 유명 맛집.</textarea></span>
						</td>
					</tr>
					<tr> 
						<th scope="row">사진등록1</th>
						<td colspan="5"><span><input type="file" name="img_1" style="width:770px;" /></span></td>
					</tr>
					<tr> 
						<th scope="row">사진등록2</th>
						<td colspan="5"><span><input type="file" name="img_2" style="width:770px;" /></span></td>
					</tr>
					<tr> 
						<th scope="row">사진등록3</th>
						<td colspan="5"><span><input type="file" name="img_3" style="width:770px;" /></span></td>
					</tr>
					<tr> 
						<th scope="row">설명사진등록</th>
						<td colspan="5"><span><input type="file" name="img_desc" style="width:770px;" /></span></td>
					</tr>
					<tr>
						<th scope="row" style="width:80px">주차여부</th> 
						<td colspan="2">
					    <% for(String key : common.getFoodParkingYn().keySet()) { 
					    	String label = common.getFoodParkingYn().get(key);
					    	String chk = (key.equals("y")) ? "checked = 'checked'" : "";
					    %> 
							<div class="radio_my"> 
							    <input type="radio" id="sl_park_<%=key %>" name="rdo_park_yn" value="<%=key%>" <%=chk %>/>
							    <label for="radio1"><%=label %></label>
						  	</div>
						<% } %>
					   
						</td>
						<th scope="row" style="width:80px">운영여부</th>
						<td colspan="2">
						<% for(String key : common.getOpenYn().keySet()) {
					    	String label = common.getOpenYn().get(key);
					    	String chk = (key.equals("n")) ? "checked = 'checked'" : "";
					    %> 
							<div class="radio_my"> 
							    <input type="radio" id="sl_open_<%=key %>" name="rdo_open_yn" value="<%=key%>" <%=chk %>/>
							    <label for="radio1"><%=label %></label>
						  	</div>
						<% } %> 
						</td> 
					</tr> 
				</table>
			</div>
			<!-- //table_view -->
			
			<!-- 버튼 -->
			<div class="btn_wrap01_detail mgt25">
				<a href="#" onclick="onSubmit();" class="btn_big blue">등록</a>
				<a href="food_list.fooda" class="btn_big">목록</a>
			</div>
			<!-- //버튼 -->
		</form>
	</div>
	<!-- //content -->

</article>
<!-- //article -->

<%@ include file="../_inc/incAdminFooter.jsp"%>