package action.member;

import javax.servlet.http.*;
import vo.*;

public class MemberUpdateAct implements action.Action {
// ȸ�� ���� ���� ���� url�� �����ִ� Ŭ����
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		forward.setPath("/member/mypage_form.jsp");

		return forward;
	}
}
