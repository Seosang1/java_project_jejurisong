package action.hotel;

import javax.servlet.http.*;
import java.io.*;
import java.util.HashMap;

import svc.*;
import svc.hotel.*;
import vo.*; 

public class HotelReplyProcAction implements action.Action {
 
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");

		Common comm = new Common();
		HashMap<String, String> schargs = new HashMap<String, String>();
		
		String hotel_code, mi_id, qry, room_code, reply_content, rv_code;
		double score;
		String[] rv_info ;

		hotel_code		= request.getParameter("hd_hotel_code") ;
		rv_info			= request.getParameter("rv_info").split(",");
		rv_code			= rv_info[0];
		room_code		= rv_info[1];
		reply_content	= request.getParameter("reply_content") ;
		mi_id			= request.getParameter("hd_mi_id") ;
		qry				= request.getParameter("hd_qry") ;
		score			= Double.parseDouble(request.getParameter("hd_score") );
   
		ReplyInfo replyInfo = new ReplyInfo(); 		
		replyInfo.setReply_rv_code(rv_code);
		replyInfo.setHotel_code(hotel_code);
		replyInfo.setRoom_code(room_code);
		replyInfo.setMi_id(mi_id);
		replyInfo.setReply_content(reply_content);
		replyInfo.setReply_score(score); 
		
		/** ����&��� ����� �������� �κ� **/
		HotelReplySvc replySvc = new HotelReplySvc();  
		int result = replySvc.insert(replyInfo);
		if (result == 0) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('�ı� ��Ͽ� �����Ͽ����ϴ�.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		} 

		ActionForward forward = new ActionForward();
		forward.setRedirect(true);	// redirect ������� �̵��ϵ��� ���� 
		forward.setPath("hotel_view.hotel?"+qry);
		// ?hotel_code=A0060&sdate=2021-07-07&edate=2021-07-08

		return forward;
	}

}
