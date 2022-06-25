package svc.member;


import static db.JdbcUtil.*;
import java.sql.*;
import dao.*;
import dao.member.DupIDDao;
import vo.*;

public class DupIDSvc {
	public int chkDupID(String uid) {
		DupIDDao dupIDDao = DupIDDao.getInstance();
		Connection conn = getConnection();
		dupIDDao.setConnection(conn);
		int chkPoint = dupIDDao.chkDupID(uid);
		close(conn);

		return chkPoint;
	}
}
