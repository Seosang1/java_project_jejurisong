package action.mypage;

import javax.servlet.*;
import javax.servlet.http.*;

import action.Action;

import java.io.PrintWriter;
import java.util.*;

import svc.hotel.*;
import svc.mypage.*;
import vo.*;

public class MypageRpFoodListAct implements Action {
//  
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, Exception {
		request.setCharacterEncoding("utf-8"); 
		
		HttpSession session = request.getSession(); 
		MemberInfo loginMember = (MemberInfo) session.getAttribute("loginMember");
		if (loginMember == null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			String referer = (String)request.getHeader("REFERER");
			out.println("<script>");
			out.println("alert('로그인 후 이용 가능합니다.');");
			out.println("location.href='login_form.jsp?url="+referer+"';");
			out.println("</script>");
			out.close();
		}

		String where = "";
		String orderBy = "";
		
		/* 예약 총 건수 */
		ReserveSvc listAdminSvc = new ReserveSvc(); 
		where = " where mem_id = '" + loginMember.getMi_id() +"' and rv_state = 'a' ";
		int rv_total_cnt = listAdminSvc.getCount(where);

		/* 후기 총 건수 */
		MypageReplySvc mypageReplySvc = new MypageReplySvc();
		where = " where mi_id = '" + loginMember.getMi_id() +"' and reply_del_yn = 'n' ";
		int rp_total_cnt = mypageReplySvc.getCount(where); 
		
		/* 숙박 후기 건수 */ 
		HotelReplySvc replySvc = new HotelReplySvc();
		where = " where reply_type='A' and mi_id = '" + loginMember.getMi_id() +"' and reply_del_yn = 'n' ";
		int rp_hotel_tot_cnt = mypageReplySvc.getCount(where);	

		/* 여행지 후기 건수 */ 
		where = " where reply_type='T' and mi_id = '" + loginMember.getMi_id() +"' and reply_del_yn = 'n' ";
		int rp_tour_tot_cnt = mypageReplySvc.getCount(where);	

		/* Food 후기 건수 */ 
		where = " where reply_type='F' and mi_id = '" + loginMember.getMi_id() +"' and reply_del_yn = 'n' ";
		int rp_food_tot_cnt = mypageReplySvc.getCount(where);	
		
		/** ==================================================================================== **/
 
		/* 숙박 후기 */ 
		where = " where reply_type='F' and mi_id = '" + loginMember.getMi_id() +"' and reply_del_yn = 'n' ";
		ArrayList<ReplyInfo> rp_list = mypageReplySvc.getFoodReplyList(where, "", 0, -1);	
		  
		  
		request.setAttribute("rv_total_cnt", rv_total_cnt);				// 예약 건수 전체
		request.setAttribute("rp_total_cnt", rp_total_cnt); 			// 후기 건수 전체
		request.setAttribute("rp_hotel_tot_cnt", rp_hotel_tot_cnt); 	// 호텔 후기 건수
		request.setAttribute("rp_tour_tot_cnt", rp_tour_tot_cnt); 		// 여행지  후기 건수
		request.setAttribute("rp_food_tot_cnt", rp_food_tot_cnt); 		// 식당 후기 건수
		request.setAttribute("rp_list", rp_list);						// 음식 후기 리스트
		request.setAttribute("nowPage", "mypage_rp_food.mypage");		// 현재 페이지
		 
		ActionForward forward = new ActionForward();
		forward.setPath("/mypage/mypage_rp_food.jsp"); 
		
		return forward;
	} 

}