package ctrl.admin;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import action.*;
import action.admin.hotel.*;
import vo.*;

@WebServlet("*.rooma")
public class RoomAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public RoomAdminController() {
        super();
        // TODO Auto-generated constructor stub
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
        	case "/admin/room_list.rooma" :	 	// ����Ʈ
        		action =  new RoomListAdminAct();
        		break;    
        	case "/admin/room_form.rooma" :		// ��� ��
        		action =  new RoomFormAdminAct();
        		break;  
        	case "/admin/room_proc.rooma" :		// ��� ó��
        		action =  new RoomProcAdminAct();
        		break;    
        	case "/admin/room_del.rooma" :		// ����ó��
        		action =  new RoomDelAdminAct();
        		break;    
        	case "/admin/room_view.rooma" :		// �󼼺��� 
        		action =  new RoomUpFormAdminAct();
        		break;
        	case "/admin/room_up_proc.rooma" :	// ���� ó�� 
        		action =  new RoomUpProcAdminAct();
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
