package ctrl;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import action.*; 
import action.tour.*;
import vo.*;

@WebServlet("*.tour")
public class TourController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// ������� ��û�� get�̵� post�� ��� ó���ϴ� �޼ҵ�
   		request.setCharacterEncoding("utf-8");

   		
   		// ***** �ش� ��û�� �����ϱ� ���� url�� �߶� *****
   		String requestUri 	= request.getRequestURI();
   		System.out.println("requestUri : " + requestUri);
   		// URI(�����ΰ� ���� ��Ʈ���� �� �ּ� ���ڿ�) : /mvcSite/brd_list.ntc
   		
   		String contextPath 	= request.getContextPath();
   		System.out.println("contextPath : " + contextPath);
   		// URI���� ���ϸ� �κ��� ������ ���ڿ� :  /mvcSite
   		
   		String command 		= requestUri.substring(contextPath.length());
   		System.out.println("command : " + command);
   		// �α����� ..log4j**
   		// requestUri���� contextPath�� �� ���ڿ� :  /brd_list.ntc
   	
   		ActionForward forward = null;	// ó�� �� �̵��� view�� �ش��ϴ� ��ũ�� �̵������ ��� ���� �ν��Ͻ�
   		Action action = null;			// ��� ���� ó���� �� ������ �޼ҵ�� �۾��ϱ� ���� ����� �ν��Ͻ�
   										// �������̽��̹Ƿ� �ν��Ͻ��� ������ ���� ����
   	
   		// ������� ��û�� ���� ���� �ٸ� action�� �۾�
		switch (command) {
			case "/tour_list.tour":
				action = new TourListAction(); 
				break;

			case "/tour_view.tour":
				action = new TourViewAction(); 
				break;
				
			case "/tour_reply_form.tour":
				action = new TourReplyFormAction(); 
				break;
				
			case "/tour_reply_proc.tour":
				action = new TourReplyProcAction(); 
				break;
				
			case "/tour_reply_del.tour":
				action = new TourReplyDelAction(); 
				break;
		}

		try {
			forward = action.execute(request, response);
			// �� ��û�� ���� Action�� implements�� Ŭ������ execute() �޼ҵ带 ����
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
				// RequestDispatcher �� ���� �̵���Ű�� �̵��� �������� URL�� ������ �ʰ�,
				// �̵��� �������� ���� ������ �ִ� request�� response ��ü�� �״�� �Ѱ���
			}
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

}
