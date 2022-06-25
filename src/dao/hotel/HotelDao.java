package dao.hotel;

import static db.JdbcUtil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import dao.hotel.*;
import vo.*;

public class HotelDao {
	private static HotelDao hotelDao;
	private Connection conn;

	private HotelDao() {}

	public static HotelDao getInstance() {
		if (hotelDao == null)
			hotelDao = new HotelDao();
		return hotelDao;
	}

	public void setConnection(Connection conn) {
		System.out.println("[HotelDao]");
		this.conn = conn;
	}

	/**
	 * ȣ�� ����
	 * 
	 * @param where
	 * @return
	 */
	public int getHotelCount(String where) {

		Statement stmt = null;
		ResultSet rs = null;
		int rcnt = 0;

		try {
			String sql = "select count(*) from t_hotel_info " + where;
			System.out.println("* getHotelCount : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next())
				rcnt = rs.getInt(1);
		} catch (Exception e) {
			System.out.println("* getHotelCount() Error");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return rcnt;
	}

	/**
	 * ȣ������ ��������
	 * 
	 * @param hotel_code
	 * @return
	 */
	public HotelInfo getSelectOne(String hotel_code) {
		HotelInfo info = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "select * from t_hotel_info where hotel_code = '" + hotel_code + "' ";
			System.out.println("* getinfo : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				info = new HotelInfo();

				info.setHotel_idx(rs.getInt("hotel_idx"));
				info.setHotel_code(rs.getString("hotel_code"));
				info.setHotel_area(rs.getString("hotel_area"));
				info.setHotel_type(rs.getString("hotel_type"));
				info.setHotel_name(rs.getString("hotel_name"));
				info.setHotel_addr(rs.getString("hotel_addr"));
				info.setHotel_zip(rs.getString("hotel_zip"));
				info.setHotel_tel(rs.getString("hotel_tel"));
				info.setHotel_detail(rs.getString("hotel_detail"));
				info.setHotel_stime(rs.getString("hotel_stime"));
				info.setHotel_etime(rs.getString("hotel_etime"));
				info.setHotel_park_yn(rs.getString("hotel_park_yn"));
				info.setHotel_img1(rs.getString("hotel_img1"));
				info.setHotel_img2(rs.getString("hotel_img2"));
				info.setHotel_img3(rs.getString("hotel_img3"));
				info.setHotel_score(rs.getDouble("hotel_score"));
				info.setHotel_review_cnt(rs.getInt("hotel_review_cnt"));
				info.setHotel_open_yn(rs.getString("hotel_open_yn"));

				info.setHotel_reg_date(rs.getString("hotel_reg_date"));
				info.setHotel_reg_id(rs.getString("hotel_reg_id"));
				info.setHotel_del_yn(rs.getString("hotel_del_yn"));
				info.setHotel_del_date(rs.getString("hotel_del_date"));
				info.setHotel_del_id(rs.getString("hotel_del_id"));
			}
		} catch (Exception e) {
			System.out.println("* getinfo() �޼ҵ� ����");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return info;
	}

	/**
	 * ���ο��� �ʿ��� ���� ����Ʈ
	 * 
	 * @param where
	 * @param orderBy
	 * @return
	 */
	public ArrayList<HotelInfo> getListMain(String where, String orderBy) {

		ArrayList<HotelInfo> hotelList = new ArrayList<HotelInfo>();
		Statement stmt = null;
		ResultSet rs = null;
		HotelInfo HotelInfo = null;

		try {

			String sql = " SELECT  * FROM  t_hotel_info a  left join \n"
					+ "( select a.hotel_code, a.room_code, room_type, room_price , room_discount , room_dis_price from t_room_info a , "
					+ "(SELECT hotel_code, min(room_dis_price) as minPrice FROM t_room_info GROUP BY hotel_code) b "
					+ "where  a.hotel_code = b.hotel_code and a.room_dis_price  = b.minPrice ) b "
					+ "on a.hotel_code = b.hotel_code " + where + orderBy;

			/*
			 * 
			 * String sql = " select * from t_hotel_info hotel left join" +
			 * " (select hotel_code, room_code, room_price, room_discount, room_dis_price from t_room_info "
			 * +
			 * "	where room_del_yn = 'n' and room_open_yn ='y' group by hotel_code) room "
			 * + "on hotel.hotel_code = room.hotel_code " + where + orderBy;
			 */
			System.out.println("* getListMain : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				HotelInfo = new HotelInfo();

				HotelInfo.setHotel_idx(rs.getInt("hotel_idx"));
				HotelInfo.setHotel_code(rs.getString("hotel_code"));
				HotelInfo.setHotel_area(rs.getString("hotel_area"));
				HotelInfo.setHotel_type(rs.getString("hotel_type"));
				HotelInfo.setHotel_name(rs.getString("hotel_name"));
				HotelInfo.setHotel_addr(rs.getString("hotel_addr"));
				HotelInfo.setHotel_zip(rs.getString("hotel_zip"));
				HotelInfo.setHotel_tel(rs.getString("hotel_tel"));
				HotelInfo.setHotel_detail(rs.getString("hotel_detail"));
				HotelInfo.setHotel_stime(rs.getString("hotel_stime"));
				HotelInfo.setHotel_etime(rs.getString("hotel_etime"));
				HotelInfo.setHotel_park_yn(rs.getString("hotel_park_yn"));
				HotelInfo.setHotel_img1(rs.getString("hotel_img1"));
				HotelInfo.setHotel_img2(rs.getString("hotel_img2"));
				HotelInfo.setHotel_img3(rs.getString("hotel_img3"));
				HotelInfo.setHotel_score(rs.getDouble("hotel_score"));
				HotelInfo.setHotel_review_cnt(rs.getInt("hotel_review_cnt"));
				HotelInfo.setHotel_open_yn(rs.getString("hotel_open_yn"));
				HotelInfo.setHotel_reg_date(rs.getString("hotel_reg_date"));
				HotelInfo.setHotel_reg_id(rs.getString("hotel_reg_id"));
				HotelInfo.setHotel_del_yn(rs.getString("hotel_del_yn"));
				HotelInfo.setHotel_del_date(rs.getString("hotel_del_date"));
				HotelInfo.setHotel_del_id(rs.getString("hotel_del_id"));

				HotelInfo.setRoom_price(rs.getInt("room_price"));
				HotelInfo.setRoom_discount(rs.getInt("room_discount"));
				HotelInfo.setRoom_dis_price(rs.getInt("room_dis_price"));

				hotelList.add(HotelInfo);
			}
		} catch (Exception e) {
			System.out.println("*  getListMain() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return hotelList;
	}

	/**
	 * �������� ȣ�� ����Ʈ
	 * 
	 * @param where
	 * @param orderBy
	 * @param cpage
	 * @param psize
	 * @return
	 */
	public ArrayList<HotelInfo> getHotelList(String where, String orderBy, int cpage, int psize) {

		ArrayList<HotelInfo> hotelList = new ArrayList<HotelInfo>();
		Statement stmt = null;
		ResultSet rs = null;
		HotelInfo HotelInfo = null;
		int snum = (cpage - 1) * psize;

		try {

			String sql = "select * from t_hotel_info hotel left join "
					+ "	(select hotel_code, count(hotel_code) as room_cnt from t_room_info where room_del_yn = 'n' group by hotel_code) room "
					+ "	on hotel.hotel_code = room.hotel_code  " + where + orderBy + " limit " + snum + ", " + psize;
			System.out.println("*  getHotelList : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				HotelInfo = new HotelInfo();

				HotelInfo.setHotel_idx(rs.getInt("hotel_idx"));
				HotelInfo.setHotel_code(rs.getString("hotel_code"));
				HotelInfo.setHotel_area(rs.getString("hotel_area"));
				HotelInfo.setHotel_type(rs.getString("hotel_type"));
				HotelInfo.setHotel_name(rs.getString("hotel_name"));
				HotelInfo.setHotel_addr(rs.getString("hotel_addr"));
				HotelInfo.setHotel_zip(rs.getString("hotel_zip"));
				HotelInfo.setHotel_tel(rs.getString("hotel_tel"));
				HotelInfo.setHotel_detail(rs.getString("hotel_detail"));
				HotelInfo.setHotel_stime(rs.getString("hotel_stime"));
				HotelInfo.setHotel_etime(rs.getString("hotel_etime"));
				HotelInfo.setHotel_park_yn(rs.getString("hotel_park_yn"));
				HotelInfo.setHotel_img1(rs.getString("hotel_img1"));
				HotelInfo.setHotel_img2(rs.getString("hotel_img2"));
				HotelInfo.setHotel_img3(rs.getString("hotel_img3"));
				HotelInfo.setHotel_score(rs.getDouble("hotel_score"));
				HotelInfo.setHotel_review_cnt(rs.getInt("hotel_review_cnt"));
				HotelInfo.setHotel_open_yn(rs.getString("hotel_open_yn"));
				HotelInfo.setHotel_reg_date(rs.getString("hotel_reg_date"));
				HotelInfo.setHotel_reg_id(rs.getString("hotel_reg_id"));
				HotelInfo.setHotel_del_yn(rs.getString("hotel_del_yn"));
				HotelInfo.setHotel_del_date(rs.getString("hotel_del_date"));
				HotelInfo.setHotel_del_id(rs.getString("hotel_del_id"));
				HotelInfo.setHotel_room_cnt(rs.getInt("room_cnt"));

				hotelList.add(HotelInfo);
			}
		} catch (Exception e) {
			System.out.println("*  getHotelList() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return hotelList;
	}

	/**
	 * ȣ���ڵ� ����
	 * 
	 * @return
	 */
	public String getHotelCode() {

		Statement stmt = null;
		ResultSet rs = null;
		String hotel_code = "";

		try {
			String sql = "select max(hotel_code) from t_hotel_info order by hotel_idx desc limit 1";
			System.out.println("*  getHotelCode : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next())
				hotel_code = rs.getString(1);
		} catch (Exception e) {
			System.out.println("*  get getHotelCode() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		if (hotel_code == null || hotel_code.equals("") || hotel_code.equals("null")) {
			hotel_code = "A0001";
		} else {
			hotel_code = "A" + String.format("%04d", (Integer.parseInt(hotel_code.substring(1)) + 1));
		}

		return hotel_code;

	}

	/**
	 * ȣ������ ����
	 * 
	 * @param hotelInfo
	 * @return
	 */
	public int insert(HotelInfo hotelInfo) {
		PreparedStatement pstmt = null;
		int result = 0;

		try {
			String sql = "INSERT INTO jejurisong.t_hotel_info"
					+ " (hotel_code, hotel_area, hotel_type, hotel_name, hotel_addr, hotel_zip, "
					+ " hotel_tel, hotel_detail, hotel_stime, hotel_etime, hotel_park_yn, "
					+ " hotel_img1, hotel_img2, hotel_img3, hotel_open_yn, hotel_reg_id) "
					+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hotelInfo.getHotel_code());
			pstmt.setString(2, hotelInfo.getHotel_area());
			pstmt.setString(3, hotelInfo.getHotel_type());
			pstmt.setString(4, hotelInfo.getHotel_name());
			pstmt.setString(5, hotelInfo.getHotel_addr());
			pstmt.setString(6, hotelInfo.getHotel_zip());
			pstmt.setString(7, hotelInfo.getHotel_tel());
			pstmt.setString(8, hotelInfo.getHotel_detail());
			pstmt.setString(9, hotelInfo.getHotel_stime());
			pstmt.setString(10, hotelInfo.getHotel_etime());
			pstmt.setString(11, hotelInfo.getHotel_park_yn());
			pstmt.setString(12, hotelInfo.getHotel_img1());
			pstmt.setString(13, hotelInfo.getHotel_img2());
			pstmt.setString(14, hotelInfo.getHotel_img3());
			pstmt.setString(15, hotelInfo.getHotel_open_yn());
			pstmt.setString(16, hotelInfo.getHotel_reg_id());

			System.out.println("* hotel insert : " + pstmt);

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("* insert() Fail");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	/**
	 * ȣ������ ���� (�������� ó��)
	 * 
	 * @param whereInDel
	 * @param hotelRegId
	 * @return
	 */
	public HashMap<String, String> delete(String whereInDel, String hotelRegId) {

		HashMap<String, String> ret = new HashMap<String, String>();

		Statement stmt = null;
		ResultSet rs = null;

		int rcnt = 0;
		int result = 0;

		try {
			// ȣ�ڿ� �ش�Ǵ� �� ������ �ִ��� Ȯ��
			String sql = "select count(*) from t_room_info " + " where hotel_code in (" + whereInDel
					+ ") and room_del_yn = 'n' ";
			System.out.println("*  * Has Room Check : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next())
				rcnt = rs.getInt(1);

			// �� ������ ���ٸ� ����(������Ʈ) ó��
			// ������Ʈ �� �� ������� ����ó��
			if (rcnt == 0) {
				sql = " update t_hotel_info set " + " hotel_del_yn ='y', " + " hotel_open_yn ='n', "
						+ " hotel_del_date = now(), " + " hotel_del_id = '" + hotelRegId + "'"
						+ " where hotel_code in (" + whereInDel + ") ";
				System.out.println("*  * Delete Hotel : " + sql);
				stmt = conn.createStatement();
				result = stmt.executeUpdate(sql);

				if (result > 0) {
					ret.put("result", "success");
					ret.put("msg", "����ó���� �Ϸ�Ǿ����ϴ�.");
				} else {
					ret.put("result", "fail");
					ret.put("msg", "����ó���� ���еǾ����ϴ�. �ٽ� �õ����ּ���.");
				}
			} else {
				ret.put("result", "fail");
				ret.put("msg", "��ϵ� �� ������ �ֽ��ϴ�.\\n��ϵ� �� ������ ������ ������ �� �����ϴ�.");
			}

		} catch (Exception e) {
			System.out.println("* !!! HotelAdminDao Delete Error !!!");

			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return ret;
	}

	public int update(HotelInfo info) {

		int result = 0;
		Statement stmt = null;

		try {
			String sql = "update t_hotel_info set " + " hotel_area = '" + info.getHotel_area() + "', "
					+ " hotel_type = '" + info.getHotel_type() + "', " + " hotel_name = '" + info.getHotel_name()
					+ "', " + " hotel_addr = '" + info.getHotel_addr() + "', " + " hotel_zip = '" + info.getHotel_zip()
					+ "', " + " hotel_tel = '" + info.getHotel_tel() + "', " + " hotel_detail = '"
					+ info.getHotel_detail() + "', " + " hotel_stime = '" + info.getHotel_stime() + "', "
					+ " hotel_etime = '" + info.getHotel_etime() + "', " + " hotel_park_yn = '"
					+ info.getHotel_park_yn() + "', ";

			if (!info.getHotel_img1().equals("")) {
				sql += " hotel_img1 = '" + info.getHotel_img1() + "', ";
			}
			if (!info.getHotel_img2().equals("")) {
				sql += " hotel_img2 = '" + info.getHotel_img2() + "', ";
			}
			if (!info.getHotel_img3().equals("")) {
				sql += " hotel_img3 = '" + info.getHotel_img3() + "', ";
			}
			sql += " hotel_open_yn = '" + info.getHotel_open_yn() + "' " + " where hotel_code = '"
					+ info.getHotel_code() + "'";
			System.out.println("* update sql >> " + sql);
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);

		} catch (Exception e) {
			System.out.println("* update() �޼ҵ� ����");
			e.printStackTrace();
		} finally {
			close(stmt);
		}

		return result;
	}

	public HotelInfo getTop(int i) {
		// ������ id�� �ش��ϴ� Ư�� ��ǰ ������ productInfo�� �ν��Ͻ��� �����ϴ� �޼ҵ�
		HotelInfo hotelInfo = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			String sql = " select * from t_hotel_info order by hotel_score desc limit " + i;
			System.out.println("getTop : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				hotelInfo = new HotelInfo(); 
				hotelInfo.setHotel_name(rs.getString("hotel_name"));
				hotelInfo.setHotel_code(rs.getString("hotel_code")); 
				hotelInfo.setHotel_img1(rs.getString("hotel_img1")); 
				hotelInfo.setHotel_score(rs.getDouble("hotel_score"));  

			}
		} catch (Exception e) {
			System.out.println("getHotelInfo() �޼ҵ� ����");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return hotelInfo; 
	}

}
