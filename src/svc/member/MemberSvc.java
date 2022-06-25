package svc.member;

import static db.JdbcUtil.*;
import java.util.*;
import java.sql.*;
import dao.*; 
import vo.*;
 
import dao.member.*;
import dao.tour.TourDao;

public class MemberSvc {

	public int getCount(String where) {
		int rcnt = 0;
		Connection conn = getConnection();
		MemberDao dao = MemberDao.getInstance();

		dao.setConnection(conn);

		rcnt = dao.getCount(where);

		close(conn);

		return rcnt;

	}

	public ArrayList<MemberInfo> getList(String where, String orderBy, int cpage, int psize) {

		ArrayList<MemberInfo> list = new ArrayList<MemberInfo>();
		Connection conn = getConnection();
		MemberDao dao = MemberDao.getInstance();
		dao.setConnection(conn);
		list = dao.getList(where, orderBy, cpage, psize);
		close(conn);

		return list;
	}

	public MemberInfo getSelectOne(String where) {

		MemberInfo info = null;
		Connection conn = getConnection();
		MemberDao dao = MemberDao.getInstance();
		dao.setConnection(conn);
		info = dao.getSelectOne(where);
		close(conn);

		return info;
	}

	public HashMap<String, String> delete(String whereInDel, String regId) {

		HashMap<String, String> ret = new HashMap<String, String>();

		Connection conn = getConnection();
		TourDao dao = TourDao.getInstance();
		dao.setConnection(conn);

		ret = dao.delete(whereInDel, regId);

		if (ret.get("result").equals("success"))
			commit(conn);
		else
			rollback(conn);

		close(conn);

		return ret;
	}
	
	public ChartAgeInfo getAges() {

		Connection conn = getConnection();
		MemberDao dao = MemberDao.getInstance();
		dao.setConnection(conn);
		ChartAgeInfo ageInfo = dao.getAges();
		close(conn);

		
		return ageInfo;
	}
 
}
