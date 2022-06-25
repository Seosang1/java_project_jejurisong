package svc.tour;

import static db.JdbcUtil.*;
import java.util.*;
import java.sql.*;
import dao.*;
import dao.food.FoodDao;
import vo.*;

import dao.tour.*;

public class TourSvc {

	public int getCount(String where) {
		int rcnt = 0;
		Connection conn = getConnection();
		TourDao dao = TourDao.getInstance();

		dao.setConnection(conn);

		rcnt = dao.getCount(where);

		close(conn);

		return rcnt;

	}

	public ArrayList<TourInfo> getList(String where, String orderBy, int cpage, int psize) {

		ArrayList<TourInfo> list = new ArrayList<TourInfo>();
		Connection conn = getConnection();
		TourDao dao = TourDao.getInstance();
		dao.setConnection(conn);
		list = dao.getList(where, orderBy, cpage, psize);
		close(conn);

		return list;
	}

	public TourInfo getSelectOne(String where) {

		TourInfo info = null;
		Connection conn = getConnection();
		TourDao dao = TourDao.getInstance();
		dao.setConnection(conn);
		info = dao.getSelectOne(where);
		close(conn);

		return info;
	}

	public String getCode() {
		Connection conn = getConnection();
		TourDao dao = TourDao.getInstance();
		dao.setConnection(conn);

		String tour_code = dao.getCode();

		close(conn);

		return tour_code;
	}

	/**
	 * 호텔정보 저장
	 * 
	 * @param info
	 * @return
	 */
	public int insert(TourInfo info) {
		int result = 0;
		Connection conn = getConnection();
		TourDao dao = TourDao.getInstance();
		dao.setConnection(conn);

		result = dao.insert(info);

		if (result > 0)
			commit(conn);
		else
			rollback(conn);

		close(conn);

		return result;
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

	public int update(TourInfo info) {

		int result = 0;
		Connection conn = getConnection();
		TourDao dao = TourDao.getInstance();
		dao.setConnection(conn);

		result = dao.update(info);

		if (result > 0)
			commit(conn);
		else
			rollback(conn);

		close(conn);

		return result;
	}

	public TourInfo getTop(int i) {
		TourInfo toodInfo = null;
		Connection conn = getConnection();
		TourDao dao = TourDao.getInstance();
		dao.setConnection(conn);
		toodInfo = dao.getTop(i);
		close(conn);

		return toodInfo; 
	}
}
