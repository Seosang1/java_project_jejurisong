package ctrl;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import svc.*;
import svc.member.LoginSvc;
import vo.*;

@WebServlet("/login")
public class LoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginCtrl() {
		super();
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String uid = request.getParameter("uid");
		String pwd = request.getParameter("pwd");
		String url = request.getParameter("url");
		if (url.equals(""))	url = "index.do";
		
		LoginSvc loginSvc = new LoginSvc();

		MemberInfo loginMember = loginSvc.getLoginMember(uid, pwd);

		HttpSession session = request.getSession();

		session.setMaxInactiveInterval(60 * 60); // 60 x 60珥� = 60遺� = 1�떆

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		if (loginMember != null) {
			session.setAttribute("loginMember", loginMember);
			response.sendRedirect(url);
		} else {
			out.println("<script>");
			out.println("alert('로그인 정보를 확인하세요.');");
			out.println("history.back();");
			out.println("</script>");
		}
	}
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
}