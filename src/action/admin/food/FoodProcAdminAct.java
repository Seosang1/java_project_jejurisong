package action.admin.food;

import javax.servlet.http.*;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy; 
import java.io.*; 
import java.util.*; 
import javax.servlet.http.*;   
import svc.food.*; 
import vo.*;


public class FoodProcAdminAct implements action.Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");

		/** Image Upload Setting **/
		String urlPath = this.getClass().getResource("").getPath();     
		String imgUrl  = urlPath.substring(0, urlPath.indexOf(".metadata"));
		String uploadPath = imgUrl + "jejurisong/WebContent/common/images/FoodImg";
		//System.out.println("updalodPath : " + uploadPath);  // 내 workspace 기준의 파일경로 찾아오는 프로세스
		int maxSize = 5 * 1024 * 1024;						// 업로드 최대용량은 5MB로 지정 
		
		/*
		uploadPath = "D:/project/jejurisong/WebContent/common/images/FoodImg";
		System.out.println("updalodPath : " + uploadPath);  // 내 workspace 기준의 파일경로 찾아오는 프로세스
		*/
		
		MultipartRequest multi = new MultipartRequest(
				request, 	// request객체로 multi인스턴스로 전송된 데이터들을 받기 위함
				uploadPath, // 서버에 실제로 파일이 저장될 위치 지정
				maxSize, 	// 한 번에 업로드할 수 있는 최대크기 지정(byte단위)
				"utf-8", 	// 파일의 인코딩 방식
				new DefaultFileRenamePolicy());	// 파일 이름의 중복 처리
		
		Enumeration files = multi.getFileNames();
		// 업로드할 파일명들을 Enumeration형으로 받아옴(빈 file컨트롤은 받아오지 않음)
 
		String img1 = "", img2 = "", img3 = "", desc = "";
		while (files.hasMoreElements()) {
			String f = (String)files.nextElement();
			switch (f) {
				case "img_1" : img1 = multi.getFilesystemName(f);	break;
				case "img_2" : img2 = multi.getFilesystemName(f);	break;
				case "img_3" : img3 = multi.getFilesystemName(f);	break; 
				case "desc"	 : desc = multi.getFilesystemName(f);	break; 
			}
		}
		
		//System.out.println("---------------- img ----------------------");

		if (img1 == null || img1.equals("null"))	img1 = "";
		if (img2 == null || img2.equals("null"))	img2 = "";
		if (img3 == null || img3.equals("null"))	img3 = "";
		if (desc == null || desc.equals("null"))	desc = "";

//		System.out.println("img1 : "+img1);
//		System.out.println("img2 : "+img2);
//		System.out.println("img3 : "+img3);
//		System.out.println("desc : "+desc);

		/** Form Parameter VO setting **/
		FoodInfo foodInfo = new FoodInfo();
		
//		System.out.println("----------- parameter ---------------");
//		System.out.println(multi.getParameter("sl_area").trim());
//		System.out.println(multi.getParameter("sl_type").trim());
//		System.out.println(multi.getParameter("txt_name").trim());
//		System.out.println(multi.getParameter("txt_zip").trim());
//		System.out.println(multi.getParameter("txt_addr").trim());
//		System.out.println(multi.getParameter("txt_tel").trim());
//		System.out.println(multi.getParameter("txt_stime").trim());
//		System.out.println(multi.getParameter("txt_etime").trim());
//		System.out.println(multi.getParameter("txt_detail").trim());
//		System.out.println("img1 : " + img1);
//		System.out.println("img2 : " + img2);
//		System.out.println("img3 : " + img3);
//		System.out.println(multi.getParameter("rdo_park_yn").trim());
//		System.out.println(multi.getParameter("rdo_open_yn").trim());
//		System.out.println("-----------------------------");
		
		foodInfo.setFood_area(multi.getParameter("sl_area").trim());
		foodInfo.setFood_type(multi.getParameter("sl_type").trim());
		foodInfo.setFood_name(multi.getParameter("txt_name").trim());
		foodInfo.setFood_zip(multi.getParameter("txt_zip").trim());
		foodInfo.setFood_addr(multi.getParameter("txt_addr").trim());
		foodInfo.setFood_tel(multi.getParameter("txt_tel").trim());
		foodInfo.setFood_open(multi.getParameter("txt_stime").trim());
		foodInfo.setFood_close(multi.getParameter("txt_etime").trim());
		foodInfo.setFood_detail(multi.getParameter("txt_detail").trim());
		foodInfo.setFood_img1(img1);
		foodInfo.setFood_img2(img2);
		foodInfo.setFood_img3(img3);
		foodInfo.setFood_desc(desc);
		foodInfo.setFood_park_yn(multi.getParameter("rdo_park_yn").trim());
		foodInfo.setFood_open_yn(multi.getParameter("rdo_open_yn").trim()); 


		/** Admin id getter **/
		String food_reg_id = "sa";
		System.out.println("관리자 아이디 : " + food_reg_id);
		foodInfo.setFood_reg_id(food_reg_id);
		
		
		
		/** 서비스&디비 결과값 가져오는 부분 **/
		FoodProcAdminSvc foodProcAdminSvc = new FoodProcAdminSvc();
		String food_code = foodProcAdminSvc.getFoodCode();
		System.out.println("음식점코드 : " + food_code); 
		foodInfo.setFood_code(food_code); 				// 음식점코드 가져옴		
		int result = foodProcAdminSvc.insert(foodInfo); 	// 음식점정보 저장 결과여부
		if (result == 0) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('음식점 등록에 실패하였습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}

		/** 페이지 이동 **/
		ActionForward forward = new ActionForward();  
		forward.setRedirect(true);	// redirect 방식으로 이동하도록 지정
	    forward.setPath("/admin/food_list.fooda");

		return forward;

	}

}
