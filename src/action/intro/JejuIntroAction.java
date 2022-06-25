package action.intro;

import javax.servlet.http.*;

import vo.*; 

public class JejuIntroAction implements action.Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		ActionForward forward = new ActionForward(); 
		forward.setPath("intro/jeju_intro.jsp");

		return forward;
	}

}
