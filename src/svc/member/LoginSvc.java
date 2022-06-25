package svc.member;


import static db.JdbcUtil.*;
// db?��?���? ?��?�� JdbcUtil ?��?��?���? �?�? 모든 멤버?��?�� ?��?���?�? ?��?��?��겠다?�� ?���?
import java.sql.*;
import dao.login.*;
import vo.*;

public class LoginSvc {
	// �α��ο� ���� ó���۾��� DB�� ������ ��� ó���� �ϴ� Ŭ����
	public MemberInfo getLoginMember(String uid, String pwd) {
		// ����ڰ� �Է��� ���̵�� ��й�ȣ�� �Ű������� �޾� �α����� ó���ϴ� �޼ҵ�� MemberInfo�� �ν��Ͻ��� ����� ����
		LoginDao loginDao = LoginDao.getInstance();
		// �α����� DB�۾��� ���� LoginDao�� �ν��Ͻ� loginDao�� ����
		Connection conn = getConnection();
		// JdbcUtil Ŭ������ getConnection()�޼ҵ�� Connection ��ü conn ����
		loginDao.setConnection(conn);
		// loginDao�ν��Ͻ����� ����� Connection ��ü ����

		MemberInfo loginMember = loginDao.getLoginMember(uid, pwd);
		// loginDao �ν��Ͻ��� getLoginMember() �޼ҵ带 �����Ű�� 
		// �� ����� MemberInfo �� �ν��Ͻ� loginMember �� ����

		close(conn);

		return loginMember;
	}
}
