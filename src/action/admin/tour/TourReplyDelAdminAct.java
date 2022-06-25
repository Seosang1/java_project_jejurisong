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
		// 삭제 변경할 코드 in 절로 변경 처리하는 부분 
		String[] arrDelCode = request.getParameter("arrCheck").split(",");
		String whereInDel = "";
		for (int i = 0; i < arrDelCode.length; i++) {
			whereInDel += ", " + arrDelCode[i];
		} 
		whereInDel = whereInDel.substring(1);
        
		
		/** Admin id getter **/ 
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(60*60); // 60 x 60초 = 60분 = 1시

		AdminInfo adminInfo = (AdminInfo) session.getAttribute("adminInfo");
		if (adminInfo == null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			String referer = (String)request.getHeader("REFERER");
			out.println("<script>");
			out.println("alert('로그인 후 이용 가능합니다.');");
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
			out.println("alert('후기 삭제에 실패하였습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		} 
		
 
		/** 페이지 이동 **/
		ActionForward forward = new ActionForward();  
		forward.setRedirect(true);	// redirect 방식으로 이동하도록 지정
	    forward.setPath("/jejurisong/admin/tour_reply_list.toura");

	    return forward;
	}
	      
}
