package ctrl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.intro.JejuIntroAction;
import action.question.QuestionAction;
import vo.ActionForward;

@WebServlet("*.qst")
public class QuestionCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public QuestionCtrl() {
		super();
	}

    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	

		request.setCharacterEncoding("utf-8");

		String requestUri 	= request.getRequestURI();
   		System.out.println("requestUri : " + requestUri);
   		// URI(�룄硫붿씤怨� 荑쇰━ �뒪�듃留곸쓣 類� 二쇱냼 臾몄옄�뿴) : /mvcSite/brd_list.ntc
   		
   		String contextPath 	= request.getContextPath();
   		System.out.println("contextPath : " + contextPath);
   		// URI�뿉�꽌 �뙆�씪紐� 遺�遺꾩쓣 �젣�쇅�븳 臾몄옄�뿴 :  /mvcSite
   		
   		String command 		= requestUri.substring(contextPath.length());
   		System.out.println("command : " + command);
   		// 濡쒓렇�띁吏� ..log4j**
   		// requestUri�뿉�꽌 contextPath瑜� 類� 臾몄옄�뿴 :  /brd_list.ntc
   	
   		ActionForward forward = null;	// 泥섎━ �썑 �씠�룞�븷 view�뿉 �빐�떦�븯�뒗 留곹겕�� �씠�룞諛⑹떇�쓣 �뼸湲� �쐞�븳 �씤�뒪�꽩�뒪
   		Action action = null;			// 湲곕뒫 蹂꾨줈 泥섎━�븷 �븣 �룞�씪�븳 硫붿냼�뱶濡� �옉�뾽�븯湲� �쐞�빐 �꽑�뼵�맂 �씤�뒪�꽩�뒪
   										// �씤�꽣�럹�씠�뒪�씠誘�濡� �씤�뒪�꽩�뒪瑜� �깮�꽦�븷 �닔�뒗 �뾾�쓬
   	
   		// �궗�슜�옄�쓽 �슂泥��뿉 �뵲�씪 媛곴린 �떎瑜� action�쓣 �옉�뾽
		switch (command) {
			case "/question_form.qst":
				action = new QuestionAction(); 
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

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

}
