package ctrl;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import action.*;
import action.mypage.*;
import vo.*;

@WebServlet("*.mypage")
public class MypageCtrl extends HttpServlet {
// �뜝�럩�뤂�뜝�럩�쐸占쎄슈�뜝�룞�삕占쎌죨 �뜝�럩�굚�뜝�럥�뵜(�뤆�룊�삕�뜝�럩肉�, �뜝�럩�젧�솻洹ｋ샍占쎈빢�뜝�럩�젧, �뜝�럡�돮�뜝�럥�떄)�뜝�럩諭� 嶺뚳퐣瑗띰옙遊뷴뜝�럥由��뜝�럥裕� 占쎈슓維귨옙諭쒎슖�뼯�걞占쎌몠
	private static final long serialVersionUID = 1L;
    public MypageCtrl() {
        super();
    }

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");

    	String requestUri = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String command = requestUri.substring(contextPath.length());
    		
    	System.out.println("command : " + command);
    	ActionForward forward = null;
    	Action action = null;

    	switch (command) {
    		case "/mypage_rv.mypage" : 					// 예약내역
    			action = new MypageRvListAct();	
    			break;  
    			
    		case "/mypage_rv_view.mypage": 				// 예약 상세	
    			action = new MypageRvViewAct();	
    			break;  

    		case "/mypage_rp_hotel.mypage" : 			// 숙박 후기
    			action = new MypageRpHotelListAct();	
    			break;  
    			
    		case "/mypage_rp_tour.mypage" :				// 여행지 후기 						
    			action = new MypageRpTourListAct();	
    			break;  
    			
    		case "/mypage_rp_food.mypage" :				// 음식점 후기 						
    			action = new MypageRpFoodListAct();	
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
