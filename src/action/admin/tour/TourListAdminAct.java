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
		
		// 검색조건(지역, 유형, 오픈여부, 명) 쿼리스트링
		String area, type, open_yn, name, where = ""; 
		HashMap<String, String> schargs = new HashMap<String, String>();
		
		area	= request.getParameter("sl_area") ;		// 지역 
		type	= request.getParameter("sl_type");		// 숙소유형
		open_yn	= request.getParameter("sl_open_yn");	// 오픈여부
		name	= request.getParameter("txt_name");		// 여행지명

		System.out.println("cpage["+cpage+"] bsize[" + bsize + "] area["+area+"] type["+type+"] open_yn["+open_yn+"] name["+name+"]");
		
		// 검색 조건에 따른 where절 생성 
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
		   
		// order by 기본 셋팅
		String orderBy = " order by tour_idx desc ";
		
		System.out.println("where : " + where);
		System.out.println("orderby : " + orderBy);
		  
		TourSvc tourListAdminSvc = new TourSvc();
		rcnt = tourListAdminSvc.getCount(where);	// 검색된 상품의 총 개수(페이지 개수를 구하기 위해 필요)
		tourList = tourListAdminSvc.getList(where, orderBy, cpage, psize);	// 현 페이지(cpage)에서 보여줄 검색된 상품목록을 받아옴
		 
		pcnt = rcnt / psize;
		if (rcnt % psize > 0)	pcnt++;				// 전체 페이지 수
		spage = (cpage - 1) / bsize * bsize + 1;	// 블록의 시작 페이지 번호
		epage = spage + bsize - 1;
		if (epage > pcnt)		epage = pcnt;		// 블록의 종료 페이지 번호

		PageInfo pageInfo = new PageInfo();	// 페이징에 필요한 정보들을 저장할 인스턴스
		// 페이징에 필요한 정보들
		pageInfo.setCpage(cpage);		// 현재 페이지 번호
		pageInfo.setRcnt(rcnt);			// 전체 게시글 개수
		pageInfo.setPcnt(pcnt);			// 전체 페이지 개수
		pageInfo.setSpage(spage);		// 블록 시작 페이지 번호
		pageInfo.setEpage(epage);		// 블록 종료 페이지 번호
		pageInfo.setPsize(psize);		// 페이지 크기
		pageInfo.setBsize(bsize);		// 블록 크기
		
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("schargs", schargs);
		request.setAttribute("list", tourList); 
		request.setAttribute("menuPage", "tour");
		
		
	    ActionForward forward = new ActionForward();
	    forward.setPath("/admin/tour/tour_list.jsp");

	    return forward;
	}
	      
}
