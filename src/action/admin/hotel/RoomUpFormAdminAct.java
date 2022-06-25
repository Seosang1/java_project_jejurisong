package action.admin.hotel;

import javax.servlet.http.*;
import java.util.*;

import svc.hotel.*;
import svc.user.*;
import vo.*; 


public class RoomUpFormAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		RoomInfo info = new RoomInfo();
		Common common = new Common();
		
		request.setCharacterEncoding("utf-8");
 
		String room_code = request.getParameter("room_code");
		int cpage = 1, psize = 10, bsize = 10, spage, epage, rcnt, pcnt;
		if (request.getParameter("cpage") != null)
			cpage = Integer.parseInt(request.getParameter("cpage"));
		if (request.getParameter("psize") != null)
			psize = Integer.parseInt(request.getParameter("psize"));
		
		// �˻�����(����, ��������, ���¿���, ���ڸ�) ������Ʈ��
		String area, type, open_yn, name, where = ""; 
		HashMap<String, String> schargs = new HashMap<String, String>();
		
		area	= request.getParameter("sl_area") ;		// ���� 
		type	= request.getParameter("sl_type");		// ��������
		open_yn	= request.getParameter("sl_open_yn");	// ���¿���
		name	= request.getParameter("txt_name");		// ���ڸ�

		System.out.println("cpage["+cpage+"] bsize[" + bsize + "] area["+area+"] type["+type+"] open_yn["+open_yn+"] name["+name+"]");
		
		// �˻� ���ǿ� ���� where�� ���� 
		if (!common.isEmpty(area)) { 
			schargs.put("area", area);
		} 
		if (!common.isEmpty(type)) { 
			schargs.put("type", type); 
		} 
		if (!common.isEmpty(open_yn)) { 
			schargs.put("open_yn", open_yn);
		} 
		if (!common.isEmpty(name)) { 
			schargs.put("name", name);
		} 
		     
		// ----- ���� ���� 1�� �������� �κ� ----- 
		RoomSvc listAdminSvc = new RoomSvc();
		info = listAdminSvc.getSelectOne(room_code);
		    
		request.setAttribute("info", info); 
		request.setAttribute("menuPage", "room");
		
	    ActionForward forward = new ActionForward();
	    forward.setPath("/admin/hotel/room_up_form.jsp"); 

	    return forward;
	}
	      
}
