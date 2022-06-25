package action.mypage;

import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import svc.*;
import svc.hotel.*;
import vo.*; 

public class MypageRvViewAct implements action.Action {


	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		Common comm = new Common();
		
		String rv_code = request.getParameter("rv_code") ;    
		ReserveSvc svc = new ReserveSvc(); 
		ReserveInfo info = svc.getSelectOne(rv_code); 
		  
		request.setAttribute("info", info);   

		ActionForward forward = new ActionForward();
		forward.setPath("/mypage/mypage_rv_view.jsp"); 
		
		return forward;
	}

}
