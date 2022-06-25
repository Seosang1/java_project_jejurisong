package action.admin.hotel;

import javax.servlet.http.*;
import java.util.*;

import svc.hotel.*; 
import vo.*;

public class HotelListPopupAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		ArrayList<HotelInfo> hotelList = new ArrayList<HotelInfo>();
		Common comm = new Common();
		
		int cpage = 1, psize = 10, bsize = 10, spage, epage, rcnt, pcnt;
		if (request.getParameter("cpage") != null)
			cpage = Integer.parseInt(request.getParameter("cpage"));
		if (request.getParameter("psize") != null)
			psize = Integer.parseInt(request.getParameter("psize"));
		
		// �˻�����(����, ��������, ���¿���, ���ڸ�) ������Ʈ��
		String area, type, open_yn, name, where = ""; 
		HashMap<String, String> schargs = new HashMap<String, String>();
		
		name	= request.getParameter("txt_name");		// ���ڸ�

		System.out.println("cpage["+cpage+"] bsize[" + bsize + "] name["+name+"]");
		 
		if (!comm.isEmpty(name)) {
			where += " and hotel_name like '%" + name + "%'";   
			schargs.put("name", name);
		}
		if (!comm.isEmpty(where)) {
			where = " where " + where.substring(4);
		} 
		   
		// order by �⺻ ����
		String orderBy = " order by hotel_idx desc ";
		
		System.out.println("where : " + where);
		System.out.println("orderby : " + orderBy);
		  
		HotelSvc hotelListAdminSvc = new HotelSvc();
		rcnt = hotelListAdminSvc.getCount(where);	// �˻��� ��ǰ�� �� ����(������ ������ ���ϱ� ���� �ʿ�)
		hotelList = hotelListAdminSvc.getList(where, orderBy, cpage, psize);	// �� ������(cpage)���� ������ �˻��� ��ǰ����� �޾ƿ�
		 
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
		request.setAttribute("hotelList", hotelList);
		 
	    ActionForward forward = new ActionForward();
	    forward.setPath("/admin/hotel/hotel_list_pop.jsp");

	    return forward;
	}
	      
}
