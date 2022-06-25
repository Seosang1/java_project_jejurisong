package svc.food;

import static db.JdbcUtil.*;
import java.util.*;
import java.sql.*;
import vo.*;
import dao.food.*;

public class FoodSvc {

	public int getCount(String where) {
		int rcnt = 0;
		Connection conn = getConnection();
		FoodDao dao = FoodDao.getInstance();

		dao.setConnection(conn);

		rcnt = dao.getCount(where);

		close(conn);

		return rcnt;

	}
	
	public FoodInfo getFoodInfo(String id) {
		FoodInfo foodInfo = null; 
		Connection conn = getConnection();
		FoodDao foodDao = FoodDao.getInstance();
		foodDao.setConnection(conn);
		foodInfo = foodDao.getFoodInfo(id);
		close(conn);

		return foodInfo;
	} 

	public ArrayList<FoodInfo> getList(String where, String orderBy, int cpage, int psize) {

		ArrayList<FoodInfo> list = new ArrayList<FoodInfo>();
		Connection conn = getConnection();
		FoodDao dao = FoodDao.getInstance();
		dao.setConnection(conn);
		list = dao.getList(where, orderBy, cpage, psize);
		close(conn);

		return list; 
	}

	public FoodInfo getSelectOne(String where) {

		FoodInfo info = null;
		Connection conn = getConnection();
		FoodDao dao = FoodDao.getInstance();
		dao.setConnection(conn);
		info = dao.getSelectOne(where);
		close(conn);

		return info;
	}

	public String getCode() {
		Connection conn = getConnection();
		FoodDao dao = FoodDao.getInstance();
		dao.setConnection(conn);

		String food_code = dao.getCode();

		close(conn);

		return food_code;
	}

	/**
	 * 호텔정보 저장
	 * 
	 * @param info
	 * @return
	 */
	public int insert(FoodInfo info) {
		int result = 0;
		Connection conn = getConnection();
		FoodDao dao = FoodDao.getInstance();
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
		FoodDao dao = FoodDao.getInstance();
		dao.setConnection(conn);

		ret = dao.delete(whereInDel, regId);

		if (ret.get("result").equals("success"))
			commit(conn);
		else
			rollback(conn);

		close(conn);

		return ret;
	}

	public int update(FoodInfo info) {

		int result = 0;
		Connection conn = getConnection();
		FoodDao dao = FoodDao.getInstance();
		dao.setConnection(conn);

		result = dao.update(info);

		if (result > 0)
			commit(conn);
		else
			rollback(conn);

		close(conn);

		return result;
	}

	public FoodInfo getTop(int i) {
		FoodInfo foodInfo = null;
		Connection conn = getConnection();
		FoodDao dao = FoodDao.getInstance();
		dao.setConnection(conn);
		foodInfo = dao.getTop(i);
		close(conn);

		return foodInfo; 
	}
}
