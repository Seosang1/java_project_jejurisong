package ctrl.admin;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import action.*;
import action.admin.tour.TourReplyDelAdminAct;
import action.admin.tour.TourReplyListAdminAct;
import action.admin.tour.*;
import vo.*;


@WebServlet("*.toura")
public class TourAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TourAdminController() {
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
    	case "/admin/tour_list.toura" :	 	// 투어 리스트
    		action =  new TourListAdminAct();
    		break;    
    	case "/admin/tour_form.toura" :		// 투어 등록 폼
    		action =  new TourFormAdminAct();
    		break;  
    	case "/admin/tour_proc.toura" :		// 투어 등록 처리
    		action =  new TourProcAdminAct();
    		break;    
    	case "/admin/tour_del.toura" :		// 투어 삭제 처리
    		action =  new TourDelAdminAct();
    		break;    
    	case "/admin/tour_view.toura" :		// 투어 상세보기(수정폼) 
    		action =  new TourUpFormAdminAct();
    		break;
    	case "/admin/tour_up_proc.toura" :	// 투어 수정 처리
    		action =  new TourUpProcAdminAct();
    		break;  

    	case "/admin/tour_reply_list.toura" :	 	// 투어 후기 리스트 
    		action =  new TourReplyListAdminAct();
    		break;     
    	case "/admin/tour_reply_del.toura" :		// 투어 후기 삭제
    		action =  new TourReplyDelAdminAct();
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
