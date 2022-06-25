package action.hotel;

import javax.servlet.http.*;
import java.io.*;
import svc.hotel.*;
import vo.*; 

public class HotelReplyDelAction implements action.Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");

		// sp_h_reply_delete(rvCode varchar(11), hotelCode varchar(5), roomCode varchar(5), delId varchar(20))
		String hotel_code = request.getParameter("hotel_code").trim();
		String reply_idx = request.getParameter("reply_idx").trim(); 
		String mi_id = request.getParameter("mi_id").trim(); 
		String sdate = request.getParameter("sdate").trim();
		String edate = request.getParameter("edate").trim();
		String cnt = request.getParameter("cnt").trim();
		
		HotelReplySvc replySvc = new HotelReplySvc();  
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
		
		String qry = "?hotel_code="+hotel_code+"&sdate="+sdate+"&edate="+edate+"&cnt="+cnt; 
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("hotel_view.hotel"+qry);

		return forward;
	}

}
