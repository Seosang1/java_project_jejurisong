package action.admin.hotel;

import javax.servlet.http.*;
import java.util.*;

import svc.hotel.*;
import svc.user.*;
import vo.*;

public class RoomListAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		// �ʿ� �ν��Ͻ� ����
		ArrayList<RoomInfo> list = new ArrayList<RoomInfo>();
		Common comm = new Common();	// �����ڵ�
		
		// ����¡ ó�� 
		int cpage = 1, psize = 10, bsize = 10, spage, epage, rcnt, pcnt;
		if (request.getParameter("cpage") != null)
			cpage = Integer.parseInt(request.getParameter("cpage"));
		if (request.getParameter("psize") != null)
			psize = Integer.parseInt(request.getParameter("psize"));
		
		// �˻�����(����, ��������, ���¿���, ���ڸ�) ������Ʈ��
		String hotel_name, room_type, where = ""; 
		HashMap<String, String> schargs = new HashMap<String, String>();

		hotel_name	= request.getParameter("txt_hotel_name");
		room_type	= request.getParameter("sl_room_type");

		System.out.println("**page["+cpage+"] bsize[" + bsize + "] hotel_name["+hotel_name+"] room_type["+room_type+"]");
		
		// �˻� ���ǿ� ���� where�� ���� 
		if (!comm.isEmpty(hotel_name)) {
			where += " and hotel_name like '%" + hotel_name + "%'";  
			schargs.put("name", hotel_name);
		} 
		if (!comm.isEmpty(room_type)) {
			where += " and room_type = '" + room_type + "'";  
			schargs.put("type", room_type); 
		}  
		if (!comm.isEmpty(where)) {
			where = " where " + where.substring(4);
		} 
		   
		// order by �⺻ ����
		String orderBy = " order by room_idx desc ";
		
		System.out.println("where : " + where);
		System.out.println("orderby : " + orderBy);
		  
		RoomSvc listAdminSvc = new RoomSvc();
		rcnt = listAdminSvc.getCount(where);						// �� ����(������ ������ ���ϱ� ���� �ʿ�)
		list = listAdminSvc.getList(where, orderBy, cpage, psize);	// �� ������(cpage)���� ������ �˻��� ����� �޾ƿ�
		pcnt = rcnt / psize;
		if (rcnt % psize > 0)	pcnt++;				// ��ü ������ ��
		spage = (cpage - 1) / bsize * bsize + 1;	// ����� ���� ������ ��ȣ
		epage = spage + bsize - 1;
		if (epage > pcnt)		epage = pcnt;		// ����� ���� ������ ��ȣ

		PageInfo pageInfo = new PageInfo();	// ����¡�� �ʿ��� �������� ������ �ν��Ͻ�
		// ����¡�� �ʿ��� ������
		pageInfo.setCpage(cpage);		// ���� ������ ��ȣ
		pageInfo.setRcnt(rcnt);			// ��ü �Խñ� ����
		pageInfo.setPcnt(pcnt);			// ��ü ������ ����
		pageInfo.setSpage(spage);		// ��� ���� ������ ��ȣ
		pageInfo.setEpage(epage);		// ��� ���� ������ ��ȣ
		pageInfo.setPsize(psize);		// ������ ũ��
		pageInfo.setBsize(bsize);		// ��� ũ��
		
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("schargs", schargs);
		request.setAttribute("list", list);
		request.setAttribute("menuPage", "room");
		
	    ActionForward forward = new ActionForward();
	    forward.setPath("/admin/hotel/room_list.jsp");

	    return forward;
	}
	      
}
