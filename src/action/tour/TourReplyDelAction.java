package action.tour;

import javax.servlet.http.*;
import java.io.*;
import svc.tour.*;
import vo.*; 

public class TourReplyDelAction implements action.Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String tour_code = request.getParameter("tour_code").trim();
		String reply_idx = request.getParameter("reply_idx").trim();
		String mi_id = request.getParameter("mi_id").trim(); 
		
		TourReplySvc replySvc = new TourReplySvc();  
		int result = replySvc.delete(reply_idx, mi_id);
		if (result == 0) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('후기 삭제에 실패하였습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		} 

		ActionForward forward = new ActionForward(); 
		forward.setRedirect(true);	// redirect 방식으로 이동하도록 지정  
		forward.setPath("tour_view.tour?tour_code="+tour_code);
		return forward;
	}

}
