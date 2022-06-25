package ctrl;
 
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*; 

import action.*;
import action.food.*;
import action.hotel.HotelViewAction; 
import vo.*; 

@WebServlet("*.food")
public class FoodController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
  
    public FoodController() {
        super(); 
    }

   	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		// ������� ��û�� get�̵� post�� ��� ó���ϴ� �޼ҵ�
   		request.setCharacterEncoding("utf-8");
   		
   		String requestUri 	= request.getRequestURI();
   		System.out.println("requestUri : " + requestUri);
   		
   		String contextPath 	= request.getContextPath();
   		System.out.println("contextPath : " + contextPath);
   		
   		String command 		= requestUri.substring(contextPath.length());
   		System.out.println("command : " + command);
   	
   		ActionForward forward = null;	
   		Action action = null;			
   	
   		// ������� ��û�� ���� ���� �ٸ� action�� �۾�
   		switch (command) {
		case "/food_list.food":		// ������ ����Ʈ 
			action = new FoodListAction(); 
			break;   	
		case "/food_view.food": // ȣ�� �󼼺���
			action = new FoodViewAction(); 
			break;  
		case "/food_reply_form.food":
			action = new FoodReplyFormAction(); 
			break;
		case "/food_reply_proc.food":
			action = new FoodReplyProcAction(); 
			break;
			
		case "/food_reply_del.food":
			action = new FoodReplyDelAction(); 
			break;  
		}
   		 
   		try {
   			forward = action.execute(request, response);
   			//�� ��û�� ���� Action�� implements�� Ŭ������  execute() �޼ҵ带 ����
   		} catch(Exception e) {
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
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
//		String one = request.getParameterValues("chk")[0];
//
//		PrintWriter out = response.getWriter();
//		System.out.println("chk : " + one);
	}

}
 
