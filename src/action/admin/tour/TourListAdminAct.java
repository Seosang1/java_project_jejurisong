package action.admin.tour;

import javax.servlet.http.*;
import java.util.*;

import svc.tour.*; 
import vo.*;

public class TourListAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		ArrayList<TourInfo> tourList = new ArrayList<TourInfo>();
		Common comm = new Common();
		
		int cpage = 1, psize = 10, bsize = 10, spage, epage, rcnt, pcnt;
		if (request.getParameter("cpage") != null)
			cpage = Integer.parseInt(request.getParameter("cpage"));
		if (request.getParameter("psize") != null)
			psize = Integer.parseInt(request.getParameter("psize"));
		
		// �˻�����(����, ����, ���¿���, ��) ������Ʈ��
		String area, type, open_yn, name, where = ""; 
		HashMap<String, String> schargs = new HashMap<String, String>();
		
		area	= request.getParameter("sl_area") ;		// ���� 
		type	= request.getParameter("sl_type");		// ��������
		open_yn	= request.getParameter("sl_open_yn");	// ���¿���
		name	= request.getParameter("txt_name");		// ��������

		System.out.println("cpage["+cpage+"] bsize[" + bsize + "] area["+area+"] type["+type+"] open_yn["+open_yn+"] name["+name+"]");
		
		// �˻� ���ǿ� ���� where�� ���� 
		if (!comm.isEmpty(area)) {
			where += " and tour_area = '" + area + "'";  
			schargs.put("area", area);
		} 
		if (!comm.isEmpty(type)) {
			where += " and tour_type = '" + type + "'";  
			schargs.put("type", type); 
		} 
		if (!comm.isEmpty(open_yn)) {
			where += " and tour_open_yn = '" + open_yn + "'";   
			schargs.put("open_yn", open_yn);
		} 
		if (!comm.isEmpty(name)) {
			where += " and tour_name like '%" + name + "%'";   
			schargs.put("name", name);
		}
		if (!comm.isEmpty(where)) {
			where = " where " + where.substring(4);
		} 
		   
		// order by �⺻ ����
		String orderBy = " order by tour_idx desc ";
		
		System.out.println("where : " + where);
		System.out.println("orderby : " + orderBy);
		  
		TourSvc tourListAdminSvc = new TourSvc();
		rcnt = tourListAdminSvc.getCount(where);	// �˻��� ��ǰ�� �� ����(������ ������ ���ϱ� ���� �ʿ�)
		tourList = tourListAdminSvc.getList(where, orderBy, cpage, psize);	// �� ������(cpage)���� ������ �˻��� ��ǰ����� �޾ƿ�
		 
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
		request.setAttribute("list", tourList); 
		request.setAttribute("menuPage", "tour");
		
		
	    ActionForward forward = new ActionForward();
	    forward.setPath("/admin/tour/tour_list.jsp");

	    return forward;
	}
	      
}
