package action.admin.food;
  
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy; 
import javax.servlet.http.*; 
import java.io.PrintWriter;
import java.util.*;  
import svc.food.*; 
import vo.*;

public class FoodUpProcAdminAct implements action.Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");

		/** Image Upload Setting **/
		String urlPath = this.getClass().getResource("").getPath();     
		String imgUrl  = urlPath.substring(0, urlPath.indexOf(".metadata"));
		String uploadPath = imgUrl + "jejurisong/WebContent/common/images/FoodImg";
		// System.out.println("updalodPath : " + uploadPath);  // �� workspace ������ ���ϰ�� ã�ƿ��� ���μ���
		int maxSize = 5 * 1024 * 1024;						// ���ε� �ִ�뷮�� 5MB�� ���� 

		uploadPath = "D:/project/jejurisong/WebContent/common/images/FoodImg";
		System.out.println("updalodPath : " + uploadPath);  // �� workspace ������ ���ϰ�� ã�ƿ��� ���μ���
		
		MultipartRequest multi = new MultipartRequest(
				request, 	// request��ü�� multi�ν��Ͻ��� ���۵� �����͵��� �ޱ� ����
				uploadPath, // ������ ������ ������ ����� ��ġ ����
				maxSize, 	// �� ���� ���ε��� �� �ִ� �ִ�ũ�� ����(byte����)
				"utf-8", 	// ������ ���ڵ� ���
				new DefaultFileRenamePolicy());	// ���� �̸��� �ߺ� ó��
		
		Enumeration files = multi.getFileNames();
		// ���ε��� ���ϸ����� Enumeration������ �޾ƿ�(�� file��Ʈ���� �޾ƿ��� ����)
 
		String img1 = "", img2 = "", img3 = "";
		while (files.hasMoreElements()) {
			String f = (String)files.nextElement();
			switch (f) {
				case "img_1" : img1 = multi.getFilesystemName(f);	break;
				case "img_2" : img2 = multi.getFilesystemName(f);	break;
				case "img_3" : img3 = multi.getFilesystemName(f);	break; 
			}
		}
		
//		System.out.println("---------------- img ----------------------");

		if (img1 == null || img1.equals("null"))	img1 = "";
		if (img2 == null || img2.equals("null"))	img2 = "";
		if (img3 == null || img3.equals("null"))	img3 = "";

//		System.out.println("img1 : "+img1);
//		System.out.println("img2 : "+img2);
//		System.out.println("img3 : "+img3);

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
		

		/** Admin id getter **/
		String adminId = "sa";
		System.out.println("������ ���̵� : " + adminId);
		foodInfo.setFood_reg_id(adminId);
		foodInfo.setFood_del_id(adminId);
		
		
		/** ���� �̻��� �����͸� ���� ó�� �Ѵٸ�!!! ����ó�� ���μ��� ���� ���� �� ���� ���� **/
		if (multi.getParameter("hd_del_yn").trim().equals("n") && multi.getParameter("rdo_del_yn").trim().equals("y")) {
 
			String whereInDel = "'" + multi.getParameter("hd_code").trim() + "'";  
			FoodProcAdminSvc foodProcAdminSvc = new FoodProcAdminSvc();  
			HashMap<String, String> ret = foodProcAdminSvc.delete(whereInDel, adminId);
			if (ret.get("result").equals("fail")) {
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('�������� ������ �����Ͽ����ϴ�.');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
			}
		}
		 
		/** ���������� ���� �Ϸ�Ǿ��ٸ� ������ �����͵� ���� �����ϱ�  **/
		foodInfo.setFood_code(multi.getParameter("hd_code").trim());
		foodInfo.setFood_area(multi.getParameter("sl_area").trim());
		foodInfo.setFood_type(multi.getParameter("sl_type").trim());
		foodInfo.setFood_name(multi.getParameter("txt_name").trim());
		foodInfo.setFood_zip(multi.getParameter("txt_zip").trim());
		foodInfo.setFood_addr(multi.getParameter("txt_addr").trim());
		foodInfo.setFood_tel(multi.getParameter("txt_tel").trim());
		foodInfo.setFood_open(multi.getParameter("txt_open").trim());
		foodInfo.setFood_close(multi.getParameter("txt_close").trim());
		foodInfo.setFood_detail(multi.getParameter("txt_detail").trim());
		foodInfo.setFood_img1(img1);
		foodInfo.setFood_img2(img2);
		foodInfo.setFood_img3(img3);
		foodInfo.setFood_park_yn(multi.getParameter("rdo_park_yn").trim());
		foodInfo.setFood_open_yn(multi.getParameter("rdo_open_yn").trim()); 
		  
		
		/** ����&��� ����� �������� �κ� **/
		FoodProcAdminSvc foodProcAdminSvc = new FoodProcAdminSvc(); 
		int result = foodProcAdminSvc.update(foodInfo); 	// �������� ���� �������
		if (result == 0) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('�������� ������ �����Ͽ����ϴ�.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		} else { 
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('���������� �����Ͽ����ϴ�.');");
			out.println("history.back();");
			out.println("</script>");
		}

		/** ������ �̵� **/
		ActionForward forward = new ActionForward();  
		forward.setRedirect(true);	// redirect ������� �̵��ϵ��� ����
	    forward.setPath("/jejurisong/admin/food_list.fooda");

		return forward;

	}

}