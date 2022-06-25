package svc.food;

import static db.JdbcUtil.*;
import java.util.*;
import java.sql.*;
import dao.food.*; 
import vo.*;
 

public class FoodListAdminSvc { 
	
	public int getCount(String where) { 
		int rcnt = 0; 
		Connection conn = getConnection(); 
		FoodAdminDao foodAdminDao = FoodAdminDao.getInstance();

		foodAdminDao.setConnection(conn);

		rcnt = foodAdminDao.getFoodCount(where);

		close(conn);

		return rcnt;
		
	}
	
	public ArrayList<FoodInfo> getList(String where, String orderBy, int cpage, int psize) {

		ArrayList<FoodInfo> list = new ArrayList<FoodInfo>();
		Connection conn = getConnection();
		FoodAdminDao foodAdminDao = FoodAdminDao.getInstance();
		foodAdminDao.setConnection(conn);
		list = foodAdminDao.getFoodList(where, orderBy, cpage, psize);
		close(conn);
		
		return list;
	}

	public FoodInfo getSelectOne(String food_code) {

	      FoodInfo info = null;
	      Connection conn = getConnection();
	      FoodAdminDao foodAdminDao = FoodAdminDao.getInstance();
	      foodAdminDao.setConnection(conn); 
	      info = foodAdminDao.getInfo(food_code); 
	      close(conn);

	      return info;
	}
	
}
