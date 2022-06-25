package action.notice;

import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import svc.*;
import svc.notice.*;
import vo.*;

public class NoticeViewAct implements action.Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		int bnidx = Integer.parseInt(request.getParameter("bnidx"));		
		int cpage = Integer.parseInt(request.getParameter("cpage"));	
		String schtype = request.getParameter("schtype");	
		String keyword = request.getParameter("keyword");	

		PageInfo pageInfo = new PageInfo();
		pageInfo.setCpage(cpage);
		pageInfo.setSchtype(schtype);
		pageInfo.setKeyword(keyword);

		NoticeViewSvc noticeViewSvc = new NoticeViewSvc();
		NoticeInfo noticeInfo = noticeViewSvc.getNoticeInfo(bnidx);

		if (noticeInfo == null) {	
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('잘못된 경로로 들어오셨습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}

		request.setAttribute("noticeInfo", noticeInfo);
		request.setAttribute("pageInfo", pageInfo);
		ActionForward forward = new ActionForward();
		forward.setPath("/notice/notice_view.jsp");

		return forward;
	}
}
