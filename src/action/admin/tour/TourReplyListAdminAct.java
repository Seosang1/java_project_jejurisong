package action.admin.tour;

import javax.servlet.http.*;

import svc.mypage.*;

import java.util.*;

import vo.*;

public class TourReplyListAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		// 필요 인스턴스 선언
		ArrayList<ReplyInfo> list = new ArrayList<ReplyInfo>();
		Common comm = new Common();	// 공통코드
		
		// 페이징 처리 
		int cpage = 1, psize = 10, bsize = 10, spage, epage, rcnt, pcnt;
		if (request.getParameter("cpage") != null)
			cpage = Integer.parseInt(request.getParameter("cpage"));
		if (request.getParameter("psize") != null)
			psize = Integer.parseInt(request.getParameter("psize"));
		
		// 검색조건(지역, 유형, 삭제여부, 명) 쿼리스트링
		String area, type, del_yn, name, where = ""; 
		HashMap<String, String> schargs = new HashMap<String, String>();
		
		area	= request.getParameter("sl_area") ;		// 지역 
		type	= request.getParameter("sl_type");		// 숙소유형
		del_yn	= request.getParameter("sl_del_yn");	// 오픈여부
		name	= request.getParameter("txt_name");		// 여행지명

		// System.out.println("cpage["+cpage+"] bsize[" + bsize + "] area["+area+"] type["+type+"] del_yn["+del_yn+"] name["+name+"]");
		
		where = " and reply_type='T'  "; 
		
		// 검색 조건에 따른 where절 생성 
		if (!comm.isEmpty(area)) {
			where += " and tour_area = '" + area + "'";  
			schargs.put("area", area);
		} 
		if (!comm.isEmpty(type)) {
			where += " and tour_type = '" + type + "'";  
			schargs.put("type", type); 
		} 
		if (!comm.isEmpty(del_yn)) {
			where += " and reply_del_yn = '" + del_yn + "'";   
			schargs.put("del_yn", del_yn);
		} 
		if (!comm.isEmpty(name)) {
			where += " and tour_name like '%" + name + "%'";   
			schargs.put("name", name);
		}
		if (!comm.isEmpty(where)) {
			where = " where " + where.substring(4);
		} 
		 
		   
		// order by 기본 셋팅
		String orderBy = " order by reply_idx desc ";
		
		System.out.println("where : " + where);
		System.out.println("orderby : " + orderBy);
		  
		MypageReplySvc replySvc = new MypageReplySvc();
		rcnt = replySvc.getTourReplyCount(where);			// 총 개수(페이지 개수를 구하기 위해 필요)
		list = replySvc.getTourReplyList(where, orderBy, cpage, psize);	// 현 페이지(cpage)에서 보여줄 검색된 목록을 받아옴
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
		request.setAttribute("list", list);
		request.setAttribute("menuPage", "tourReply");
		
	    ActionForward forward = new ActionForward(); 
	    forward.setPath("/admin/tour/tour_reply_list.jsp");

	    return forward;
	}
	      
}
