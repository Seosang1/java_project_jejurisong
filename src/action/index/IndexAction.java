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
		


		request.setAttribute("tourInfo", tourInfo);	// 여행지 중 넘버 1
		request.setAttribute("hotelInfo", hotelInfo);	// 호텔 중 넘버 1 
		request.setAttribute("foodInfo", foodInfo);	// 음식점 중 넘버 1
		request.setAttribute("test", "test");	// 음식점 중 넘버 1
		
		ActionForward forward = new ActionForward();
		forward.setPath("/index.jsp"); 

		return forward;
	}

}
