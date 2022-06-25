package svc.mypage;

import static db.JdbcUtil.*;
import java.util.*;

import dao.mypage.*;

import java.sql.*;
import vo.*;

public class MypageReplySvc {

	public int getCount(String where) {
		int rcnt = 0;
		Connection conn = getConnection();
		MypageReplyDao dao = MypageReplyDao.getInstance();

		dao.setConnection(conn);

		rcnt = dao.getCount(where);

		close(conn);

		return rcnt;

	}


	public ArrayList<ReplyInfo> getHotelReplyList(String where, String orderBy, int cpage, int psize) {

		ArrayList<ReplyInfo> list = new ArrayList<ReplyInfo>();
		Connection conn = getConnection();
		MypageReplyDao dao = MypageReplyDao.getInstance();
		dao.setConnection(conn);
		list = dao.getHotelReplyList(where, orderBy, cpage, psize);
		close(conn);

		return list;
	}

	public ArrayList<ReplyInfo> getTourReplyList(String where, String orderBy, int cpage, int psize) {

		ArrayList<ReplyInfo> list = new ArrayList<ReplyInfo>();
		Connection conn = getConnection();
		MypageReplyDao dao = MypageReplyDao.getInstance();
		dao.setConnection(conn);
		list = dao.getTourReplyList(where, orderBy, cpage, psize);
		close(conn);

		return list;
	}

	public ArrayList<ReplyInfo> getFoodReplyList(String where, String orderBy, int cpage, int psize) {

		ArrayList<ReplyInfo> list = new ArrayList<ReplyInfo>();
		Connection conn = getConnection();
		MypageReplyDao dao = MypageReplyDao.getInstance();
		dao.setConnection(conn);
		list = dao.getFoodReplyList(where, orderBy, cpage, psize);
		close(conn);

		return list;
	}


	public int getTourReplyCount(String where) {
		Connection conn = getConnection();
		MypageReplyDao dao = MypageReplyDao.getInstance();
		dao.setConnection(conn);
		int cnt = dao.getTourReplyCount(where);
		close(conn);
		return cnt;
	} 


	public int getFoodReplyCount(String where) {
		Connection conn = getConnection();
		MypageReplyDao dao = MypageReplyDao.getInstance();
		dao.setConnection(conn);
		int cnt = dao.getFoodReplyCount(where);
		close(conn);
		return cnt;
	} 
	


	public int getHotelReplyCount(String where) {
		Connection conn = getConnection();
		MypageReplyDao dao = MypageReplyDao.getInstance();
		dao.setConnection(conn);
		int cnt = dao.getHotelReplyCount(where);
		close(conn);
		return cnt;
	} 

}
