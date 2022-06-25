package action.admin.hotel;

import javax.servlet.http.*;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import java.io.File;
import java.io.PrintWriter;
import java.util.*;

import svc.hotel.*;
import svc.user.*;
import vo.*;

public class RoomUpProcAdminAct implements action.Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");

		/** Image Upload Setting **/
		String urlPath = this.getClass().getResource("").getPath();     
		String imgUrl  = urlPath.substring(0, urlPath.indexOf(".metadata"));
		String uploadPath = imgUrl + "jejurisong/WebContent/common/images/RoomImg";
		// System.out.println("updalodPath : " + uploadPath);  // �� workspace ������ ���ϰ�� ã�ƿ��� ���μ���
		int maxSize = 5 * 1024 * 1024;						// ���ε� �ִ�뷮�� 5MB�� ���� 

		//uploadPath = "D:/project/jejurisong/WebContent/common/images/RoomImg";
		System.out.println("updalodPath : " + uploadPath);  // �� workspace ������ ���ϰ�� ã�ƿ��� ���μ���
		
		MultipartRequest multi = new MultipartRequest(
				request, 	// request��ü�� multi�ν��Ͻ��� ���۵� �����͵��� �ޱ� ����
				uploadPath, // ������ ������ ������ ����� ��ġ ����
				maxSize, 	// �� ���� ���ε��� �� �ִ� �ִ�ũ�� ����(byte����)
				"utf-8", 	// ������ ���ڵ� ���
				new DefaultFileRenamePolicy());	// ���� �̸��� �ߺ� ó��
		
		Enumeration files = multi.getFileNames();
		// ���ε��� ���ϸ���� Enumeration������ �޾ƿ�(�� file��Ʈ���� �޾ƿ��� ����)
 
		String img1 = "", img2 = "", img3 = "";
		while (files.hasMoreElements()) {
			String f = (String)files.nextElement();
			switch (f) {
				case "img_1" : img1 = multi.getFilesystemName(f);	break; 
			}
		} 

		if (img1 == null || img1.equals("null"))	img1 = ""; 
		

		String room_code = request.getParameter("room_code") ;		// ���� 
 
		/** Form Parameter VO setting **/
		RoomInfo info = new RoomInfo();  

		/** Admin id getter **/
		String adminId = "sa";
		System.out.println("������ ���̵� : " + adminId);
		info.setRoom_reg_id(adminId);
		 
		/** ���������� ���� �Ϸ�Ǿ��ٸ� ������ �����͵� ���� �����ϱ�  **/ 
		info.setRoom_code(multi.getParameter("room_code").trim());
		
		info.setHotel_code(multi.getParameter("hd_hotel_code").trim());
		info.setRoom_type(multi.getParameter("sl_type").trim());
		info.setRoom_eq(multi.getParameter("hd_eq").trim());
		info.setRoom_svc(multi.getParameter("txt_svc").trim());
		
		info.setRoom_min(Integer.parseInt(multi.getParameter("txt_min")));
		info.setRoom_max(Integer.parseInt(multi.getParameter("txt_max")));
		info.setRoom_price(Integer.parseInt(multi.getParameter("txt_price")));
		info.setRoom_discount(Integer.parseInt(multi.getParameter("txt_discount")));
		info.setRoom_dis_price(Integer.parseInt(multi.getParameter("txt_dis_price")));
		info.setRoom_cnt(Integer.parseInt(multi.getParameter("txt_number")));
		
		info.setRoom_img(img1); 
		info.setRoom_open_yn(multi.getParameter("rdo_open_yn").trim());
		  
		
		/** ����&��� ����� �������� �κ� **/
		RoomSvc procAdminSvc = new RoomSvc(); 
		int result = procAdminSvc.update(info); 	// ���� ���� �������
		if (result == 0) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('���� ������ �����Ͽ����ϴ�.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		} else { 
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('������ �����Ͽ����ϴ�.');");
			out.println("history.back();");
			out.println("</script>");
		}

		/** ������ �̵� **/
		ActionForward forward = new ActionForward();  
		forward.setRedirect(true);	// redirect ������� �̵��ϵ��� ����
	    forward.setPath("/jejurisong/admin/room_list.rooma");

		return forward;

	}

}
