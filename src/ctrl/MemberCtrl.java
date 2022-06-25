package ctrl;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import action.*;
import action.member.*;
import vo.*;

@WebServlet("*.mem")
public class MemberCtrl extends HttpServlet {
	// ȸ������ �۾�(����, ��������, Ż��)�� ó���ϴ� ��Ʈ�ѷ�
	private static final long serialVersionUID = 1L;
    public MemberCtrl() {
        super();
    }

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");

    	String requestUri = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String command = requestUri.substring(contextPath.length());
    	
    	System.out.println("command  : " + command);

    	ActionForward forward = null;
    	Action action = null;

    	switch (command) {
    		case "/proc.mem" :
    			action = new MemberProcAct();
    			break;
    		case "/mypage.mem" :
    			action = new MemberUpdateAct();
    			break;
//    		case "/proc.mem" :
//    			action = new MemberProcAct();
//    			break;
    		case "/join_form.mem" :
    			action = new JoinFormAct();
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
