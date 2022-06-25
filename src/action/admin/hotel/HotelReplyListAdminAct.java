package action.admin.hotel;

import javax.servlet.http.*;

import svc.mypage.*;

import java.util.*;

import vo.*;

public class HotelReplyListAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		// �ʿ� �ν��Ͻ� ����
		ArrayList<ReplyInfo> list = new ArrayList<ReplyInfo>();
		Common comm = new Common();	// �����ڵ�
		
		// ����¡ ó�� 
		int cpage = 1, psize = 10, bsize = 10, spage, epage, rcnt, pcnt;
		if (request.getParameter("cpage") != null)
			cpage = Integer.parseInt(request.getParameter("cpage"));
		if (request.getParameter("psize") != null)
			psize = Integer.parseInt(request.getParameter("psize"));
		 
		
		// �˻�����(����, ��������, ���¿���, ���ڸ�) ������Ʈ��
		String area, type, del_yn, name, where = ""; 
		HashMap<String, String> schargs = new HashMap<String, String>();
		
		area	= request.getParameter("sl_area") ;		// ���� 
		type	= request.getParameter("sl_type");		// ��������
		del_yn	= request.getParameter("sl_del_yn");	// ���¿���
		name	= request.getParameter("txt_name");		// ���ڸ�

		System.out.println("cpage["+cpage+"] bsize[" + bsize + "] area["+area+"] type["+type+"] del_yn["+del_yn+"] name["+name+"]");

		where = " and reply_type='A'  ";
		
		// �˻� ���ǿ� ���� where�� ���� 
		if (!comm.isEmpty(area)) {
			where += " and hotel_area = '" + area + "'";  
			schargs.put("area", area);
		} 
		if (!comm.isEmpty(type)) {
			where += " and hotel_type = '" + type + "'";  
			schargs.put("type", type); 
		} 
		if (!comm.isEmpty(del_yn)) {
			where += " and reply_del_yn = '" + del_yn + "'";   
			schargs.put("del_yn", del_yn);
		} 
		if (!comm.isEmpty(name)) {
			where += " and hotel_name like '%" + name + "%'";   
			schargs.put("name", name);
		}
		if (!comm.isEmpty(where)) {
			where = " where " + where.substring(4);
		} 
		    
		// order by �⺻ ����
		String orderBy = " order by reply_idx desc ";
		
		System.out.println("where : " + where);
		System.out.println("orderby : " + orderBy);
		  
		MypageReplySvc replySvc = new MypageReplySvc(); 
		rcnt = replySvc.getTourReplyCount(where);			// �� ����(������ ������ ���ϱ� ���� �ʿ�)
		list = replySvc.getHotelReplyList(where, orderBy, cpage, psize);	// �� ������(cpage)���� ������ �˻��� ����� �޾ƿ�
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
		request.setAttribute("menuPage", "hotelReply");
		
	    ActionForward forward = new ActionForward();
	    forward.setPath("/admin/hotel/reply_list.jsp");

	    return forward;
	}
	      
}
