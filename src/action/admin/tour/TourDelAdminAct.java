package action.admin.tour;

import javax.servlet.http.*;
  
import java.io.PrintWriter;
import java.util.*;

import svc.tour.*;
import svc.user.*;
import vo.*;

public class TourDelAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");

				
		/** Form Parameter VO setting **/  
		if (request.getParameter("arrCheck") == null || request.getParameter("arrCheck").equals("")) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('여행지정보 삭제에 실패하였습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		
		// 삭제 변경할 코드 in 절로 변경 처리하는 부분 
		String[] arrDelCode = request.getParameter("arrCheck").split(",");
		String whereInDel = "";
		for (int i = 0; i < arrDelCode.length; i++) {
			whereInDel += ", '" + arrDelCode[i] + "'";
		} 
		whereInDel = whereInDel.substring(1);
       
		/** Admin id getter **/
		String tourRegId = "sa";
		System.out.println("관리자 아이디 : " + tourRegId); 
		
		 
		/** 서비스&디비 결과값 가져오는 부분 **/ 
		TourSvc tourProcAdminSvc = new TourSvc(); 

		HashMap<String, String> ret = tourProcAdminSvc.delete(whereInDel, tourRegId);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('" + ret.get("msg") + "');");
		out.println("history.back();");
		out.println("</script>");

		System.out.println("result : " + ret.get("result"));
		System.out.println("msg : " + ret.get("msg"));
		
		// 실패시 페이지 이동 안함 
		if (ret.get("result").equals("fail")) out.close();
		
		/** 페이지 이동 **/
		ActionForward forward = new ActionForward();  
		forward.setRedirect(true);	// redirect 방식으로 이동하도록 지정
	    forward.setPath("/jejurisong/admin/tour_list.toura");

	    return forward;
	}
	      
}
