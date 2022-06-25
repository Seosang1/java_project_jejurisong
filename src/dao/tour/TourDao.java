package dao.tour;

import static db.JdbcUtil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import dao.tour.*;
import vo.*;

public class TourDao {
	private static TourDao tourDao;
	private Connection conn;

	private TourDao() {}

	public static TourDao getInstance() {
		if (tourDao == null)
			tourDao = new TourDao();
		return tourDao;
	}

	public void setConnection(Connection conn) {
		System.out.println("[TourDao]");
		this.conn = conn;
	}
 
	public int getCount(String where) {

		Statement stmt = null;
		ResultSet rs = null;
		int rcnt = 0;

		try {
			String sql = "select count(*) from t_tour_info " + where;
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
 
	public TourInfo getSelectOne(String where) {
		TourInfo info = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "select * from t_tour_info " + where;
			System.out.println("* getinfo : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				info = new TourInfo();
				info.setTour_idx(rs.getInt("tour_idx"));
				info.setTour_code(rs.getString("tour_code"));
				info.setTour_name(rs.getString("tour_name"));
				info.setTour_addr(rs.getString("tour_addr"));
				info.setTour_type(rs.getString("tour_type"));
				info.setTour_area(rs.getString("tour_area"));
				info.setTour_tag(rs.getString("tour_tag")); 
				info.setTour_detail(rs.getString("tour_detail")); 
				info.setTour_score(rs.getInt("tour_score"));
				info.setTour_review_cnt(rs.getInt("tour_review_cnt"));
				info.setTour_open_yn(rs.getString("tour_open_yn"));
				info.setTour_reg_date(rs.getString("tour_reg_date"));
				info.setTour_del_yn(rs.getString("tour_del_yn"));
				info.setTour_del_date(rs.getString("tour_del_date"));
				info.setTour_img1(rs.getString("tour_img1"));
				info.setTour_img2(rs.getString("tour_img2"));
				info.setTour_img3(rs.getString("tour_img3"));
 
			}
		} catch (Exception e) {
			System.out.println("* getinfo() 메소드 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return info;
	}
  
	public ArrayList<TourInfo> getList(String where, String orderBy, int cpage, int psize) {

		ArrayList<TourInfo> list = new ArrayList<TourInfo>();
		Statement stmt = null;
		ResultSet rs = null;
		TourInfo info = null;
		int snum = (cpage - 1) * psize;

		try {

			String sql = "select * from t_tour_info " + where + orderBy ;
			if (psize >= 0) sql += " limit " + snum + ", " + psize;
			System.out.println("*  getList : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				info = new TourInfo();


				info.setTour_idx(rs.getInt("tour_idx"));
				info.setTour_code(rs.getString("tour_code"));
				info.setTour_name(rs.getString("tour_name"));
				info.setTour_addr(rs.getString("tour_addr"));
				info.setTour_type(rs.getString("tour_type"));
				info.setTour_area(rs.getString("tour_area"));
				info.setTour_tag(rs.getString("tour_tag")); 
				info.setTour_detail(rs.getString("tour_detail")); 
				info.setTour_score(rs.getInt("tour_score"));
				info.setTour_review_cnt(rs.getInt("tour_review_cnt"));
				info.setTour_open_yn(rs.getString("tour_open_yn"));
				info.setTour_reg_date(rs.getString("tour_reg_date"));
				info.setTour_del_yn(rs.getString("tour_del_yn"));
				info.setTour_del_date(rs.getString("tour_del_date"));
				info.setTour_img1(rs.getString("tour_img1"));
				info.setTour_img2(rs.getString("tour_img2"));
				info.setTour_img3(rs.getString("tour_img3"));

				list.add(info);
			}
		} catch (Exception e) {
			System.out.println("*  getList() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return list;
	}

	/**
	 * 호텔코드 생성
	 * 
	 * @return
	 */
	public String getCode() {

		Statement stmt = null;
		ResultSet rs = null;
		String tour_code = "";

		try {
			String sql = "select max(tour_code) from t_tour_info order by tour_idx desc limit 1";
			System.out.println("*  getCode : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next())
				tour_code = rs.getString(1);
		} catch (Exception e) {
			System.out.println("*  get getCode() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		if (tour_code == null || tour_code.equals("") || tour_code.equals("null")) {
			tour_code = "T0001";
		} else {
			tour_code = "T" + String.format("%04d", (Integer.parseInt(tour_code.substring(1)) + 1));
		}

		return tour_code;

	}

	/**
	 * 호텔정보 저장
	 * 
	 * @param tourInfo
	 * @return
	 */
	public int insert(TourInfo info) {
		PreparedStatement pstmt = null;
		int result = 0;

		try {
			String sql = "INSERT INTO t_tour_info"
					+ " (tour_code, tour_name, tour_addr, tour_type, tour_area, tour_tag, tour_detail, tour_img1, tour_img2, tour_img3 ) "
					+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, info.getTour_code());
			pstmt.setString(2, info.getTour_name());
			pstmt.setString(3, info.getTour_addr());
			pstmt.setString(4, info.getTour_type());
			pstmt.setString(5, info.getTour_area());
			pstmt.setString(6, info.getTour_tag());
			pstmt.setString(7, info.getTour_detail()); 
			pstmt.setString(8, info.getTour_img1());
			pstmt.setString(9, info.getTour_img2());
			pstmt.setString(10, info.getTour_img3()); 
			 

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
 
	public HashMap<String, String> delete(String whereInDel, String tourRegId) {

		HashMap<String, String> ret = new HashMap<String, String>();

		Statement stmt = null;
		ResultSet rs = null;

		int rcnt = 0;
		int result = 0;

		try { 
			String sql = " update t_tour_info set " + " tour_del_yn ='y', tour_isview ='n' where tour_code in (" + whereInDel + ") ";
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

	public int update(TourInfo info) {

		int result = 0;
		Statement stmt = null;

		try {
			String sql = "update t_tour_info set " 
					+ " tour_name = '" + info.getTour_name()
					+ " tour_addr = '" + info.getTour_addr() + "', " 
					+ " tour_type = '" + info.getTour_type() + "', " 
					+ " tour_area = '" + info.getTour_area() + "', " 
					+ " tour_open_yn = '" + info.getTour_open_yn() + "' ";

			if (!info.getTour_img1().equals("")) {
				sql += " tour_img1 = '" + info.getTour_img1() + "', ";
			}
			if (!info.getTour_img2().equals("")) {
				sql += " tour_img2 = '" + info.getTour_img2() + "', ";
			}
			if (!info.getTour_img3().equals("")) {
				sql += " tour_img3 = '" + info.getTour_img3() + "', ";
			}
			sql += " where tour_code = '" + info.getTour_code() + "'";
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

	public TourInfo getTop(int i) {
		// 지정한 id에 해당하는 특정 상품 정보를 productInfo형 인스턴스로 리턴하는 메소드
		TourInfo tourInfo = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			String sql = " select * from t_tour_info order by tour_score desc limit " + i;
			System.out.println("getTop : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				tourInfo = new TourInfo(); 
				tourInfo.setTour_name(rs.getString("tour_name"));
				tourInfo.setTour_code(rs.getString("tour_code")); 
				tourInfo.setTour_img1(rs.getString("tour_img1")); 
				tourInfo.setTour_score(rs.getInt("tour_score"));  

			}
		} catch (Exception e) {
			System.out.println("getTourInfo() 메소드 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return tourInfo;  
	}


	
}
