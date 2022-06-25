<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ include file="../_inc/incAdminHead.jsp"%>
<%@ include file="../_inc/incAdminLeft.jsp"%>


<%
	request.setCharacterEncoding("utf-8");
	@SuppressWarnings("unchecked")
	//(어노테이션) 호환되지 않은 유형으로 작동하면 프로그램이 컴파일 되지 않기에 해당 경고를 보여줌 (ArrayList 제네릭 사용시 밑줄 가리는 방법)

	// ▼▼▼ 데이터 받아와서 변수 셋팅 ▼▼▼ 
	ArrayList<TourInfo> info = (ArrayList<TourInfo>)request.getAttribute("info");
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
		
		if (frm.img_1.value == "") {
			alert("사진을 선택해주세요");
			return false;
		} else if(!isFileExt(frm.img_1.value)) {
			alert("'이미지1'의 파일은 jpg, gif, png, jpeg 파일만 선택 가능합니다. 다시 선택해주세요.");	return false;
		} 
		
		frm.submit();
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
	<h3>여행지 리스트 > 여행 등록 폼</h3>
	<!-- content -->
	<div id="content">

		<!-- table_view -->
		<form name="frm" action="tour_proc.toura" method="post" enctype="multipart/form-data">
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
						<th scope="row" style="width:80px">여행지유형</th>
						<td>
							<select name="sl_type">
								<option value="">선택</option>
							<% for(String key : common.getTourType().keySet()) { %>
								<option value="<%=key%>"><%=common.getTourType().get(key) %></option>
							<% } %>
							</select> 
						</td>
						<th scope="row" style="width:80px">여행지명</th>
						<td>
							<span><input type="text" name="txt_name" value="섭지코지"></span>
						</td>
					</tr> 
					<tr>  
						<th scope="row">주소</th>
						<td colspan="5">
							<span><input type="text" name="txt_addr" style="width: 460px" value="제주시 주소 테스트"></span>
						</td>
					</tr>
					<tr> 
						<th scope="row">태그</th>
						<td colspan="5">
							<span><textarea name="txt_tag" style="width:770px; height:60px;">경치굳,상쾌,석양</textarea>
							,(콤마) 로 구분해주세요</span>
						</td>
					</tr>
					<tr> 
						<th scope="row">상세내용</th>
						<td colspan="5">
							<span><textarea name="txt_detail" style="width:770px; height:60px;">이 호텔은 좋다.</textarea></span>
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
						<th scope="row" style="width:80px">운영여부</th>
						<td colspan="5">
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
				<a href="tour_list.toura" class="btn_big">목록</a>
			</div>
			<!-- //버튼 -->
		</form>
	</div>
	<!-- //content -->

</article>
<!-- //article -->

<%@ include file="../_inc/incAdminFooter.jsp"%>