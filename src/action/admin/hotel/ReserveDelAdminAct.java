package action.admin.hotel;

import javax.servlet.http.*;
  
import java.io.PrintWriter;
import java.util.*;

import svc.hotel.*; 
import vo.*;

public class ReserveDelAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("------RoomDelAdminAct-----");
		
		request.setCharacterEncoding("utf-8");
				
		/** Form Parameter VO setting **/  
		if (request.getParameter("arrCheck") == null || request.getParameter("arrCheck").equals("")) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('������ �����Ͽ����ϴ�.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		
		// ���� ������ �ڵ� in ���� ���� ó���ϴ� �κ� 
		String[] arrDelCode = request.getParameter("arrCheck").split(",");
		String whereInDel = "";
		for (int i = 0; i < arrDelCode.length; i++) {
			whereInDel += ", '" + arrDelCode[i] + "'";
		} 
		whereInDel = whereInDel.substring(1);
       
		/** Admin id getter **/
		String adminId = "sa";
		System.out.println("������ ���̵� : " + adminId); 
		
		 
		/** ����&��� ����� �������� �κ� **/ 
		ReserveSvc procAdminSvc = new ReserveSvc(); 

		HashMap<String, String> ret = procAdminSvc.delete(whereInDel, adminId);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('" + ret.get("msg") + "');");
		out.println("history.back();");
		out.println("</script>");

		System.out.println("result : " + ret.get("result"));
		System.out.println("msg : " + ret.get("msg"));
		
		// ���н� ������ �̵� ���� 
		if (ret.get("result").equals("fail")) out.close();
		
		/** ������ �̵� **/
		ActionForward forward = new ActionForward();  
		forward.setRedirect(true);	// redirect ������� �̵��ϵ��� ����
	    forward.setPath("/jejurisong/admin/reserve_list.reservea");

	    return forward;
	}
	      
}
