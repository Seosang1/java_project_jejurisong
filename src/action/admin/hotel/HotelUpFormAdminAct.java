package action.admin.hotel;

import javax.servlet.http.*;
import java.util.*;

import svc.hotel.*; 
import vo.*;

/**
 * ���� ������ �̵�
 * �� ���� ������ �ѷ����� ���·� ����¡, �˻�����, �ڵ尪�� �̿��� ������ 1�� �� �����͸� ����
 * @author sorakim
 *
 */
public class HotelUpFormAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		HotelInfo info = new HotelInfo();
		Common common = new Common();
		
		request.setCharacterEncoding("utf-8");
 
		String hotel_code = request.getParameter("hotel_code");
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
		HotelSvc hotelListAdminSvc = new HotelSvc();
		info = hotelListAdminSvc.getSelectOne(hotel_code);


		// ----- ���ڿ� �ش��ϴ� �� ����Ʈ ----- 
		where = " where room.hotel_code = '" + hotel_code + "'";
		String orderBy = " order by room_idx desc ";
		RoomSvc listAdminSvc = new RoomSvc();
		ArrayList<RoomInfo> roomList = listAdminSvc.getList(where, orderBy, 1, -1);	// �� ������(cpage)���� ������ �˻��� ����� �޾ƿ�

		// ----- ���ڿ� �ش��ϴ� �ı� ����Ʈ ----- 
		where = " where reply.hotel_code = '" + hotel_code + "'";
		orderBy = " order by room_re_idx desc ";
		HotelReplySvc replylistAdminSvc = new HotelReplySvc();
		ArrayList<ReplyInfo> replyList = replylistAdminSvc.getList(where, orderBy, 1, -1);	// �� ������(cpage)���� ������ �˻��� ����� �޾ƿ�
 
		
		request.setAttribute("info", info); 
		request.setAttribute("roomList", roomList); 
		request.setAttribute("replyList", replyList); 
		request.setAttribute("menuPage", "hotel");
		
	    ActionForward forward = new ActionForward();
	    forward.setPath("/admin/hotel/hotel_up_form.jsp"); 

	    return forward;
	}
	      
}
