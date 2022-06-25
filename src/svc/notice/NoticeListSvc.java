package svc.notice;

import static db.JdbcUtil.*;
import java.util.*;
import java.sql.*;
import dao.*;
import dao.notice.*;
import vo.*;

public class NoticeListSvc {
	public int getNoticeCount(String where) {
		int rcnt = 0;	
		Connection conn = getConnection();
		NoticeBrdDao noticeBrdDao = NoticeBrdDao.getInstance();
		noticeBrdDao.setConnection(conn);
		rcnt = noticeBrdDao.getNoticeCount(where);

		close(conn);

		return rcnt;
	}

	public ArrayList<NoticeInfo> getNoticeList(String where, int cpage, int psize) {
		ArrayList<NoticeInfo> noticeList = null;
		Connection conn = getConnection();
		NoticeBrdDao noticeBrdDao = NoticeBrdDao.getInstance();
		noticeBrdDao.setConnection(conn);
		noticeList = noticeBrdDao.getNoticeList(where, cpage, psize);

		close(conn);

		return noticeList;
	}
}
