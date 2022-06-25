package action.food;

import javax.servlet.http.*;
import java.io.*;
import svc.food.*;
import vo.*; 

public class FoodReplyProcAction implements action.Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
  
		request.setCharacterEncoding("utf-8");
  
		String food_code = request.getParameter("hd_food_code").trim();
		
		ReplyInfo replyInfo = new ReplyInfo(); 		
		
		replyInfo.setReply_code(food_code);
		replyInfo.setMi_id(request.getParameter("hd_mi_id").trim());
		replyInfo.setReply_content(request.getParameter("reply_content"));
		replyInfo.setReply_score(Double.parseDouble(request.getParameter("hd_score")));
		
		/** 서비스&디비 결과값 가져오는 부분 **/
		FoodReplySvc replySvc = new FoodReplySvc();  
		int result = replySvc.insert(replyInfo);
		if (result == 0) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('후기 등록에 실패하였습니다.');");
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
