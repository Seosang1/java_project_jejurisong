package action.admin.food;
 
import javax.servlet.http.*; 
import java.io.PrintWriter;
import java.util.*;  
import svc.food.*; 
import vo.*; 
 
/**
 * ���� ������ �̵�
 * �� ���� ������ �ѷ����� ���·� ����¡, �˻�����, �ڵ尪�� �̿��� ������ 1�� �� �����͸� ����
 * @author sorakim
 *
 */
public class FoodUpFormAdminAct implements action.Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		FoodInfo foodInfo = new FoodInfo();
		Common common = new Common();
		
		request.setCharacterEncoding("utf-8");
 
		String food_code = request.getParameter("food_code");
		int cpage = 1, psize = 10, bsize = 10, spage, epage, rcnt, pcnt;
		if (request.getParameter("cpage") != null)
			cpage = Integer.parseInt(request.getParameter("cpage"));
		if (request.getParameter("psize") != null)
			psize = Integer.parseInt(request.getParameter("psize"));
		
		// �˻�����(����, ��������, ���¿���, ���ڸ�) ������Ʈ��
		String area, type, open_yn, name, where = ""; 
		HashMap<String, String> schargs = new HashMap<String, String>();
		
		area	= request.getParameter("sl_area") ;		// ���� 
		type	= request.getParameter("sl_type");		// ����
		open_yn	= request.getParameter("sl_open_yn");	// ���¿���
		name	= request.getParameter("txt_name");		// �̸�

		System.out.println("cpage["+cpage+"] bsize[" + bsize + "] area["+area+"] type["+type+"] open_yn["+open_yn+"] name["+name+"]");
		
		// �˻� ���ǿ� ���� where�� ���� 
		if (!common.isEmpty(area)) { 
			schargs.put("area", area);
		} 
		if (!common.isEmpty(type)) { 
			schargs.put("type", type); 
		} 
		if (!common.isEmpty(open_yn)) { 
			schargs.put("open_yn", open_yn);
		} 
		if (!common.isEmpty(name)) { 
			schargs.put("name", name);
		} 
		     
		// ----- ���� ���� 1�� �������� �κ� ----- 
		FoodListAdminSvc foodListAdminSvc = new FoodListAdminSvc();
		foodInfo = foodListAdminSvc.getSelectOne(food_code);
		    
		request.setAttribute("foodInfo", foodInfo); 
		request.setAttribute("menuPage", "food"); 
		
	    ActionForward forward = new ActionForward();
	    forward.setPath("/admin/food/food_up_form.jsp"); 

	    return forward;
	}
	      
}
