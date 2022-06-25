package action.admin.main;

import java.util.ArrayList;

import javax.servlet.http.*;

import svc.hotel.*;
import svc.member.*;
import svc.mypage.*;
import svc.chart.*;
import vo.*; 

public class MainAdminAct implements action.Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
 
		/** ��� �Ǽ� ���̾ƿ� **/
		String where = "";
		String orderBy = "";
		
		/* ���� �� �Ǽ� */
		ReserveSvc listAdminSvc = new ReserveSvc(); 
		where = " where rv_state = 'a' ";
		int rv_total_cnt = listAdminSvc.getCount(where);
		
		/* �ı� �� �Ǽ� */
		MypageReplySvc mypageReplySvc = new MypageReplySvc();
		
		/* ���� �ı� �Ǽ� */ 
		HotelReplySvc replySvc = new HotelReplySvc();
		where = " where reply_type='A' and reply_del_yn = 'n' ";
		int rp_hotel_tot_cnt = mypageReplySvc.getCount(where);	

		/* ������ �ı� �Ǽ� */ 
		where = " where reply_type='T' and reply_del_yn = 'n' ";
		int rp_tour_tot_cnt = mypageReplySvc.getCount(where);	

		/* Food �ı� �Ǽ� */ 
		where = " where reply_type='F' and reply_del_yn = 'n' ";
		int rp_food_tot_cnt = mypageReplySvc.getCount(where);	
		
		/** ==================================================================================== **/

		/* ��Ʈ ���� ������ */
		MemberSvc memberSvc = new MemberSvc();
		ChartAgeInfo ageInfo = memberSvc.getAges();
 
		ChartSvc chartSvc = new ChartSvc();
		ArrayList<ChartReplyInfo> chartHotelReplyList= chartSvc.getChartReplCnt('A');
		ArrayList<ChartReplyInfo> chartTourReplyList= chartSvc.getChartReplCnt('T');
		ArrayList<ChartReplyInfo> chartFoodReplyList= chartSvc.getChartReplCnt('F');
		
		  
		request.setAttribute("rv_total_cnt", rv_total_cnt);				// ���� �Ǽ� ��ü
		request.setAttribute("rp_hotel_tot_cnt", rp_hotel_tot_cnt); 	// ȣ�� �ı� �Ǽ�
		request.setAttribute("rp_tour_tot_cnt", rp_tour_tot_cnt); 		// ������  �ı� �Ǽ�
		request.setAttribute("rp_food_tot_cnt", rp_food_tot_cnt); 		// �Ĵ� �ı� �Ǽ�

		request.setAttribute("ageInfo", ageInfo); 		// chart- age
		request.setAttribute("chartHotelReplyList", chartHotelReplyList); 		 
		request.setAttribute("chartTourReplyList", chartTourReplyList); 		 
		request.setAttribute("chartFoodReplyList", chartFoodReplyList); 		
		
		
		
		request.setAttribute("menuPage", "main");
		
		ActionForward forward = new ActionForward(); 
	    forward.setPath("/admin/main/main.jsp");
		return forward;
	}

}
