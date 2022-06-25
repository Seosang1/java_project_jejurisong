package svc.notice;

import static db.JdbcUtil.*;
import java.util.*;
import java.sql.*;
import dao.*;
import dao.notice.*;
import vo.*;

public class NoticeViewSvc {
	public NoticeInfo getNoticeInfo(int bnidx) {
		NoticeInfo noticeInfo = null;
		Connection conn = getConnection();
		NoticeBrdDao noticeBrdDao = NoticeBrdDao.getInstance();
		noticeBrdDao.setConnection(conn);
		
		int result = noticeBrdDao.readCountUp(bnidx);	
		if (result > 0)	commit(conn);	
		else			rollback(conn);	
		
		noticeInfo = noticeBrdDao.getNoticeInfo(bnidx);
		close(conn);
		return noticeInfo;
	}
}
