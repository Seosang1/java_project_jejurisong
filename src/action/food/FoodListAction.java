package action.food;

import javax.servlet.http.*;
import java.util.*;
import java.io.*;
import svc.food.*;
import vo.*;
import java.util.HashMap;

public class FoodListAction implements action.Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArrayList<FoodInfo> foodList = new ArrayList<FoodInfo>();

		request.setCharacterEncoding("utf-8");

		Common comm = new Common();
		HashMap<String, String> schargs = new HashMap<String, String>(); 
		String food_type, food_area, area_qry="", type_qry="";

		String btnMap	= request.getParameter("btnMap");
		food_type	= request.getParameter("food_type");		 
		food_area	= request.getParameter("food_area");	
		// �˻� ���ǿ� ���� where�� ���� 
		if (!comm.isEmpty(food_type)) {
			type_qry = "&food_type=" + food_type;
			schargs.put("food_type", food_type);
		}  
		if (!comm.isEmpty(food_area)) {
			area_qry = "&food_area=" + food_area;
			schargs.put("food_area", food_area);
			schargs.put("btnMap", "on");
		}  
		 
		
		
		
		int cpage = 1, psize = 9, bsize = 10, spage, epage, rcnt, pcnt;
		
		
		
		
		if (request.getParameter("cpage") != null)
			cpage = Integer.parseInt(request.getParameter("cpage"));

		String isview = request.getParameter("isview"); // �Խÿ���(y, n)
		String keyword = request.getParameter("keyword"); // �˻���
		String area = food_area; // ��������
		String where = ""; // �˻�� ���� ��쿡�� ���� ��
		if (request.getParameter("psize") != null)
			psize = Integer.parseInt(request.getParameter("psize"));

		// ������ ���� üũ�ڽ� ���� �޾ƿ� �������� �˻��Ǵ� ������Ʈ��
		String[] chk = request.getParameterValues("chk");
		String fdType = "";
		// �˻� ���ǿ� ���� where�� ����
		if (chk != null) {
			for (int i = 0; i < chk.length; i++) {
				fdType += ",'" + chk[i] + "'";
			}
			where += "where food_isview = 'y' and food_type in ( " + fdType.substring(1) + ")";
		} else {
			where += "where food_isview = 'y'";
		}

		if (keyword != null) { // �˻�� ���� ��쿡�� where�� ����
			where += "and food_name like '%" + keyword.trim() + "%' ";
			// System.out.println("key : " + keyword);
		} else {
			keyword = "";
		}

		// ��������(���-��(�⺻), ����-��, ��-��, ����-��) ������Ʈ��
		String ord = request.getParameter("ord");
		System.out.println(">>>ord : " + ord);
		if (ord == null || ord.equals(""))
			ord = "coded"; // ��� �������� ������ �⺻��
		String orderBy = " order by food_" + ord.substring(0, ord.length() - 1)
				+ (ord.charAt(ord.length() - 1) == 'a' ? " asc" : " desc");
		System.out.println("���Ĺ� : " + orderBy);
		// �������ǿ� ���� order by�� ����

		// �Ķ���ͷ� ���� ���� �߰� url����
		String pmOrder = "";
		String pmArea = "";

		if (!isEmpty(ord)) { // ����
			pmOrder = "&ord=" + ord;

			if (!isEmpty(area)) { // ����
				pmArea += "&area=" + area;
				where += " and food_area = '" + area + "' ";
			}
		}

		System.out.println("pmArea : " + pmArea + "- pmOrder : " + pmOrder);

		FoodSvc foodListSvc = new FoodSvc();
		// �� ������(cpage)���� ������ �˻��� ��ǰ����� �޾ƿ�
		rcnt = foodListSvc.getCount(where);
		foodList = foodListSvc.getList(where, orderBy, cpage, psize);

		pcnt = rcnt / psize;
		if (rcnt % psize > 0)
			pcnt++; // ��ü ������ ��
		spage = (cpage - 1) / bsize * bsize + 1; // ����� ���� ������ ��ȣ
		epage = spage + bsize - 1;
		if (epage > pcnt)
			epage = pcnt; // ����� ���� ������ ��ȣ

		PageInfo pageInfo = new PageInfo(); // ����¡�� �ʿ��� �������� ������ �ν��Ͻ�
		// ����¡�� �ʿ��� ������
		pageInfo.setCpage(cpage); // ���� ������ ��ȣ
		pageInfo.setRcnt(rcnt); // ��ü �Խñ� ����
		pageInfo.setPcnt(pcnt); // ��ü ������ ����
		pageInfo.setSpage(spage); // ��� ���� ������ ��ȣ
		pageInfo.setEpage(epage); // ��� ���� ������ ��ȣ
		pageInfo.setPsize(psize); // ������ ũ��
		pageInfo.setBsize(bsize); // ��� ũ��

		// �˻����� ������
		pageInfo.setKeyword(keyword); // �˻��� (��ȣ��)
		pageInfo.setOrd(ord); // ��������
		pageInfo.setArea(area);

		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("foodList", foodList);
		request.setAttribute("pmOrder", pmOrder);
		request.setAttribute("pmArea", pmArea);
		// request.setAttribute("args", args);
		

		request.setAttribute("schargs", schargs);
		request.setAttribute("type_qry", type_qry);
		request.setAttribute("area_qry", area_qry);
		request.setAttribute("btnMap", btnMap);

		ActionForward forward = new ActionForward();
		forward.setPath("food/food_list.jsp");

		return forward;
	}

	private boolean isEmpty(String str) { // �Ű������� � ���̵� ��� �ִ��� ���θ� �˻��ϴ� �޼ҵ�
		boolean empty = true;
		if (str != null && !str.equals(""))
			empty = false;
		return empty;
	}

}
