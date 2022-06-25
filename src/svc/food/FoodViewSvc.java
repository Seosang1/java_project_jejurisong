package svc.food;

import static db.JdbcUtil.*;
import java.util.*;
import java.sql.*;
import dao.food.*;
import dao.tour.TourDao;
import dao.*;
import vo.*;

public class FoodViewSvc { 
	
	public FoodInfo getFoodInfo(String id) {
		FoodInfo foodInfo = null; 
		Connection conn = getConnection();
		FoodDao foodDao = FoodDao.getInstance();
		foodDao.setConnection(conn);
		foodInfo = foodDao.getFoodInfo(id);
		close(conn);

		return foodInfo;
	} 
	
	public int getFoodCount(String where) {
		int rcnt = 0;
		Connection conn = getConnection();
		FoodDao foodDao = FoodDao.getInstance();

		foodDao.setConnection(conn);

		rcnt = foodDao.getCount(where);

		close(conn);

		return rcnt;

	} 
	
	public ArrayList<FoodInfo> getFoodReplyList(String where, String orderBy, int cpage, int psize) {

		ArrayList<FoodInfo> list = new ArrayList<FoodInfo>();
		Connection conn = getConnection();
		FoodDao foodDao = FoodDao.getInstance(); 
		foodDao.setConnection(conn);
		list = foodDao.getList(where, orderBy, cpage, psize);
		close(conn);

		return list;
	}
 
}
