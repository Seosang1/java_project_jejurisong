package svc.tour;

import static db.JdbcUtil.*;
import java.util.*;
import java.sql.*;
import vo.*;

import dao.tour.*;

public class TourReplySvc {

	public int getCount(String where) {
		int rcnt = 0;
		Connection conn = getConnection();
		TourReplyDao dao = TourReplyDao.getInstance();

		dao.setConnection(conn);

		rcnt = dao.getCount(where);

		close(conn);

		return rcnt;

	}

	public ArrayList<ReplyInfo> getList(String where, String orderBy, int cpage, int psize) {

		ArrayList<ReplyInfo> list = new ArrayList<ReplyInfo>();
		Connection conn = getConnection();
		TourReplyDao dao = TourReplyDao.getInstance();
		dao.setConnection(conn);
		list = dao.getList(where, orderBy, cpage, psize);
		close(conn);

		return list;
	}
	
	public ReplyInfo getSelectOne(String code) {

		ReplyInfo info = null;
		Connection conn = getConnection();
		TourReplyDao dao = TourReplyDao.getInstance();
		dao.setConnection(conn);
		info = dao.getSelectOne(code);
		close(conn);

		return info;
	}
	


	/**
	 * 정보 저장
	 * 
	 * @param replyInfo
	 * @return
	 */
	public int insert(ReplyInfo replyInfo) {
		int result = 0;
		Connection conn = getConnection();
		TourReplyDao dao = TourReplyDao.getInstance();
		dao.setConnection(conn);

		result = dao.insert(replyInfo);

		if (result > 0)
			commit(conn);
		else
			rollback(conn);

		close(conn);

		return result;
	}


	public int delete(String whereInDel, String del_id) {

		Connection conn = getConnection();
		TourReplyDao dao = TourReplyDao.getInstance();
		dao.setConnection(conn);

		int result = dao.delete(whereInDel, del_id);

		if (result > 0)
			commit(conn);
		else
			rollback(conn);

		close(conn);

		return result;
	}

}
