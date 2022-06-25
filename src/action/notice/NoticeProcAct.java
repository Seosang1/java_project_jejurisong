package action.notice;

import javax.servlet.http.*;
import java.io.*;
import svc.notice.*;
import vo.*;

public class NoticeProcAct implements action.Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		NoticeInfo noticeInfo = new NoticeInfo();
		noticeInfo.setBn_writer(request.getParameter("writer").trim());
		noticeInfo.setBn_title(request.getParameter("title").trim());
		noticeInfo.setBn_content(request.getParameter("content").trim());

		NoticeProcSvc noticeProcSvc = new NoticeProcSvc();
		int result = noticeProcSvc.noticeInsert(noticeInfo);

		if (result == 0) {	
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('글 등록에 실패했습니다.\n다시 시도해 주십시오.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}

		ActionForward forward = new ActionForward();
		forward.setRedirect(true);	
		forward.setPath("/notice_view.brd?cpage=1&bnidx=" + result);
		

		return forward;
	}
}
