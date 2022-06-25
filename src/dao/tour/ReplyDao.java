package dao.tour;

import static db.JdbcUtil.*;
import java.util.*; 
import java.sql.*;
import vo.*;

public class ReplyDao {
	private static ReplyDao ReplyDao;
	private Connection conn;

	private ReplyDao() {}

	public static ReplyDao getInstance() {
		if (ReplyDao == null)
			ReplyDao = new ReplyDao();
		return ReplyDao;
	}

	public void setConnection(Connection conn) {
		System.out.println("[ReplyDao]");
		this.conn = conn;
	}

	public int getCount(String where) {

		Statement stmt = null;
		ResultSet rs = null;
		int rcnt = 0;

		try {
			String sql = " select count(*) from t_reply_list reply left join t_tour_info tour on reply.reply_code = tour.tour_code " + where ;
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

	public ArrayList<ReplyInfo> getList(String where, String orderBy, int cpage, int psize) {

		ArrayList<ReplyInfo> list = new ArrayList<ReplyInfo>();
		Statement stmt = null;
		ResultSet rs = null;
		ReplyInfo info = null;
		int snum = (cpage - 1) * psize;

		try {

			String sql = " select tour.tour_name, reply.*  from t_reply_list reply left join t_tour_info tour on reply.reply_code = tour.tour_code " + where + orderBy;
 
			if (psize >= 0) {
				sql += " limit " + snum + ", " + psize;
			}

			System.out.println("* getList : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				info = new ReplyInfo();
 
				info.setReply_idx(rs.getInt("reply_idx"));  
				info.setReply_type(rs.getString("reply_type"));
				info.setReply_code(rs.getString("reply_code"));
				info.setReply_rv_code(rs.getString("reply_rv_code"));
				info.setMi_id(rs.getString("mi_id"));
				info.setReply_score(rs.getDouble("reply_score")); 
				info.setReply_content(rs.getString("reply_content"));
				info.setReply_reg_date(rs.getString("reply_reg_date"));

				info.setHotel_name(rs.getString("tour_name"));   

				info.setReply_del_yn(rs.getString("reply_del_yn"));
				info.setReply_del_date(rs.getString("reply_del_date"));
				info.setAi_id(rs.getString("ai_id"));  
				
				list.add(info);
			}
		} catch (Exception e) {
			System.out.println("* getList() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return list;
	}

	public ReplyInfo getSelectOne(String where) {
		ReplyInfo info = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			String sql = " select tour.tour_name, reply.*  from t_reply_list reply left join t_tour_info tour on reply.reply_code = tour.tour_code " + where ;
			System.out.println("* getinfo >>" + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				info = new ReplyInfo();

				info.setReply_idx(rs.getInt("reply_idx"));  
				info.setReply_type(rs.getString("reply_type"));
				info.setReply_code(rs.getString("reply_code"));
				info.setReply_rv_code(rs.getString("reply_rv_code"));
				info.setMi_id(rs.getString("mi_id"));
				info.setReply_score(rs.getDouble("reply_score")); 
				info.setReply_content(rs.getString("reply_content"));
				info.setReply_reg_date(rs.getString("reply_reg_date"));

				info.setHotel_name(rs.getString("hotel_name"));
				info.setRoom_type(rs.getString("room_type"));  

				info.setReply_del_yn(rs.getString("reply_del_yn"));
				info.setReply_del_date(rs.getString("reply_del_date"));
				info.setAi_id(rs.getString("ai_id"));  
				
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

	public int insert(ReplyInfo ReplyInfo) {
		PreparedStatement pstmt = null;
		int result = 0;

		try {  
			String sql = "call sp_tour_reply_insert(?, ?, ?, ?);";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ReplyInfo.getReply_code());
			pstmt.setString(2, ReplyInfo.getMi_id());
			pstmt.setString(3, ReplyInfo.getReply_content());
			pstmt.setDouble(4, ReplyInfo.getReply_score()); 

			System.out.println("*  insert : " + pstmt);

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("* insert() Fail");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}


	public int delete(String whereInDel, String del_id) {

		Statement stmt = null;
		ResultSet rs = null;

		int result = 0;
		int resultT = 0;

		try {

			String[] arrRvCode = whereInDel.split(",");

			for (int i = 0; i < arrRvCode.length; i++) {
				String sql = "select reply_idx, reply_code from t_reply_list where reply_idx = '" + arrRvCode[i] + "'";
				System.out.println("* delete check : " + sql);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				if (rs.next()) {
					String reply_idx = rs.getString(1);
					String reply_code = rs.getString(2);

					sql = "call sp_tour_reply_delete(" + reply_idx + ", '" + reply_code + "', '"+ del_id + "')";
					System.out.println("* call sp_tour_reply_delete : " + sql);
					
					result = stmt.executeUpdate(sql);

					if (result > 0)
						resultT++;
				}
			}

			if (resultT != arrRvCode.length)
				result = 0;

		} catch (Exception e) {
			System.out.println("* delete Error");

			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return result;
	}

}
