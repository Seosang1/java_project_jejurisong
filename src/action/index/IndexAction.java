package action.index;

import javax.servlet.http.*;

import svc.food.FoodSvc;
import svc.hotel.HotelSvc;
import svc.tour.TourSvc;
import vo.*; 

public class IndexAction implements action.Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");


		TourSvc tourSvc = new TourSvc();
		TourInfo tourInfo = tourSvc.getTop(1);
		
		HotelSvc hotelSvc = new HotelSvc();
		HotelInfo hotelInfo = hotelSvc.getTop(1);
		// 

		FoodSvc foodSvc = new FoodSvc();
		FoodInfo foodInfo = foodSvc.getTop(1);
		


		request.setAttribute("tourInfo", tourInfo);	// ������ �� �ѹ� 1
		request.setAttribute("hotelInfo", hotelInfo);	// ȣ�� �� �ѹ� 1 
		request.setAttribute("foodInfo", foodInfo);	// ������ �� �ѹ� 1
		request.setAttribute("test", "test");	// ������ �� �ѹ� 1
		
		ActionForward forward = new ActionForward();
		forward.setPath("/index.jsp"); 

		return forward;
	}

}
