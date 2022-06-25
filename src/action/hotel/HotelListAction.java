package action.hotel;

import javax.servlet.http.*;

import java.util.*;
import java.io.*;
import java.text.SimpleDateFormat;

import svc.*;
import svc.hotel.*;
import vo.*; 

public class HotelListAction implements action.Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		ArrayList<HotelInfo> hotelList = new ArrayList<HotelInfo>();
		Common comm = new Common();
		
		int cpage = 1, rcnt; 
		
		// �˻�����(����, ��������, ���¿���, ���ڸ�) ������Ʈ��
		String area, type, open_yn, name, sdate, edate, where = "", whereOn = ""; 
		HashMap<String, String> schargs = new HashMap<String, String>();

		// �������~�������ڰ� ���� ��� ���ó�¥~���� ����
		if (request.getParameter("txt_sdate") == null) {
			// ��¥ ����
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
			Calendar c1 = Calendar.getInstance(); 
			String nowDate = sdf.format(c1.getTime());
			sdate = nowDate;
			 
			c1.add(Calendar.DATE, 1);
			edate = sdf.format(c1.getTime()); 
			
		} else {
			sdate = request.getParameter("txt_sdate");
			edate = request.getParameter("txt_edate");
		}
		  
		area	= request.getParameter("sl_area") ;		// ���� 
		type	= request.getParameter("sl_type");		// �������� 
		name	= request.getParameter("txt_name");		// ���ڸ�  
		
		// �˻� ���ǿ� ���� where�� ���� 
		if (!comm.isEmpty(area)) {
			where += " and hotel_area = '" + area + "'";  
			schargs.put("area", area);
		} 
		if (!comm.isEmpty(type)) {
			where += " and hotel_type = '" + type + "'";  
			schargs.put("type", type); 
		} 
		if (!comm.isEmpty(name)) {
			where += " and hotel_name like '%" + name + "%'";   
			schargs.put("name", name);
		} 
		if (!comm.isEmpty(sdate)) { 
			schargs.put("sdate", sdate);
		} 
		if (!comm.isEmpty(edate)) { 
			schargs.put("edate",edate);
		} 
		 
		where += " and hotel_open_yn = 'y'";   
		
		if (!comm.isEmpty(where)) {
			where = " where " + where.substring(4);
		} 
		   
		// order by �⺻ ����
		String orderBy = " order by hotel_idx desc ";
		 
		HotelSvc hotelListSvc = new HotelSvc();
		rcnt = hotelListSvc.getCount(where);	// �˻��� ��ǰ�� �� ����(������ ������ ���ϱ� ���� �ʿ�)
		hotelList = hotelListSvc.getListMain(where, orderBy); 
		PageInfo pageInfo = new PageInfo();	// ����¡�� �ʿ��� �������� ������ �ν��Ͻ�
		// ����¡�� �ʿ��� ������
		pageInfo.setCpage(cpage);		// ���� ������ ��ȣ 
		
		

		// ���� �Ϸ� �� ����Ʈ �������� �̵� �� ��� üũ
		String msg = "";
		//String[] arrUrl = arrRef[arrRef.length-1].split("\?"); 
		/*
		System.out.println("------------------");
		System.out.println(arrRef.length);
		System.out.println(arrRef[arrRef.length-1]); 
		System.out.println(referUrl.startsWith(beforeUrl));
		//System.out.println(arrUrl[0]);
		*/
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("schargs", schargs);
		request.setAttribute("list", hotelList);  
		request.setAttribute("msg", msg);  
		
		ActionForward forward = new ActionForward(); 
		forward.setPath("hotel/hotel_list.jsp");

		return forward;
	}

}
