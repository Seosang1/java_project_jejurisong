package action.admin.hotel;

import javax.servlet.http.*;
  
import java.io.PrintWriter; 

import svc.hotel.*;
import svc.user.*;
import vo.*;

public class HotelReplyDelAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("------HotelReplyDelAdminAct-----");
		
		request.setCharacterEncoding("utf-8");
				
		/** Form Parameter VO setting **/  
		// ���� ������ �ڵ� in ���� ���� ó���ϴ� �κ� 
		String[] arrDelCode = request.getParameter("arrCheck").split(",");
		String whereInDel = "";
		for (int i = 0; i < arrDelCode.length; i++) {
			whereInDel += "," + arrDelCode[i];
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
		

		HotelReplySvc replySvc = new HotelReplySvc();  
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
	    forward.setPath("/jejurisong/admin/hotel_reply_list.hotela"); 

	    return forward;
	}
	      
}
