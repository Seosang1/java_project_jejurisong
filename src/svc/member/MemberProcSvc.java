package svc.member;


import static db.JdbcUtil.*;
import java.util.*;
import java.sql.*;
import dao.member.*;
import vo.*;

public class MemberProcSvc {
	public int memberProc(MemberInfo memberInfo, String wtype) {
	// ?��?�� �??�� �? ?��?��?�� ?��?�� DB?���? �? 쿼리 ?��?�� 메소?���? ?��출하?�� 메소?��
		int result = 0;
		Connection conn = getConnection();
		MemberDao memberDao = MemberDao.getInstance();
		memberDao.setConnection(conn);
		if (wtype.equals("in")) {
			result = memberDao.memberJoin(memberInfo);
		} else if (wtype.equals("up")) {
			result = memberDao.memberUpdate(memberInfo);
		}

		if (result > 0)	commit(conn);	// 추�??�� ?��코드(�??��?�� ?��?��)�? ?��?���? 쿼리�? ?��?��?��?��
		else				rollback(conn);	// 추�??�� ?��코드�? ?��?���?(?��?�� �??�� ?��?��) ?��?��??�? ?���?
		close(conn);

		return result;
	}
	
	public int memberDelete(String miid) {
	// ?��?�� ?��?���? ?��?�� DB?���? �? 쿼리 ?��?�� 메소?���? ?��출하?�� 메소?��
		int result = 0;
		Connection conn = getConnection();
		MemberDao memberDao = MemberDao.getInstance();
		memberDao.setConnection(conn);
		result = memberDao.memberDelete(miid);

		if (result == 1)	commit(conn);	// �?경된 ?��코드(?��?�� ?��?�� ?���?)�? ?��?���? 쿼리�? ?��?��?��?��
		else				rollback(conn);	// �?경된 ?��코드(?��?�� ?��?�� ?��?��)�? ?��?���? ?��?��??�? ?���?
		close(conn);

		return result;
	}
}
