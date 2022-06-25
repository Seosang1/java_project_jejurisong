package action.tour;

import javax.servlet.http.*;
 
import java.util.*; 
import svc.tour.*;
import vo.*;

public class TourReplyFormAction implements action.Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		Common comm = new Common();
		HashMap<String, String> schargs = new HashMap<String, String>();
		 
		String tour_code, orderBy = "";
		String where = "";
		String rWhere = "";
 
		tour_code	= request.getParameter("tour_code") ;
 
		if (!comm.isEmpty(tour_code)) {   
			where += " and tour_code = '"+tour_code+"'"; 
			schargs.put("tour_code", tour_code);
		}  
		if (!comm.isEmpty(where)) {
			where = " where" + where.substring(4); 
		}
		  
		TourSvc tourSvc = new TourSvc(); 
		TourInfo info = tourSvc.getSelectOne(where); 
		 
		request.setAttribute("info", info);     

		ActionForward forward = new ActionForward();
		forward.setPath("/tour/tour_reply_form.jsp"); 
		
		return forward;
	}
} 
