package action.hotel;

import javax.servlet.http.*;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import java.util.*;
import java.io.*;
import svc.*;
import svc.hotel.*;
import vo.*; 

public class ReserveProcAction implements action.Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
 
		/** Form Parameter VO setting **/
		ReserveInfo reserveInfo = new ReserveInfo(); 		

		reserveInfo.setHotel_code(request.getParameter("hd_hotel_code").trim());
		reserveInfo.setHotel_name(request.getParameter("hd_hotel_name").trim());
		reserveInfo.setRoom_code(request.getParameter("hd_room_code").trim());
		reserveInfo.setRoom_type(request.getParameter("hd_room_type").trim());
		reserveInfo.setMem_id(request.getParameter("hd_mem_id").trim());
		reserveInfo.setRv_sdate(request.getParameter("hd_rv_sdate"));
		reserveInfo.setRv_edate(request.getParameter("hd_rv_edate"));
		reserveInfo.setRv_cnt(Integer.parseInt(request.getParameter("hd_rv_cnt")));
		reserveInfo.setRv_price(Integer.parseInt(request.getParameter("hd_rv_price")));
		reserveInfo.setRv_discount(Integer.parseInt(request.getParameter("hd_rv_discount")));
		reserveInfo.setRv_dis_price(Integer.parseInt(request.getParameter("hd_rv_dis_price")));
		reserveInfo.setRv_pay_price(Integer.parseInt(request.getParameter("hd_rv_pay_price")));
		reserveInfo.setRv_name(request.getParameter("rv_name").trim());
		reserveInfo.setRv_email(request.getParameter("rv_email").trim());
		//String phone = request.getParameter("rv_p1").trim() + "-" + request.getParameter("rv_p2").trim() + "-" + request.getParameter("rv_p3").trim();
		String phone = request.getParameter("rv_phone").trim();
		reserveInfo.setRv_phone(phone);
		reserveInfo.setRv_content(request.getParameter("rv_content"));
		           
		
		/** ����&��� ����� �������� �κ� **/
		ReserveSvc rvSvc = new ReserveSvc(); 
		reserveInfo.setRv_code(rvSvc.getCode());		
		int result = rvSvc.insert(reserveInfo);
		if (result == 0) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('���� �����Ͽ����ϴ�.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		} 

		/** ������ �̵� **/
		ActionForward forward = new ActionForward();  
		forward.setRedirect(true);	// redirect ������� �̵��ϵ��� ���� 
		forward.setPath("mypage_rv.mypage");

		return forward;
	}

}
