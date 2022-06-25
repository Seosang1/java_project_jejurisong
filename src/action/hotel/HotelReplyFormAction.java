package action.hotel;

import javax.servlet.http.*;

import java.io.PrintWriter;
import java.util.*;
import svc.hotel.*;
import vo.*; 

public class HotelReplyFormAction implements action.Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
  
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		MemberInfo loginMember = (MemberInfo) session.getAttribute("loginMember");
		if (loginMember == null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			String referer = (String)request.getHeader("REFERER");
			out.println("<script>");
			out.println("alert('�α��� �� �̿� �����մϴ�.');");
			out.println("location.href='login_form.jsp?url="+referer+"';");
			out.println("</script>");
			out.close();
		}
		
		Common comm = new Common();
		HashMap<String, String> schargs = new HashMap<String, String>();
		 
		String hotel_code, area, type, sdate, edate, name;
		String cnt; 

		hotel_code	= request.getParameter("hotel_code") ;

		sdate = request.getParameter("sdate");
		edate = request.getParameter("edate");
		area = request.getParameter("area");
		name = request.getParameter("name");
		type = request.getParameter("type");
		
		// �ٽ� ��ȸ�Ҷ��� �� ����
		cnt	 = (request.getParameter("cnt") == null) ? "2" : request.getParameter("cnt") ;
 
		// �˻� ���ǿ� ���� where�� ���� 
		if (!comm.isEmpty(hotel_code)) {    
			schargs.put("hotel_code", hotel_code);
		} 
		if (!comm.isEmpty(cnt)) {   
			schargs.put("cnt",cnt);
		}    
		if (!comm.isEmpty(sdate) || !comm.isEmpty(edate)) {  
			schargs.put("sdate", sdate);
			schargs.put("edate",edate);
		} 		 
		

		/** ȣ�� ���� �������� **/
		HotelSvc hotelSvc = new HotelSvc(); 
		HotelInfo hotelInfo = hotelSvc.getSelectOne(hotel_code); 

		/** ���� ���� �������� **/
		String where = " where hotel.hotel_code = '"+hotel_code+"' and mem_id = '"+loginMember.getMi_id()+"'";
		ReserveSvc rvSvc = new ReserveSvc(); 
		ArrayList<ReserveInfo> rvList = rvSvc.getList(where, "", 0, -1); 
		if (rvList == null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			String referer = (String)request.getHeader("REFERER");
			out.println("<script>");
			out.println("alert('���೻���� �����ϴ�. �����Ͻ� ���Ҹ� �ı� ����� �����մϴ�.');");
			out.println("location.href='history.back()';");
			out.println("</script>");
			out.close();
		}
		
		
		request.setAttribute("schargs", 	schargs);
		request.setAttribute("hotelInfo", 	hotelInfo);   
		request.setAttribute("rvList", 	rvList);  

		ActionForward forward = new ActionForward();
		forward.setPath("/hotel/hotel_reply_form.jsp"); 
		return forward;
	}

}
