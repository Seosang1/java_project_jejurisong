package action.question;

import javax.servlet.http.*;

import vo.*;

public class QuestionAction implements action.Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		System.out.println("question : action");
		ActionForward forward = new ActionForward(); 
		forward.setPath("/question/question_form.jsp");

		return forward;
	}

}
