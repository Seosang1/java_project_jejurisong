package dao.mypage;

import static db.JdbcUtil.*;
import java.util.*; 
import java.sql.*;
import vo.*;

public class MypageReplyDao {
	private static MypageReplyDao ReplyDao;
	private Connection conn;

	private MypageReplyDao() {}

	public static MypageReplyDao getInstance() {
		if (ReplyDao == null)
			ReplyDao = new MypageReplyDao();
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
			String sql = " select count(*) from t_reply_list " + where ;
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

	public ArrayList<ReplyInfo> getTourReplyList(String where, String orderBy, int cpage, int psize) {

		ArrayList<ReplyInfo> list = new ArrayList<ReplyInfo>();
		Statement stmt = null;
		ResultSet rs = null;
		ReplyInfo info = null; 
		int snum = (cpage - 1) * psize;

		try { 
			String sql = " select tour.tour_code, tour.tour_name, tour.tour_area, tour.tour_type, reply.* "
					+ "from t_reply_list reply left join t_tour_info tour on reply.reply_code = tour.tour_code  "
					+ where + orderBy ;
					//	-1 이 아니면 페이징 처리 (-1 : 숙박상세보기에서 보여지는 방 리스트 )
					if (psize >= 0) {
						sql += " limit " + snum + ", " + psize;	
					}

			System.out.println("* getTourReplyList : " + sql);
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

				info.setTour_code(rs.getString("tour_code"));
				info.setTour_name(rs.getString("tour_name"));
				info.setTour_type(rs.getString("tour_type"));
				info.setTour_area(rs.getString("tour_area"));

				info.setReply_del_yn(rs.getString("reply_del_yn"));
				info.setReply_del_date(rs.getString("reply_del_date"));
				info.setAi_id(rs.getString("ai_id"));  
				
				list.add(info);
			}
		} catch (Exception e) {
			System.out.println("* getTourReplyList() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return list;
	}
	

	public ArrayList<ReplyInfo> getFoodReplyList(String where, String orderBy, int cpage, int psize) {

		ArrayList<ReplyInfo> list = new ArrayList<ReplyInfo>();
		Statement stmt = null;
		ResultSet rs = null;
		ReplyInfo info = null; 
		int snum = (cpage - 1) * psize;

		try { 
			String sql = " select food.food_code, food.food_name, food.food_type, food.food_area , reply.* "
					+ " from t_reply_list reply left join t_food_info food on reply.reply_code = food.food_code   "
					+ where + orderBy ;
					//	-1 이 아니면 페이징 처리 (-1 : 숙박상세보기에서 보여지는 방 리스트 )
					if (psize >= 0) {
						sql += " limit " + snum + ", " + psize;	
					}

			System.out.println("* getFoodReplyList : " + sql);
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

				info.setFood_code(rs.getString("food_code"));
				info.setFood_name(rs.getString("food_name"));
				info.setFood_type(rs.getString("food_type"));
				info.setFood_area(rs.getString("food_area"));

				info.setReply_del_yn(rs.getString("reply_del_yn"));
				info.setReply_del_date(rs.getString("reply_del_date"));
				info.setAi_id(rs.getString("ai_id"));  
				
				list.add(info);
			}
		} catch (Exception e) {
			System.out.println("* getTourReplyList() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return list;
	}
 

	public ArrayList<ReplyInfo> getHotelReplyList(String where, String orderBy, int cpage, int psize) {

		ArrayList<ReplyInfo> list = new ArrayList<ReplyInfo>();
		Statement stmt = null;
		ResultSet rs = null;
		ReplyInfo info = null; 
		int snum = (cpage - 1) * psize;

		try { 
			String sql = "  select hotel.hotel_code, hotel.hotel_name, room.room_code, room.room_type, reply.* "
					+ " from t_reply_list reply left join t_reserve_info rv on reply.reply_rv_code = rv.rv_code "
					+ " left join t_room_info room on reply.reply_code = room.room_code "
					+ " left join t_hotel_info hotel on room.hotel_code = hotel.hotel_code "
					+ where + orderBy ;
					//	-1 이 아니면 페이징 처리 (-1 : 숙박상세보기에서 보여지는 방 리스트 )
					if (psize >= 0) {
						sql += " limit " + snum + ", " + psize;	
					}

			System.out.println("* getHotelReplyList : " + sql);
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

				info.setHotel_code(rs.getString("hotel_code"));
				info.setHotel_name(rs.getString("hotel_name"));
				info.setRoom_code(rs.getString("room_code"));  
				info.setRoom_type(rs.getString("room_type"));  

				info.setReply_del_yn(rs.getString("reply_del_yn"));
				info.setReply_del_date(rs.getString("reply_del_date"));
				info.setAi_id(rs.getString("ai_id"));  
				
				list.add(info);
			}
		} catch (Exception e) {
			System.out.println("* getHotelReplyList() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return list;
	}

	public int getTourReplyCount(String where) {
		int rcnt = 0;
		Statement stmt = null;
		ResultSet rs = null; 

		try { 
			String sql = " select count(*) from t_reply_list reply left join t_tour_info tour on reply.reply_code = tour.tour_code " + where ;

			System.out.println("* getTourReplyCount : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next())
				rcnt = rs.getInt(1);
		} catch (Exception e) {
			System.out.println("* getTourReplyList() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return rcnt;
	}	

	public int getFoodReplyCount(String where) {
		int rcnt = 0;
		Statement stmt = null;
		ResultSet rs = null; 

		try { 
			String sql = " select count(*) from t_reply_list reply left join t_food_info food on reply.reply_code = food.food_code   " + where ;

			System.out.println("* getFoodReplyCount : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next())
				rcnt = rs.getInt(1);
		} catch (Exception e) {
			System.out.println("* getFoodReplyCount() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return rcnt;
	}	

	public int getHotelReplyCount(String where) {
		
		int rcnt = 0;
		Statement stmt = null;
		ResultSet rs = null; 

		try { 
			String sql = " select count(*)"
					+ " from t_reply_list reply left join t_reserve_info rv on reply.reply_rv_code = rv.rv_code "
					+ " left join t_room_info room on reply.reply_code = room.room_code "
					+ " left join t_hotel_info hotel on room.hotel_code = hotel.hotel_code " + where ;
			System.out.println("* getHotelReplyCount : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next())
				rcnt = rs.getInt(1);
		} catch (Exception e) {
			System.out.println("* getHotelReplyCount() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return rcnt;
	}	
}
