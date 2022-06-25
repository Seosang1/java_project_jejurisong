package action.admin.food;

import javax.servlet.http.*;

import svc.mypage.*;

import java.util.*;

import vo.*;

public class FoodReplyListAdminAct implements action.Action{
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
		 

		// �˻�����(����, ��������, ���¿���, ��������) ������Ʈ��
		String area, type, open_yn, name, where = ""; 
		HashMap<String, String> schargs = new HashMap<String, String>();
		
		area	= request.getParameter("sl_area") ;		// ���� 
		type	= request.getParameter("sl_type");		// ��������
		open_yn	= request.getParameter("sl_open_yn");	// ���¿���
		name	= request.getParameter("txt_name");		// ��������

		System.out.println("cpage["+cpage+"] bsize[" + bsize + "] area["+area+"] type["+type+"] open_yn["+open_yn+"] name["+name+"]");

		where = " and reply_type='F'  "; 
		
		// �˻� ���ǿ� ���� where�� ���� 
		if (!comm.isEmpty(area)) {
			where += " and food_area = '" + area + "'";  
			schargs.put("area", area);
		} 
		if (!comm.isEmpty(type)) {
			where += " and food_type = '" + type + "'";  
			schargs.put("type", type); 
		} 
		if (!comm.isEmpty(open_yn)) {
			where += " and food_open_yn = '" + open_yn + "'";   
			schargs.put("open_yn", open_yn);
		} 
		if (!comm.isEmpty(name)) {
			where += " and food_name like '%" + name + "%'";   
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
		rcnt = replySvc.getFoodReplyCount(where);			// �� ����(������ ������ ���ϱ� ���� �ʿ�)
		list = replySvc.getFoodReplyList(where, orderBy, cpage, psize);	// �� ������(cpage)���� ������ �˻��� ����� �޾ƿ�
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
		request.setAttribute("menuPage", "foodReply");
		
	    ActionForward forward = new ActionForward(); 
	    forward.setPath("/admin/food/food_reply_list.jsp");

	    return forward;
	}
	      
}
