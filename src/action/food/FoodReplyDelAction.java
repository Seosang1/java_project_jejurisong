package action.food;

import javax.servlet.http.*;
import java.io.*;
import svc.food.*;
import vo.*; 

public class FoodReplyDelAction implements action.Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String food_code = request.getParameter("food_code").trim();
		String reply_idx = request.getParameter("reply_idx").trim();
		String mi_id = request.getParameter("mi_id").trim(); 
		
		FoodReplySvc replySvc = new FoodReplySvc();  
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
		forward.setPath("food_view.food?food_code="+food_code);
		return forward;
	}

}
