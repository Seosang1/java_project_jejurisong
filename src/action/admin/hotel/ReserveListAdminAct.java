package action.admin.hotel;

import javax.servlet.http.*;
import java.util.*; 
import svc.hotel.*; 
import vo.*;

public class ReserveListAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		// �ʿ� �ν��Ͻ� ����
		ArrayList<ReserveInfo> list = new ArrayList<ReserveInfo>();
		Common common = new Common();	// �����ڵ�
		
		// ����¡ ó�� 
		int cpage = 1, psize = 10, bsize = 10, spage, epage, rcnt, pcnt;
		if (request.getParameter("cpage") != null)
			cpage = Integer.parseInt(request.getParameter("cpage"));
		if (request.getParameter("psize") != null)
			psize = Integer.parseInt(request.getParameter("psize"));
		
		// �˻����� ������Ʈ��
		String hotel_name, room_type, rv_code, rv_sdate, rv_edate, mem_id, rv_name, rv_state, where = ""; 
		HashMap<String, String> schargs = new HashMap<String, String>();

		hotel_name	= request.getParameter("txt_hotel_name");
		room_type	= request.getParameter("sl_room_type");
		rv_code		= request.getParameter("txt_rv_code");
		rv_sdate	= request.getParameter("txt_rv_sdate");
		rv_edate	= request.getParameter("txt_rv_edate");
		mem_id		= request.getParameter("txt_mem_id");
		rv_name		= request.getParameter("txt_rv_name");
		rv_state	= request.getParameter("sl_rv_state");

		// System.out.println("**page["+cpage+"] bsize[" + bsize + "] hotel_name["+hotel_name+"] room_type["+room_type+"]");

		/*System.out.println("hotel_name : " + hotel_name);
		System.out.println("room_type : " + room_type);
		System.out.println("rv_code : " + rv_code);
		System.out.println("rv_sdate : " + rv_sdate);
		System.out.println("rv_edate : " + rv_edate);
		System.out.println("rv_code : " + rv_code);
		System.out.println("mem_id : " + mem_id);
		System.out.println("rv_name : " + rv_name);*/
		
		// �˻� ���ǿ� ���� where�� ���� 
		if (!common.isEmpty(hotel_name)) {
			where += " and hotel_name like '%" + hotel_name + "%'";  
			schargs.put("hotel_name", hotel_name);
		} 
		if (!common.isEmpty(room_type)) {
			where += " and room_type = '" + room_type + "'";  
			schargs.put("room_type", room_type); 
		}  
		if (!common.isEmpty(rv_code)) {
			where += " and rv_code like '%" + rv_code + "%'";  
			schargs.put("rv_code", rv_code); 
		}  
		if (!common.isEmpty(rv_sdate)) {
			where += " and rv_sdate >= '" + rv_sdate + "'";  
			schargs.put("rv_sdate", rv_sdate); 
		}  
		if (!common.isEmpty(rv_edate)) {
			where += " and rv_edate <= '" + rv_edate + "'";  
			schargs.put("rv_edate", rv_edate); 
		}  
		if (!common.isEmpty(mem_id)) {
			where += " and mem_id like '%" + mem_id + "%'";  
			schargs.put("mem_id", mem_id); 
		}  
		if (!common.isEmpty(rv_name)) {
			where += " and rv_name like '%" + rv_name + "%'";  
			schargs.put("rv_name", mem_id); 
		}  
		if (!common.isEmpty(rv_state)) {
			where += " and rv_state = '" + rv_state + "'";  
			schargs.put("rv_state", rv_state); 
		}  
		if (!common.isEmpty(where)) {
			where = " where " + where.substring(4);
		} 
		   
		// order by �⺻ ����
		String orderBy = " order by rv_idx desc ";
		
		System.out.println("where : " + where);
		System.out.println("orderby : " + orderBy);
		  
		ReserveSvc listAdminSvc = new ReserveSvc();
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
		request.setAttribute("menuPage", "reserve");
		
	    ActionForward forward = new ActionForward();
	    forward.setPath("/admin/hotel/reserve_list.jsp"); 

	    return forward;
	}
	      
}
