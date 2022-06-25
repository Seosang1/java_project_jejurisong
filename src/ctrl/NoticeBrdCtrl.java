package ctrl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import action.Action;
import action.notice.NoticeListAct;
import action.notice.NoticeProcAct;
import action.notice.NoticeViewAct;
import vo.ActionForward;

@WebServlet("*.brd")
public class NoticeBrdCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public NoticeBrdCtrl() {
        super();
    }
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
    	request.setCharacterEncoding("utf-8");
    	String requestUri = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String command = requestUri.substring(contextPath.length());
    	ActionForward forward = null;
    	Action action = null;
    	
    	
    	System.out.println(command);
    	
    	
    	switch (command) {
    	
		case "/notice_list.brd" : 	
			action = new NoticeListAct();
			break;
		case "/notice_proc.brd" : 		
			action = new NoticeProcAct();
			break;
		case "/notice_view.brd" : 		
			action = new NoticeViewAct();
			break;
			
	}
	try {
		forward = action.execute(request, response);
	} catch(Exception e) {
		e.printStackTrace();
	}
	
	if (forward != null) {
		if (forward.isRedirect()) {
			response.sendRedirect(forward.getPath());
		} else {
			RequestDispatcher dispatcher = 
				request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
	}
}    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		doProcess(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
