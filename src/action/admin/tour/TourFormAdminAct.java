package action.admin.tour;

import javax.servlet.http.*;
import vo.*;

public class TourFormAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");

		request.setAttribute("menuPage", "tour");
		
	    ActionForward forward = new ActionForward();
	    forward.setPath("/admin/tour/tour_form.jsp");

	    return forward;
	}
	      
}
