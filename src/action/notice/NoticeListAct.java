package action.notice;

import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import svc.*;
import svc.notice.NoticeListSvc;
import vo.*;

public class NoticeListAct implements action.Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		int cpage = 1, pcnt, spage, epage, rcnt, psize = 10, bsize = 10;
		
		if (request.getParameter("cpage") != null)
			cpage = Integer.parseInt(request.getParameter("cpage"));
		

		String schtype = request.getParameter("schtype");	
		String keyword = request.getParameter("keyword");	

		String where = "";	
		if (keyword != null && !keyword.equals("")) {
			if (schtype.equals("tc")) {	
				where = " where bn_title like '%" + keyword + "%' " + 
					" or bn_content like '%" + keyword + "%' ";
			} else {	
				where = " where bn_" + schtype + " like '%" + keyword + "%' ";
			}
		}

		NoticeListSvc noticeListSvc = new NoticeListSvc();
		rcnt = noticeListSvc.getNoticeCount(where);
	
		ArrayList<NoticeInfo> noticeList = noticeListSvc.getNoticeList(where, cpage, psize);
		

		pcnt = rcnt / psize;
		if (rcnt % psize > 0)	pcnt++;				
		spage = (cpage - 1) / bsize * bsize + 1;	
		epage = spage + bsize - 1;
		if (epage > pcnt)	epage = pcnt;			

		PageInfo pageInfo = new PageInfo();
		pageInfo.setCpage(cpage);
		pageInfo.setRcnt(rcnt);			pageInfo.setPcnt(pcnt);
		pageInfo.setSpage(spage);		pageInfo.setEpage(epage);
		pageInfo.setPsize(psize);		pageInfo.setBsize(bsize);
		pageInfo.setSchtype(schtype);	pageInfo.setKeyword(keyword);

		request.setAttribute("noticeList", noticeList);
		request.setAttribute("pageInfo", pageInfo);
		ActionForward forward = new ActionForward();
		forward.setPath("/notice/notice_list.jsp");

		return forward;
	}
}
