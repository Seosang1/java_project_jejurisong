package action.member;

import javax.servlet.http.*;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import java.util.*;
import java.io.*;
import svc.member.*;
import vo.*;

public class MemberProcAct implements action.Action { 
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");

		/** Image Upload Setting **/
		String urlPath = this.getClass().getResource("").getPath();     
		String imgUrl  = urlPath.substring(0, urlPath.indexOf(".metadata"));
		String uploadPath = imgUrl + "jejurisong/WebContent/common/images/memberImg";
		//System.out.println("updalodPath : " + uploadPath);  // 내 workspace 기준의 파일경로 찾아오는 프로세스
		int maxSize = 5 * 1024 * 1024;						// 업로드 최대용량은 5MB로 지정 
		 
		//uploadPath = "D:/project/jejurisong/WebContent/common/images/HotelImg";
		System.out.println("updalodPath : " + uploadPath);  // 내 workspace 기준의 파일경로 찾아오는 프로세스
		
		MultipartRequest multi = new MultipartRequest(
				request, 	// multi객체로 multi인스턴스로 전송된 데이터들을 받기 위함
				uploadPath, // 서버에 실제로 파일이 저장될 위치 지정
				maxSize, 	// 한 번에 업로드할 수 있는 최대크기 지정(byte단위)
				"utf-8", 	// 파일의 인코딩 방식
				new DefaultFileRenamePolicy());	// 파일 이름의 중복 처리
		
		Enumeration files = multi.getFileNames();

		String mi_pic = "";
		while (files.hasMoreElements()) {
			String f = (String)files.nextElement();
			switch (f) {
				case "mi_pic" : mi_pic = multi.getFilesystemName(f);	break; 
			}
		} 
		
		String wtype = multi.getParameter("wtype");	// 媛��엯, �닔�젙, �깉�눜 �뿬遺�瑜� 援щ텇吏볥뒗 媛�
		MemberInfo memberInfo = null;
		HttpSession session = request.getSession();
		// JSP媛� �븘�땲誘�濡� session �씤�뒪�꽩�뒪瑜� 吏곸젒 �깮�꽦�빐�빞 �븿
		MemberInfo tmpMember = (MemberInfo)session.getAttribute("loginMember");

		if (wtype.equals("in") || wtype.equals("up")) {
		// �쁽�옱 泥섎━�븯�뒗 �옉�뾽�씠 �쉶�썝 媛��엯�씠�굹 �젙蹂� �닔�젙�씪 寃쎌슦(�궗�슜�옄媛� �엯�젰/�닔�젙�븳 �뜲�씠�꽣�뱾�쓣 諛쏆븘���빞 �븿)
			memberInfo = new MemberInfo();	// �엯�젰 �삉�뒗 �닔�젙�븷 �쉶�썝�젙蹂대뱾�쓣 �떞�쓣 �씤�뒪�꽩�뒪 �깮�꽦
			if (wtype.equals("in")) {

				memberInfo.setMi_name(multi.getParameter("mi_name").trim());
				memberInfo.setMi_birth(multi.getParameter("mi_birth"));
				memberInfo.setMi_gender(multi.getParameter("mi_gender"));
				// �닔�젙�떆�뿉�뒗 諛쏆븘�삤吏� �븡�뒗 媛��엯�쟾�슜 �뜲�씠�꽣�뱾

				memberInfo.setMi_id(multi.getParameter("mi_id").trim().toLowerCase());
				memberInfo.setMa_zip(multi.getParameter("ma_zip"));
				memberInfo.setMa_addr1(multi.getParameter("ma_addr1"));
				memberInfo.setMa_addr2(multi.getParameter("ma_addr2").trim());
				
				// �쉶�썝 媛��엯�떆 湲곕낯二쇱냼�뿉 ���븳 �젙蹂대룄 媛숈씠 諛쏆븘�샂
			} else {
				memberInfo.setMi_id(tmpMember.getMi_id());
				// �젙蹂� �닔�젙�씪 寃쎌슦 濡쒓렇�씤 �릺�뼱 �엳�뒗 �씤�뒪�꽩�뒪�뿉�꽌 �쉶�썝ID �젙蹂대�� 媛��졇�샂
				// �젙蹂� �닔�젙�뿉�꽌�뒗 二쇱냼瑜� 蹂�寃쏀븯吏� �븡怨� 二쇱냼濡� 愿�由ъ뿉�꽌 二쇱냼 �닔�젙�쓣 泥섎━�븿

				// �젙蹂� �닔�젙�씪 寃쎌슦 �엯�젰諛쏆� �씠�쟾 鍮꾨�踰덊샇瑜� 鍮꾧탳�븿
				if (!tmpMember.getMi_pwd().equals(multi.getParameter("old_pwd"))) {
					response.setContentType("text/html; charset=utf-8");
					PrintWriter out = response.getWriter();
					out.println("<script>");
					out.println("alert('비밀번호가 맞지 않습니다. 다시 확인해주세요.');");
					out.println("history.back();");
					out.println("</script>");
					out.close();
				}
			}
			memberInfo.setMi_pwd(multi.getParameter("mi_pwd").trim());
			memberInfo.setMi_phone(multi.getParameter("mi_phone"));
			memberInfo.setMi_email(multi.getParameter("mi_email"));
			memberInfo.setMi_issns(multi.getParameter("mi_issns"));
			memberInfo.setMi_ismail(multi.getParameter("mi_ismail"));

			memberInfo.setMi_pic(mi_pic);
			// �궗�슜�옄媛� �엯�젰�븳 �뜲�씠�꽣�뱾�쓣 MemberInfo�삎 �씤�뒪�꽩�뒪�뿉 ���옣
		}

		MemberProcSvc memberProcSvc = new MemberProcSvc();
		int result = 0;
		String lnk = "index.do"; 
		switch (wtype) {
			case "in" : 
				result = memberProcSvc.memberProc(memberInfo, wtype);
				lnk = "login_form.jsp";
				break;
			case "up" :		// �젙蹂� �닔�젙�씤 寃쎌슦
				result = memberProcSvc.memberProc(memberInfo, wtype);
				lnk = "mypage.mem";
				if (!memberInfo.getMi_pwd().equals("")) {
				// 鍮꾨�踰덊샇瑜� 蹂�寃쏀븷 寃쎌슦 湲곗〈�쓽 濡쒓렇�씤 �젙蹂댁뿉 �엳�뒗 鍮꾨�踰덊샇瑜� �깉 鍮꾨�踰덊샇濡� 蹂�寃�
					tmpMember.setMi_pwd(memberInfo.getMi_pwd());
				}
				tmpMember.setMi_phone(memberInfo.getMi_phone());
				tmpMember.setMi_email(memberInfo.getMi_email());
				tmpMember.setMi_issns(memberInfo.getMi_issns());
				tmpMember.setMi_ismail(memberInfo.getMi_ismail());
				tmpMember.setMi_pic(memberInfo.getMi_pic());
				break;
			case "del" :	// �쉶�썝 �깉�눜�씤 寃쎌슦
				result = memberProcSvc.memberDelete(tmpMember.getMi_id());
				lnk = "logout.do";
				break;
		}

		ActionForward forward = new ActionForward();
		forward.setRedirect(true);	// dispatch媛� �븘�땶 sendRedirect 諛⑹떇�쑝濡� �씠�룞
		forward.setPath(lnk);

		return forward;
	}
}