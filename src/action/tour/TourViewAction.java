package action.tour;

import javax.servlet.http.*;

import java.text.SimpleDateFormat;
import java.util.*;
import svc.*; 
import svc.tour.*;
import vo.*;

public class TourViewAction implements action.Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		Common comm = new Common();
		HashMap<String, String> schargs = new HashMap<String, String>();
		 
		String tour_code, orderBy = "";
		String where = "";
		String rWhere = " and reply_del_yn = 'n' ";
 
		tour_code	= request.getParameter("tour_code") ;
		 
		if (!comm.isEmpty(tour_code)) {   
			where += " and tour_code = '"+tour_code+"'"; 
			rWhere += " and tour_code = '"+tour_code+"'";
			schargs.put("tour_code", tour_code);
		}  
		if (!comm.isEmpty(where)) {
			where = " where" + where.substring(4); 
		} 
		if (!comm.isEmpty(rWhere)) {
			rWhere = " where" + rWhere.substring(4); 
		} 
		  
		TourSvc tourSvc = new TourSvc(); 
		TourInfo info = tourSvc.getSelectOne(where); 
		   
		TourReplySvc replyListSvc = new TourReplySvc(); 
		int replyCnt = replyListSvc.getCount(rWhere);
		ArrayList<ReplyInfo> replyList = replyListSvc.getList(rWhere, " order by reply_reg_date desc", 0, -1); 
		
		request.setAttribute("schargs", 	schargs);
		request.setAttribute("info", 		info);   
		request.setAttribute("replyList", 	replyList);   
		request.setAttribute("replyCnt", 	replyCnt);  

		ActionForward forward = new ActionForward();
		forward.setPath("/tour/tour_view.jsp"); 
		
		return forward;
	}
} 
