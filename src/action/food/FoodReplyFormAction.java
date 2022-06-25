package action.food;

import javax.servlet.http.*;
 
import java.util.*; 
import svc.food.*;
import vo.*;

public class FoodReplyFormAction implements action.Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		Common comm = new Common();
		HashMap<String, String> schargs = new HashMap<String, String>();
		 
		String food_code, orderBy = "";
		String where = "";
		String rWhere = "";
 
		food_code	= request.getParameter("food_code") ;
 
		if (!comm.isEmpty(food_code)) {   
			where += " and food_code = '"+food_code+"'"; 
			schargs.put("food_code", food_code);
		}  
		if (!comm.isEmpty(where)) {
			where = " where" + where.substring(4); 
		}
		  
		FoodSvc foodSvc = new FoodSvc(); 
		FoodInfo info = foodSvc.getSelectOne(where); 
		 
		request.setAttribute("info", info);     

		ActionForward forward = new ActionForward();
		forward.setPath("/food/food_reply_form.jsp"); 
		
		return forward;
	}
} 
