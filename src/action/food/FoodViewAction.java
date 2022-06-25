package action.food;

import javax.servlet.http.*; 
import java.util.*;
import svc.food.*;
import vo.*;  

public class FoodViewAction implements action.Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		Common comm = new Common();
		HashMap<String, String> schargs = new HashMap<String, String>();
		 
		String food_code, orderBy = "";
		String where = "";
		String rWhere = " and reply_del_yn = 'n' ";
 
		food_code	= request.getParameter("food_code") ;
		 
		if (!comm.isEmpty(food_code)) {   
			where += " and food_code = '"+food_code+"'"; 
			rWhere += " and food_code = '"+food_code+"'";
			schargs.put("food_code", food_code);
		}  
		if (!comm.isEmpty(where)) {
			where = " where" + where.substring(4); 
		} 
		if (!comm.isEmpty(rWhere)) {
			rWhere = " where" + rWhere.substring(4); 
		} 
		  
		FoodSvc FoodSvc = new FoodSvc(); 
		FoodInfo info = FoodSvc.getSelectOne(where); 
		   
		FoodReplySvc replyListSvc = new FoodReplySvc(); 
		int replyCnt = replyListSvc.getCount(rWhere);
		ArrayList<ReplyInfo> replyList = replyListSvc.getList(rWhere, " order by reply_reg_date desc", 0, -1); 
		
		request.setAttribute("schargs", 	schargs);
		request.setAttribute("info", 		info);   
		request.setAttribute("replyList", 	replyList);   
		request.setAttribute("replyCnt", 	replyCnt);  

		ActionForward forward = new ActionForward();
		forward.setPath("/food/food_view.jsp"); 
		
		return forward;

			
		} 

}
