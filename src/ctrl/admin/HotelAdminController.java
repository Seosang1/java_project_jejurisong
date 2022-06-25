package ctrl.admin;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import action.*;
import action.admin.hotel.*;
import vo.*;


@WebServlet("*.hotela")
public class HotelAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HotelAdminController() {
        super();
    }

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
        
        String requestUri    = request.getRequestURI();        
        String contextPath    = request.getContextPath();       
        String command       = requestUri.substring(contextPath.length());

        System.out.println("requestUri : " + requestUri); 
   		System.out.println("contextPath : " + contextPath); 
   		System.out.println("command : " + command);
        
        ActionForward forward = null;
        Action action = null; 
        
        switch (command) {
    	case "/admin/hotel_list.hotela" :	 	// ���� ����Ʈ
    		action =  new HotelListAdminAct();
    		break;    
    	case "/admin/hotel_form.hotela" :		// ���� ��� ��
    		action =  new HotelFormAdminAct();
    		break;  
    	case "/admin/hotel_proc.hotela" :		// ���� ��� ó��
    		action =  new HotelProcAdminAct();
    		break;    
    	case "/admin/hotel_del.hotela" :		// ���� ���� ó��
    		action =  new HotelDelAdminAct();
    		break;    
    	case "/admin/hotel_view.hotela" :		// ���� �󼼺���(������) 
    		action =  new HotelUpFormAdminAct();
    		break;
    	case "/admin/hotel_up_proc.hotela" :	// ���� ���� ó��
    		action =  new HotelUpProcAdminAct();
    		break;
    	case "/admin/hotel_list_pop.hotela" :	// ���� ����Ʈ �˾�
    		action =  new HotelListPopupAdminAct();
    		break;

    	case "/admin/hotel_reply_list.hotela" :	 	// ���� �ı� ����Ʈ 
    		action =  new HotelReplyListAdminAct();
    		break;     
    	case "/admin/hotel_reply_del.hotela" :		// ���� �ı� ����
    		action =  new HotelReplyDelAdminAct();
    		break;  
        }
        
        try {
           forward = action.execute(request, response);
        } catch (Exception e) {
           e.printStackTrace();
        }
        
        if (forward != null) {
              if (forward.isRedirect()) {
                 response.sendRedirect(forward.getPath());
              } else {
                 RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
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
