package action.admin.tour;

import javax.servlet.http.*;
  
import java.io.PrintWriter; 

import svc.hotel.*;
import svc.tour.TourReplySvc;
import svc.user.*;
import vo.*;

public class TourReplyDelAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("------RoomDelAdminAct-----");
		
		request.setCharacterEncoding("utf-8");
				
		/** Form Parameter VO setting **/  
		// ���� ������ �ڵ� in ���� ���� ó���ϴ� �κ� 
		String[] arrDelCode = request.getParameter("arrCheck").split(",");
		String whereInDel = "";
		for (int i = 0; i < arrDelCode.length; i++) {
			whereInDel += ", " + arrDelCode[i];
		} 
		whereInDel = whereInDel.substring(1);
        
		
		/** Admin id getter **/ 
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(60*60); // 60 x 60�� = 60�� = 1��

		AdminInfo adminInfo = (AdminInfo) session.getAttribute("adminInfo");
		if (adminInfo == null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			String referer = (String)request.getHeader("REFERER");
			out.println("<script>");
			out.println("alert('�α��� �� �̿� �����մϴ�.');");
			out.println("location.href='login_form.jsp?url="+referer+"';");
			out.println("</script>");
			out.close();
		}

		String adminId = adminInfo.getAi_id();
		

		TourReplySvc replySvc = new TourReplySvc();  
		int result = replySvc.delete(whereInDel, adminId); 
		if (result == 0) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('�ı� ������ �����Ͽ����ϴ�.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		} 
		
 
		/** ������ �̵� **/
		ActionForward forward = new ActionForward();  
		forward.setRedirect(true);	// redirect ������� �̵��ϵ��� ����
	    forward.setPath("/jejurisong/admin/tour_reply_list.toura");

	    return forward;
	}
	      
}
