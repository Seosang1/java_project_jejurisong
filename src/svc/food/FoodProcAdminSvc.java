package svc.food;

import static db.JdbcUtil.*;
import java.util.*; 
import dao.food.*;  
import java.sql.*; 
import vo.*;

public class FoodProcAdminSvc {

	/**
	 * 호텔 코드 생성 
	 * @return
	 */
	public String getFoodCode() {
		Connection conn = getConnection();
		FoodAdminDao foodAdminDao = FoodAdminDao.getInstance();
		foodAdminDao.setConnection(conn);

		String food_code = foodAdminDao.getFoodCode(); 
		
		close(conn);

		return food_code;
	}
	
	/**
	 * 호텔정보 저장
	 * @param foodInfo
	 * @return
	 */
	public int insert(FoodInfo foodInfo) {
		int result = 0;
		Connection conn = getConnection();
		FoodAdminDao foodAdminDao = FoodAdminDao.getInstance();
		foodAdminDao.setConnection(conn);

		result = foodAdminDao.insert(foodInfo);

		if (result > 0) commit(conn); 
		else rollback(conn);  
		
		close(conn);

		return result;
	}


	public HashMap<String, String> delete(String whereInDel, String foodRegId) {

		System.out.println("------FoodDelAdminSVC-----");
		
		HashMap<String, String> ret = new HashMap<String, String>();

		Connection conn = getConnection();
		FoodAdminDao foodAdminDao = FoodAdminDao.getInstance();
		foodAdminDao.setConnection(conn);

		ret = foodAdminDao.delete(whereInDel, foodRegId);

		if (ret.get("result").equals("success")) commit(conn);  
		else rollback(conn);  
		
		close(conn);

		return ret;
	}

	public int update(FoodInfo foodInfo) {

		int result = 0;
		Connection conn = getConnection();
		FoodAdminDao foodAdminDao = FoodAdminDao.getInstance();
		foodAdminDao.setConnection(conn);
		 
		result = foodAdminDao.update(foodInfo);	 

		if (result > 0) commit(conn); 
		else rollback(conn);  
		
		close(conn);

		return result;
	}

}
