package action.admin.member;

import javax.servlet.http.*;
import java.util.*;

import svc.member.*; 
import vo.*;

public class MemberListAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		ArrayList<MemberInfo> list = new ArrayList<MemberInfo>();
		Common comm = new Common();
		
		int cpage = 1, psize = 10, bsize = 10, spage, epage, rcnt, pcnt;
		if (request.getParameter("cpage") != null)
			cpage = Integer.parseInt(request.getParameter("cpage"));
		if (request.getParameter("psize") != null)
			psize = Integer.parseInt(request.getParameter("psize"));
		
		String id, name, where = ""; 
		HashMap<String, String> schargs = new HashMap<String, String>();
		 
		id		= request.getParameter("txt_id");		// ���̵��
		name	= request.getParameter("txt_name");		// �̸�

		if (!comm.isEmpty(id)) {
			where += " and mi_id like '%" + id + "%'";   
			schargs.put("id", id);
		}
		if (!comm.isEmpty(name)) {
			where += " and mi_name like '%" + name + "%'";   
			schargs.put("name", name);
		}
		if (!comm.isEmpty(where)) {
			where = " where " + where.substring(4);
		} 
		   
		// order by �⺻ ����
		String orderBy = "";
		
		System.out.println("where : " + where);
		System.out.println("orderby : " + orderBy);
		  
		MemberSvc memberSvc = new MemberSvc();
		rcnt = memberSvc.getCount(where);	// �˻��� ��ǰ�� �� ����(������ ������ ���ϱ� ���� �ʿ�)
		list = memberSvc.getList(where, orderBy, cpage, psize);	// �� ������(cpage)���� ������ �˻��� ��ǰ����� �޾ƿ�
		 
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
		pageInfo.setSpage(spage);		// ���	 ���� ������ ��ȣ
		pageInfo.setEpage(epage);		// ��� ���� ������ ��ȣ
		pageInfo.setPsize(psize);		// ������ ũ��
		pageInfo.setBsize(bsize);		// ��� ũ��
		
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("schargs", schargs);
		request.setAttribute("list", list); 
		request.setAttribute("menuPage", "member");
		
		
	    ActionForward forward = new ActionForward();
	    forward.setPath("/admin/member/member_list.jsp");

	    return forward;
	}
	      
}
