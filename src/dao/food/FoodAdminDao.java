package dao.food;

import static db.JdbcUtil.*;
import java.util.*;
import javax.sql.*;
import java.sql.*;
import vo.*;

public class FoodAdminDao {
	private static FoodAdminDao foodAdminDao;
	private Connection conn;

	private FoodAdminDao() { }

	public static FoodAdminDao getInstance() {
		if (foodAdminDao == null)
			foodAdminDao = new FoodAdminDao();
		return foodAdminDao;
	}

	public void setConnection(Connection conn) {
		this.conn = conn;
	}
 
	public int getFoodCount(String where) {
		
		Statement stmt = null;
		ResultSet rs = null;
		int rcnt = 0;

		try {
			String sql = "select count(*) from t_food_info " + where;
			System.out.println("[A] getFoodCount : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next())
				rcnt = rs.getInt(1);
		} catch (Exception e) {
			System.out.println("[A] getFoodCount() Error");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return rcnt;
	}
 
	public ArrayList<FoodInfo> getFoodList(String where, String orderBy, int cpage, int psize) {
		
		ArrayList<FoodInfo> foodList = new ArrayList<FoodInfo>();
		Statement stmt = null;
		ResultSet rs = null;
		FoodInfo FoodInfo = null;
		int snum = (cpage - 1) * psize;

		try {
			 
			String sql = "select * from t_food_info group by food_code " 
					+ where + orderBy + " limit " + snum + ", " + psize;
			System.out.println("[A] getFoodList : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				FoodInfo = new FoodInfo();

				FoodInfo.setFood_idx(rs.getInt("food_idx"));
				FoodInfo.setFood_code(rs.getString("food_code")); 
				FoodInfo.setFood_area(rs.getString("food_area"));
				FoodInfo.setFood_type(rs.getString("food_type"));
				FoodInfo.setFood_name(rs.getString("food_name"));
				FoodInfo.setFood_addr(rs.getString("food_addr"));
				FoodInfo.setFood_zip(rs.getString("food_zip"));
				FoodInfo.setFood_tel(rs.getString("food_tel"));
				FoodInfo.setFood_detail(rs.getString("food_detail"));
				FoodInfo.setFood_open(rs.getString("food_open"));
				FoodInfo.setFood_close(rs.getString("food_close"));
				FoodInfo.setFood_park_yn(rs.getString("food_park_yn"));
				FoodInfo.setFood_img1(rs.getString("food_img1"));
				FoodInfo.setFood_img2(rs.getString("food_img2"));
				FoodInfo.setFood_img3(rs.getString("food_img3"));
				FoodInfo.setFood_desc(rs.getString("food_desc"));
				FoodInfo.setFood_score(rs.getDouble("food_score"));
				FoodInfo.setFood_review_cnt(rs.getInt("food_review_cnt"));
				FoodInfo.setFood_open_yn(rs.getString("food_open_yn"));
				FoodInfo.setFood_reg_date(rs.getString("food_reg_date"));
				FoodInfo.setFood_reg_id(rs.getString("food_reg_id"));
				FoodInfo.setFood_del_yn(rs.getString("food_del_yn"));
				FoodInfo.setFood_del_date(rs.getString("food_del_date"));
				FoodInfo.setFood_del_id(rs.getString("food_del_id"));  
				
				foodList.add(FoodInfo); 
			}
		} catch (Exception e) {
			System.out.println("[A] getFoodList() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return foodList;
	}

	/**
	 * ?��?��코드 ?��?��
	 * @return
	 */
	public String getFoodCode() {

		Statement stmt = null;
		ResultSet rs = null;
		String food_code = "";

		try {
			String sql = "select max(food_code) from t_food_info order by food_idx desc limit 1";
			System.out.println("[A] getFoodCode : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next())
				food_code = rs.getString(1);
		} catch (Exception e) {
			System.out.println("[A] get getFoodCode() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		if (food_code == null || food_code.equals("") || food_code.equals("null")) {
			food_code = "F0001";
		}  else {
			food_code = "F" + String.format("%04d", (Integer.parseInt(food_code.substring(1)) + 1));
			System.out.println("FoodCode : " + food_code);
		} 

		return food_code;
			
	}
	
	/** 
	 * ?��?��?���? ???��
	 * @param foodInfo
	 * @return
	 */
	public int insert(FoodInfo foodInfo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String food_code = "";
		
		try {
			String sql = "INSERT INTO jejurisong.t_food_info"  
					+ " (food_code, food_area, food_type, food_name, food_addr, food_zip, "
					+ " food_tel, food_detail, food_open, food_close, food_park_yn, "
					+ " food_img1, food_img2, food_img3, food_desc, food_open_yn, food_reg_id) " 
					+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString(1, foodInfo.getFood_code()); 
			pstmt.setString(2, foodInfo.getFood_area());
			pstmt.setString(3, foodInfo.getFood_type());
			pstmt.setString(4, foodInfo.getFood_name());
			pstmt.setString(5, foodInfo.getFood_addr());
			pstmt.setString(6, foodInfo.getFood_zip());
			pstmt.setString(7, foodInfo.getFood_tel());
			pstmt.setString(8, foodInfo.getFood_detail());
			pstmt.setString(9, foodInfo.getFood_open());
			pstmt.setString(10, foodInfo.getFood_close());
			pstmt.setString(11, foodInfo.getFood_park_yn());
			pstmt.setString(12, foodInfo.getFood_img1());
			pstmt.setString(13, foodInfo.getFood_img2());
			pstmt.setString(14, foodInfo.getFood_img3());
			pstmt.setString(15, foodInfo.getFood_desc());
			pstmt.setString(16, foodInfo.getFood_open_yn());
			pstmt.setString(17, foodInfo.getFood_reg_id()); 

			System.out.println("food insert : " + pstmt);
			
			result = pstmt.executeUpdate(); 
			
		} catch(Exception e) {
			System.out.println("insert() Fail");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	
	/**
	 * ?��?��?���? ?��?�� (?��?��?��?�� 처리)
	 * @param whereInDel
	 * @param foodRegId
	 * @return
	 */
	public HashMap<String, String> delete(String whereInDel, String foodRegId) { 
		
		HashMap<String, String> ret = new HashMap<String, String>();

		Statement stmt = null;
		ResultSet rs = null;
		
		int rcnt = 0;
		int result = 0;  
		
		try {
			// ?��?��?�� ?��?��?��?�� �? ?��보�? ?��?���? ?��?�� 
			String sql = "select count(*) from t_room_info " + 
					" where food_code in (" + whereInDel + ") ";
			System.out.println(" * Has Room Check : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next())
				rcnt = rs.getInt(1);
			
			// �? ?��보�? ?��?���? ?��?��(?��?��?��?��) 처리
			// ?��?��?��?�� ?�� ?�� ?��?��?��보도 종료처리 
			if ( rcnt == 0 ) {
				sql  = " update t_food_info set " +
						" food_del_yn ='y', " +
						" food_open_yn ='n', " +
						" food_del_date = now(), " + 
						" food_del_id = '" + foodRegId + "'" + 
						" where food_code in (" + whereInDel + ") ";
				System.out.println(" * Delete Food : " + sql);
				stmt = conn.createStatement();
				result = stmt.executeUpdate(sql);
				
				if (result > 0) {
					ret.put("result", "success");
					ret.put("msg", "?��?��처리�? ?��료되?��?��?��?��.");
				} else {
					ret.put("result", "fail"); 
					ret.put("msg", "?��?��처리�? ?��?��?��?��?��?��?��. ?��?�� ?��?��?��주세?��.");
				} 
			} else {
				ret.put("result", "fail"); 
				ret.put("msg", "?��록된 �? ?��보�? ?��?��?��?��.\\n?��록된 �? ?��보�? ?��?���? ?��?��?�� ?�� ?��?��?��?��.");
			} 
			
		} catch(Exception e) {
			System.out.println("!!! FoodAdminDao Delete Error !!!");
			
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return ret ;
	}

	public FoodInfo getInfo(String food_code) {
		// �??��?�� id?�� ?��?��?��?�� ?��?�� ?��?�� ?��보�?? productInfo?�� ?��?��?��?���? 리턴?��?�� 메소?��
				FoodInfo info = null;
				Statement stmt = null;
				ResultSet rs = null;

				try {
					String sql = "select * from t_food_info where  food_code = '" + food_code + "' ";
					System.out.println("getinfo >>" + sql);
					stmt = conn.createStatement();
					rs = stmt.executeQuery(sql);
					if (rs.next()) {
						info = new FoodInfo();

						info.setFood_idx(rs.getInt("food_idx"));
						info.setFood_code(rs.getString("food_code")); 
						info.setFood_area(rs.getString("food_area"));
						info.setFood_type(rs.getString("food_type"));
						info.setFood_name(rs.getString("food_name"));
						info.setFood_addr(rs.getString("food_addr"));
						info.setFood_zip(rs.getString("food_zip"));
						info.setFood_tel(rs.getString("food_tel"));
						info.setFood_detail(rs.getString("food_detail"));
						info.setFood_open(rs.getString("food_open"));
						info.setFood_close(rs.getString("food_close"));
						info.setFood_park_yn(rs.getString("food_park_yn"));
						info.setFood_img1(rs.getString("food_img1"));
						info.setFood_img2(rs.getString("food_img2"));
						info.setFood_img3(rs.getString("food_img3"));
						info.setFood_desc(rs.getString("food_desc"));
						info.setFood_score(rs.getDouble("food_score"));
						info.setFood_review_cnt(rs.getInt("food_review_cnt"));
						info.setFood_open_yn(rs.getString("food_open_yn")); 

						info.setFood_reg_date(rs.getString("food_reg_date")); 
						info.setFood_reg_id(rs.getString("food_reg_id"));  
						info.setFood_del_yn(rs.getString("food_del_yn")); 
						info.setFood_del_date(rs.getString("food_del_date")); 
						info.setFood_del_id(rs.getString("food_del_id"));  
					}
				} catch (Exception e) {
					System.out.println("getinfo() 메소?�� ?���?");
					e.printStackTrace();
				} finally {
					close(rs);
					close(stmt);
				}

				return info;
	}

	public int update(FoodInfo info) {

		int result = 0;
		Statement stmt = null;
		
		try {
			String sql  = "update t_food_info set " +
					" food_area = '" + info.getFood_area() + "', " + 
					" food_type = '" + info.getFood_type() + "', " + 
					" food_name = '" + info.getFood_name() + "', " + 
					" food_addr = '" + info.getFood_addr() + "', " + 
					" food_zip = '" + info.getFood_zip() + "', " + 
					" food_tel = '" + info.getFood_tel() + "', " + 
					" food_detail = '" + info.getFood_detail() + "', " + 
					" food_open = '" + info.getFood_open() + "', " + 
					" food_close = '" + info.getFood_close() + "', " + 
					" food_park_yn = '" + info.getFood_park_yn() + "', " + 
					" food_img1 = '" + info.getFood_img1() + "', " + 
					" food_img2 = '" + info.getFood_img2() + "', " + 
					" food_img3 = '" + info.getFood_img3() + "', " + 
					" food_desc = '" + info.getFood_desc() + "', " + 
					" food_open_yn = '" + info.getFood_open_yn() + "' " + 
					" where food_code = '" + info.getFood_code() + "'";
			System.out.println("update sql >> " + sql);
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);
			
		} catch(Exception e) {
			System.out.println("update() 메소?�� ?���?");
			e.printStackTrace();
		} finally {
			close(stmt);
		}

		return result;
	}

}
