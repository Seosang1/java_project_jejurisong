package action.member;

import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import svc.hotel.RoomSvc;
import vo.ActionForward;
import vo.Common;
import vo.MemberInfo;
import vo.RoomInfo;

public class JoinFormAct implements action.Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
 
		ActionForward forward = new ActionForward(); 
		forward.setPath("member/join_form.jsp");

		return forward;
	}

}
