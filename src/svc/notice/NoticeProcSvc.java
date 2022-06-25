package svc.notice;

import static db.JdbcUtil.*;
import java.util.*;
import java.sql.*;
import dao.*;
import dao.notice.*;
import vo.*;

public class NoticeProcSvc {
	public int noticeInsert(NoticeInfo noticeInfo) {
		int result = 0;
		Connection conn = getConnection();
		NoticeBrdDao noticeBrdDao = NoticeBrdDao.getInstance();
		noticeBrdDao.setConnection(conn);
		result = noticeBrdDao.noticeInsert(noticeInfo);

		if (result >= 1)	commit(conn);
		else				rollback(conn);
		close(conn);

		return result;
	}
}

