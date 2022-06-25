package dao.food;

import static db.JdbcUtil.*;
import java.util.*;
import javax.sql.*;
import java.sql.*;

import vo.*;

public class FoodDao {
	private static FoodDao foodDao;
	private Connection conn;

		private FoodDao() {}

		public static FoodDao getInstance() {
			if (foodDao == null)
				foodDao = new FoodDao();
			return foodDao;
		}

		public void setConnection(Connection conn) {
			System.out.println("[FoodDao]");
			this.conn = conn;
		} 
		
	public ArrayList<FoodInfo> getList(String where, String orderBy, int cpage, int psize) {
		
		ArrayList<FoodInfo> foodList = new ArrayList<FoodInfo>();
		Statement stmt = null;
		ResultSet rs = null;
		FoodInfo foodInfo = null;
		int snum = (cpage - 1) * psize;

		try {
			String sql = "select * from t_food_info " + where + orderBy + " limit "
					+ snum + ", " + psize;
			System.out.println("getList : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				// rs에 보여줄 상품이 있을 경우
				foodInfo = new FoodInfo();
				// foodList에 저장할 한 상품 정보를 담을 인스턴스 생성

				foodInfo.setFood_name(rs.getString("food_name")); 
				foodInfo.setFood_idx(rs.getInt("food_idx"));
				foodInfo.setFood_code(rs.getString("food_code")); 
				foodInfo.setFood_addr(rs.getString("food_addr"));
				foodInfo.setFood_zip(rs.getString("food_zip"));
				foodInfo.setFood_tel(rs.getString("food_tel"));
				foodInfo.setFood_type(rs.getString("food_type"));
				foodInfo.setFood_area(rs.getString("food_area")); 
				foodInfo.setFood_like(rs.getInt("food_like"));
				foodInfo.setFood_open(rs.getString("food_open"));
				foodInfo.setFood_close(rs.getString("food_close"));
				foodInfo.setFood_img1(rs.getString("food_img1"));	
				foodInfo.setFood_img2(rs.getString("food_img2"));
				foodInfo.setFood_img3(rs.getString("food_img3")); 
				foodInfo.setFood_desc(rs.getString("food_desc"));
				foodInfo.setFood_review_cnt(rs.getInt("food_review_cnt"));
				foodInfo.setFood_park_yn(rs.getString("food_park_yn"));
				foodInfo.setFood_open_yn(rs.getString("food_open_yn"));
				foodInfo.setFood_detail(rs.getString("food_detail"));
				foodInfo.setFood_isview(rs.getString("food_isview"));
				foodInfo.setFood_score(rs.getFloat("food_score"));
				foodInfo.setFood_reg_id(rs.getString("food_reg_id"));
				foodInfo.setFood_reg_date(rs.getString("food_reg_date"));
				foodInfo.setFood_isadd(rs.getString("food_isadd"));
				foodInfo.setFood_del_yn(rs.getString("food_del_yn"));
				foodInfo.setFood_del_id(rs.getString("food_del_id"));
				foodInfo.setFood_del_date(rs.getString("food_del_date"));
				foodList.add(foodInfo);
				// 한 게시글의 정보를 담은 noticeInfo 인스턴스를 articleList에 저장
			}
		} catch (Exception e) {
			System.out.println("getFoodList() 메소드 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return foodList;
	}  
	public FoodInfo getFoodInfo(String id) {
		// 지정한 id에 해당하는 특정 상품 정보를 productInfo형 인스턴스로 리턴하는 메소드
		FoodInfo foodInfo = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "select * from t_food_info where " +
				"food_code = '" + id + "' and (food_open_yn = 'y' or food_isview = 'y' or food_del_yn = 'n');";
			System.out.println("getFoodInfo >>" + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				foodInfo = new FoodInfo(); 
				foodInfo.setFood_name(rs.getString("food_name"));
				foodInfo.setFood_idx(rs.getInt("food_idx")); 
				foodInfo.setFood_code(rs.getString("food_code"));
				foodInfo.setFood_addr(rs.getString("food_addr"));
				foodInfo.setFood_zip(rs.getString("food_zip"));
				foodInfo.setFood_tel(rs.getString("food_tel"));
				foodInfo.setFood_type(rs.getString("food_type"));
				foodInfo.setFood_area(rs.getString("food_area"));
				foodInfo.setFood_like(rs.getInt("food_like"));
				foodInfo.setFood_open(rs.getString("food_open"));
				foodInfo.setFood_close(rs.getString("food_close"));  
				foodInfo.setFood_img1(rs.getString("food_img1"));
				foodInfo.setFood_img2(rs.getString("food_img2"));
				foodInfo.setFood_img3(rs.getString("food_img3"));
				foodInfo.setFood_desc(rs.getString("food_desc"));
				foodInfo.setFood_review_cnt(rs.getInt("food_review_cnt"));
				foodInfo.setFood_park_yn(rs.getString("food_park_yn"));
				foodInfo.setFood_open_yn(rs.getString("food_open_yn"));
				foodInfo.setFood_detail(rs.getString("food_detail"));  
				foodInfo.setFood_isview(rs.getString("food_isview"));   
 
				foodInfo.setFood_score(rs.getFloat("food_score")); 
				System.out.println("id  " + id);

			}
		} catch (Exception e) {
			System.out.println("getFoodInfo() 메소드 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return foodInfo; 
	}
	 

	 
	public int getCount(String where) {

		Statement stmt = null;
		ResultSet rs = null;
		int rcnt = 0;

		try {
			String sql = "select count(*) from t_food_info " + where;
			System.out.println("* getCount : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next())
				rcnt = rs.getInt(1);
		} catch (Exception e) {
			System.out.println("* getCount() Error");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return rcnt;
	}
	
	public FoodInfo getSelectOne(String where) {
		FoodInfo foodInfo = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "select * from t_food_info " + where;
			System.out.println("* getReplyInfo : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {				
			foodInfo = new FoodInfo();  

			foodInfo.setFood_name(rs.getString("food_name"));
			foodInfo.setFood_code(rs.getString("food_code"));
			foodInfo.setFood_idx(rs.getInt("food_idx"));
			foodInfo.setFood_addr(rs.getString("food_addr"));
			foodInfo.setFood_zip(rs.getString("food_zip"));
			foodInfo.setFood_tel(rs.getString("food_tel"));
			foodInfo.setFood_type(rs.getString("food_type"));
			foodInfo.setFood_area(rs.getString("food_area")); 
			foodInfo.setFood_like(rs.getInt("food_like"));
			foodInfo.setFood_open(rs.getString("food_open"));
			foodInfo.setFood_close(rs.getString("food_close"));
			foodInfo.setFood_img1(rs.getString("food_img1"));	
			foodInfo.setFood_img2(rs.getString("food_img2"));
			foodInfo.setFood_img3(rs.getString("food_img3")); 
			foodInfo.setFood_desc(rs.getString("food_desc"));
			foodInfo.setFood_review_cnt(rs.getInt("food_review_cnt"));
			foodInfo.setFood_park_yn(rs.getString("food_park_yn"));
			foodInfo.setFood_open_yn(rs.getString("food_open_yn"));
			foodInfo.setFood_detail(rs.getString("food_detail"));
			foodInfo.setFood_isview(rs.getString("food_isview"));
			foodInfo.setFood_score(rs.getFloat("food_score"));
 
			}
		} catch (Exception e) {
			System.out.println("* getFoodOne() 메소드 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return foodInfo;
	}
	public String getCode() {

		Statement stmt = null;
		ResultSet rs = null;
		String food_code = "";

		try {
			String sql = "select max(food_code) from t_food_info order by food_idx desc limit 1";
			System.out.println("*  getCode : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next())
				food_code = rs.getString(1);
		} catch (Exception e) {
			System.out.println("*  get getCode() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		if (food_code == null || food_code.equals("") || food_code.equals("null")) {
			food_code = "T0001";
		} else {
			food_code = "T" + String.format("%04d", (Integer.parseInt(food_code.substring(1)) + 1));
		}

		return food_code;

	}
 
	public int insert(FoodInfo info) {
		PreparedStatement pstmt = null;
		int result = 0;

		try {
			String sql = "INSERT INTO t_food_info"
					+ " (food_code, food_name, food_addr, food_type, food_area, food_detail, food_img1, food_img2, food_img3, food_desc ) "
					+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, info.getFood_code());
			pstmt.setString(2, info.getFood_name());
			pstmt.setString(3, info.getFood_addr());
			pstmt.setString(4, info.getFood_type());
			pstmt.setString(5, info.getFood_area()); 
			pstmt.setString(6, info.getFood_detail()); 
			pstmt.setString(7, info.getFood_img1());
			pstmt.setString(8, info.getFood_img2());
			pstmt.setString(9, info.getFood_img3()); 
			pstmt.setString(10, info.getFood_desc()); 
			 

			System.out.println("* insert : " + pstmt);

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("* insert() Fail");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
 
	public HashMap<String, String> delete(String whereInDel, String hotelRegId) {

		HashMap<String, String> ret = new HashMap<String, String>();

		Statement stmt = null;
		ResultSet rs = null;

		int rcnt = 0;
		int result = 0;

		try { 
			String sql = " update t_food_info set " + " food_del_yn ='y', food_isview ='n' where food_code in (" + whereInDel + ") ";
			System.out.println("* delete : " + sql);
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);

			if (result > 0) {
				ret.put("result", "success");
				ret.put("msg", "삭제처리가 완료되었습니다.");
			} else {
				ret.put("result", "fail");
				ret.put("msg", "삭제처리가 실패되었습니다. 다시 시도해주세요.");
			} 

		} catch (Exception e) {
			System.out.println("* !!! Delete Error !!!");

			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return ret;
	}

	public int update(FoodInfo info) {

		int result = 0;
		Statement stmt = null;

		try {
			String sql = "update t_food_info set " 
					+ " food_name = '" + info.getFood_name()
					+ " food_addr = '" + info.getFood_addr() + "', " 
					+ " food_type = '" + info.getFood_type() + "', " 
					+ " food_area = '" + info.getFood_area() + "', " 
					+ " food_open_yn = '" + info.getFood_open_yn() + "' ";

			if (!info.getFood_img1().equals("")) {
				sql += " food_img1 = '" + info.getFood_img1() + "', ";
			}
			if (!info.getFood_img2().equals("")) {
				sql += " food_img2 = '" + info.getFood_img2() + "', ";
			}
			if (!info.getFood_img3().equals("")) {
				sql += " food_img3 = '" + info.getFood_img3() + "', ";
			}
			if (!info.getFood_desc().equals("")) {
				sql += " food_desc = '" + info.getFood_desc() + "', ";
			}
			sql += " where food_code = '" + info.getFood_code() + "'";
			System.out.println("* update : " + sql);
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);

		} catch (Exception e) {
			System.out.println("* update() 메소드 오류");
			e.printStackTrace();
		} finally {
			close(stmt);
		}

		return result;
	}

	public FoodInfo getTop(int i) {
		// 지정한 id에 해당하는 특정 상품 정보를 productInfo형 인스턴스로 리턴하는 메소드
		FoodInfo foodInfo = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			String sql = " select * from t_food_info order by food_score desc limit " + i;
			System.out.println("getTop : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				foodInfo = new FoodInfo(); 
				foodInfo.setFood_name(rs.getString("food_name"));
				foodInfo.setFood_code(rs.getString("food_code")); 
				foodInfo.setFood_img1(rs.getString("food_img1")); 
				foodInfo.setFood_score(rs.getFloat("food_score"));  

			}
		} catch (Exception e) {
			System.out.println("getFoodInfo() 메소드 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return foodInfo; 
	}


	
}