package action.admin.food;

import javax.servlet.http.*; 
import java.io.PrintWriter;
import java.util.*;  
import svc.food.*; 
import vo.*;

public class FoodDelAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("------FoodDelAdminAct-----");
		
		request.setCharacterEncoding("utf-8");

				
		/** Form Parameter VO setting **/  
		if (request.getParameter("arrCheck") == null || request.getParameter("arrCheck").equals("")) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('������ ���� ������ �����Ͽ����ϴ�.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		
		// ���� ������ �ڵ� in ���� ���� ó���ϴ� �κ� 
		String[] arrDelCode = request.getParameter("arrCheck").split(",");
		String whereInDel = "";
		for (int i = 0; i < arrDelCode.length; i++) {
			whereInDel += ", '" + arrDelCode[i] + "'";
		} 
		whereInDel = whereInDel.substring(1);
       
		/** Admin id getter **/
		String foodRegId = "sa";
		System.out.println("������ ���̵� : " + foodRegId); 
		
		 
		/** ����&��� ����� �������� �κ� **/ 
		FoodProcAdminSvc foodProcAdminSvc = new FoodProcAdminSvc(); 

		HashMap<String, String> ret = foodProcAdminSvc.delete(whereInDel, foodRegId);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('" + ret.get("msg") + "');");
		out.println("history.back();");
		out.println("</script>");

		System.out.println("result : " + ret.get("result"));
		System.out.println("msg : " + ret.get("msg"));
		
		// ���н� ������ �̵� ���� 
		if (ret.get("result").equals("fail")) out.close();
		
		/** ������ �̵� **/
		ActionForward forward = new ActionForward();  
		forward.setRedirect(true);	// redirect ������� �̵��ϵ��� ����
	    forward.setPath("/jejurisong/admin/food_list.fooda");

	    return forward;
	}
	      
}
