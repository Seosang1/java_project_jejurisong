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
		// 검색 조건에 따른 where절 생성 
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

		String isview = request.getParameter("isview"); // 게시여부(y, n)
		String keyword = request.getParameter("keyword"); // 검색어
		String area = food_area; // 지역구분
		String where = ""; // 검색어가 있을 경우에만 값이 들어감
		if (request.getParameter("psize") != null)
			psize = Integer.parseInt(request.getParameter("psize"));

		// 음식점 필터 체크박스 값을 받아와 유형별로 검색되는 쿼리스트링
		String[] chk = request.getParameterValues("chk");
		String fdType = "";
		// 검색 조건에 따른 where절 생성
		if (chk != null) {
			for (int i = 0; i < chk.length; i++) {
				fdType += ",'" + chk[i] + "'";
			}
			where += "where food_isview = 'y' and food_type in ( " + fdType.substring(1) + ")";
		} else {
			where += "where food_isview = 'y'";
		}

		if (keyword != null) { // 검색어가 있을 경우에만 where절 생성
			where += "and food_name like '%" + keyword.trim() + "%' ";
			// System.out.println("key : " + keyword);
		} else {
			keyword = "";
		}

		// 정렬조건(등록-내(기본), 리뷰-내, 찜-내, 별점-내) 쿼리스트링
		String ord = request.getParameter("ord");
		System.out.println(">>>ord : " + ord);
		if (ord == null || ord.equals(""))
			ord = "coded"; // 등록 역순으로 정렬이 기본값
		String orderBy = " order by food_" + ord.substring(0, ord.length() - 1)
				+ (ord.charAt(ord.length() - 1) == 'a' ? " asc" : " desc");
		System.out.println("정렬문 : " + orderBy);
		// 정렬조건에 따른 order by절 생성

		// 파라미터로 받은 값들 추가 url생성
		String pmOrder = "";
		String pmArea = "";

		if (!isEmpty(ord)) { // 정렬
			pmOrder = "&ord=" + ord;

			if (!isEmpty(area)) { // 지역
				pmArea += "&area=" + area;
				where += " and food_area = '" + area + "' ";
			}
		}

		System.out.println("pmArea : " + pmArea + "- pmOrder : " + pmOrder);

		FoodSvc foodListSvc = new FoodSvc();
		// 현 페이지(cpage)에서 보여줄 검색된 상품목록을 받아옴
		rcnt = foodListSvc.getCount(where);
		foodList = foodListSvc.getList(where, orderBy, cpage, psize);

		pcnt = rcnt / psize;
		if (rcnt % psize > 0)
			pcnt++; // 전체 페이지 수
		spage = (cpage - 1) / bsize * bsize + 1; // 블록의 시작 페이지 번호
		epage = spage + bsize - 1;
		if (epage > pcnt)
			epage = pcnt; // 블록의 종료 페이지 번호

		PageInfo pageInfo = new PageInfo(); // 페이징에 필요한 정보들을 저장할 인스턴스
		// 페이징에 필요한 정보들
		pageInfo.setCpage(cpage); // 현재 페이지 번호
		pageInfo.setRcnt(rcnt); // 전체 게시글 개수
		pageInfo.setPcnt(pcnt); // 전체 페이지 개수
		pageInfo.setSpage(spage); // 블록 시작 페이지 번호
		pageInfo.setEpage(epage); // 블록 종료 페이지 번호
		pageInfo.setPsize(psize); // 페이지 크기
		pageInfo.setBsize(bsize); // 블록 크기

		// 검색관련 정보들
		pageInfo.setKeyword(keyword); // 검색어 (상호명)
		pageInfo.setOrd(ord); // 정렬조건
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

	private boolean isEmpty(String str) { // 매개변수에 어떤 값이든 들어 있는지 여부를 검사하는 메소드
		boolean empty = true;
		if (str != null && !str.equals(""))
			empty = false;
		return empty;
	}

}
