package dao.hotel;

import static db.JdbcUtil.*;
import java.util.*;
import java.sql.*;
import vo.*;

public class HotelReplyDao {
	private static HotelReplyDao ReplyDao;
	private Connection conn;

	private HotelReplyDao() {}

	public static HotelReplyDao getInstance() {
		if (ReplyDao == null)
			ReplyDao = new HotelReplyDao();
		return ReplyDao;
	}

	public void setConnection(Connection conn) {
		System.out.println("[ReplyDao]");
		this.conn = conn;
	}

	public int getCount(String hotel_code) {

		Statement stmt = null;
		ResultSet rs = null;
		int rcnt = 0;

		try { 
			String sql = "  select count(*) "
						+ " from (select * from t_reply_list where reply_code in (select room_code from t_room_info where hotel_code = '" + hotel_code + "')) reply "  
						+ " left join t_reserve_info rv on reply.reply_rv_code = rv.rv_code "  
						+ " left join t_hotel_info hotel on hotel.hotel_code = '" + hotel_code + "'"  
						+ " left join t_room_info room on reply.reply_code = room.room_code" 
						+ " where reply.reply_del_yn = 'n' ";
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

	public ArrayList<ReplyInfo> getList(String hotel_code, String orderBy, int cpage, int psize) {

		ArrayList<ReplyInfo> list = new ArrayList<ReplyInfo>();
		Statement stmt = null;
		ResultSet rs = null;
		ReplyInfo info = null;
		int snum = (cpage - 1) * psize;

		try {

/*			String sql = " select reply.*, hotel.hotel_name, room.room_type from t_room_reply reply "
					+ " left join t_reserve_info rv on reply.rv_code = rv.rv_code "
					+ " left join t_hotel_info hotel on reply.hotel_code = hotel.hotel_code "
					+ " left join t_room_info room on reply.room_code = room.room_code " + where + orderBy; */
			String sql = "  select reply.*, hotel.hotel_name, room.room_type "
						+ " from (select * from t_reply_list where reply_code in (select room_code from t_room_info where hotel_code = '" + hotel_code + "')) reply "  
						+ " left join t_reserve_info rv on reply.reply_rv_code = rv.rv_code "  
						+ " left join t_hotel_info hotel on hotel.hotel_code = '" + hotel_code + "'"  
						+ " left join t_room_info room on reply.reply_code = room.room_code" 
						+ " where reply.reply_del_yn = 'n' " + orderBy;
			
			// -1 이 아니면 페이징 처리 (-1 : 숙박상세보기에서 보여지는 방 리스트 )
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

				info.setHotel_name(rs.getString("hotel_name"));
				info.setRoom_type(rs.getString("room_type"));  

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

	public ReplyInfo getSelectOne(String code) {
		ReplyInfo info = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			String sql = " select reply.*, hotel.hotel_name, room.room_type from t_room_reply reply "
					+ " left join t_reserve_info rv on reply.rv_code = rv.rv_code "
					+ " left join t_hotel_info hotel on reply.hotel_code = hotel.hotel_code "
					+ " left join t_room_info room on reply.room_code = room.room_code " + " where  reply_idx = "
					+ code + " ";
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
			// call sp_h_reply_insert('20210623030', 'A0016', 'R0076', 'sora', '방 너무 좋아요', 4);
			String sql = "call sp_h_reply_insert(?, ?, ?, ?, ?, ?);";
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString(1, ReplyInfo.getReply_rv_code());
			pstmt.setString(2, ReplyInfo.getHotel_code());
			pstmt.setString(3, ReplyInfo.getRoom_code());
			pstmt.setString(4, ReplyInfo.getMi_id());
			pstmt.setString(5, ReplyInfo.getReply_content());
			pstmt.setDouble(6, ReplyInfo.getReply_score());

			System.out.println("* sp_h_reply_insert : " + pstmt);

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("* sp_h_reply_insert() Fail");
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
				String sql = "select rv_code, hotel_code, room_code from t_reserve_info rv left join t_reply_list reply on rv.rv_code = reply.reply_rv_code where reply_idx = '" + arrRvCode[i] + "'";
				System.out.println("* delete : " + sql);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				if (rs.next()) {
					String rv_code = rs.getString(1);
					String hotel_code = rs.getString(2);
					String room_code = rs.getString(3);
					//sp_h_reply_delete(replyIdx int, rvCode varchar(11), hotelCode varchar(5), roomCode varchar(5), delId varchar(20))
					sql = "call sp_h_reply_delete("+arrRvCode[i]+ ", '" + rv_code + "', '" + hotel_code + "', '" + room_code + "', '"+ del_id + "')";
					System.out.println("* call sp_h_reply_delete : " + sql);
					
					result = stmt.executeUpdate(sql);

					if (result > 0)
						resultT++;
				}
			}

			if (resultT != arrRvCode.length)
				result = 0;

		} catch (Exception e) {
			System.out.println("* delete Delete Error");

			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return resultT;
	}
 

}
