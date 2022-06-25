package action.tour;

import javax.servlet.http.*;

import java.util.*;
import java.io.*;
import java.text.SimpleDateFormat;

import svc.*;
import svc.tour.*;
import vo.*; 

public class TourListAction implements action.Action {
 
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		ArrayList<TourInfo> list = new ArrayList<TourInfo>();
		Common comm = new Common();
		 
		String tour_type, tour_area, area_qry="", type_qry="",where = "", order_by, orderBy = "", btnMap; 
		HashMap<String, String> schargs = new HashMap<String, String>();
		 
		tour_type	= request.getParameter("tour_type");		 
		tour_area	= request.getParameter("tour_area");		 
		order_by	= request.getParameter("order_by");	 
		btnMap	= request.getParameter("btnMap");
		

		schargs.put("btnMap", "on");
		
		// 검색 조건에 따른 where절 생성 
		if (!comm.isEmpty(tour_type)) {
			where += " and tour_type = '" + tour_type + "'";
			type_qry = "&tour_type=" + tour_type;
			schargs.put("tour_type", tour_type);
		}  
		if (!comm.isEmpty(tour_area)) {
			where += " and tour_area = '" + tour_area + "'";  
			area_qry = "&tour_area=" + tour_area;
			schargs.put("tour_area", tour_area);
		}  
		
		if (!comm.isEmpty(where)) {
			where = " where " + where.substring(4);
		} 
		   
		// order by 기본 셋팅
		if (!comm.isEmpty(order_by)) {

			if (order_by.equals("a"))
				orderBy = " order by tour_score desc ";
			if (order_by.equals("b"))
				orderBy = " order by tour_review_cnt desc ";
			

			schargs.put("order_by", order_by);
			
		}
		
		 
		TourSvc listSvc = new TourSvc();
		list = listSvc.getList(where, orderBy, 0, -1); 

		request.setAttribute("schargs", schargs);
		request.setAttribute("type_qry", type_qry);
		request.setAttribute("area_qry", area_qry);
		request.setAttribute("btnMap", btnMap);
		request.setAttribute("list", list);  
		
		ActionForward forward = new ActionForward(); 
		forward.setPath("tour/tour_list.jsp");

		return forward;
	}

}
