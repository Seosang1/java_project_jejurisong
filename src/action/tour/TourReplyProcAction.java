package action.tour;

import javax.servlet.http.*;
import java.io.*;
import svc.tour.*;
import vo.*; 

public class TourReplyProcAction implements action.Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
  
		request.setCharacterEncoding("utf-8");
  
		String tour_code = request.getParameter("hd_tour_code").trim();
		
		ReplyInfo replyInfo = new ReplyInfo(); 		
		
		replyInfo.setReply_code(tour_code);
		replyInfo.setMi_id(request.getParameter("hd_mi_id").trim());
		replyInfo.setReply_content(request.getParameter("reply_content"));
		replyInfo.setReply_score(Double.parseDouble(request.getParameter("hd_score")));
		
		/** ����&��� ����� �������� �κ� **/
		TourReplySvc replySvc = new TourReplySvc();  
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
		forward.setPath("tour_view.tour?tour_code="+tour_code);
		

		return forward;
	}

}
