package dao.notice;

import static db.JdbcUtil.*;
import javax.sql.*;
import java.sql.*;
import java.util.*;
import vo.*;

public class NoticeBrdDao {
	private static NoticeBrdDao noticeBrdDao;
	private Connection conn;

	private NoticeBrdDao() {
	}

	public static NoticeBrdDao getInstance() {
		if (noticeBrdDao == null)
			noticeBrdDao = new NoticeBrdDao();
		return noticeBrdDao;
	}

	public void setConnection(Connection conn) {
		this.conn = conn;
	}

	public int noticeInsert(NoticeInfo noticeInfo) {
		Statement stmt = null;
		ResultSet rs = null;
		int result = 0, bnIdx = 1;

		try {
			stmt = conn.createStatement();
			String sql = "select max(bn_idx) from t_brd_notice";
			rs = stmt.executeQuery(sql);
			if (rs.next())
				bnIdx = rs.getInt(1) + 1;
			// 기존의 게시글 번호가 있으면 최대값에 1을 더하여 새 글번호를 생성

			sql = "insert into t_brd_notice(bn_idx, bn_writer, bn_title, bn_content) " + " values (" + bnIdx + ", '"
					+ noticeInfo.getBn_writer() + "', '" + noticeInfo.getBn_title() + "', '"
					+ noticeInfo.getBn_content() + "')";
			result = stmt.executeUpdate(sql);
			if (result > 0)
				result = bnIdx;
			// insert에 성공했으면 result에 입력된 글번호를 저장하여 리턴

		} catch (Exception e) {
			System.out.println("noticeInsert() 메소드 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}
		return result;
	}

	public NoticeInfo getNoticeInfo(int bnidx) {
		Statement stmt = null;
		ResultSet rs = null;
		NoticeInfo noticeInfo = null;

		try {
			stmt = conn.createStatement();
			String sql = "select * from t_brd_notice where bn_idx = " + bnidx;
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				noticeInfo = new NoticeInfo();
				
				noticeInfo.setBn_idx(bnidx);
				noticeInfo.setBn_writer(rs.getString("bn_writer"));
				noticeInfo.setBn_title(rs.getString("bn_title"));
				noticeInfo.setBn_content(rs.getString("bn_content"));
				noticeInfo.setBn_date(rs.getString("bn_date"));
				noticeInfo.setBn_read(rs.getInt("bn_read"));
				
			}

		} catch (Exception e) {
			System.out.println("getNoticeInfo() 메소드 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}
		return noticeInfo;
	}

	public int readCountUp(int bnidx) {
		// 특정 게시글의 조회수를 증가시키는 메소드
		Statement stmt = null;
		int result = 0;

		try {
			String sql = "update t_brd_notice set bn_read = bn_read + 1 " + " where bn_idx = " + bnidx;
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);
		} catch (Exception e) {
			System.out.println("readCountUp() 메소드 오류");
			e.printStackTrace();
		} finally {
			close(stmt);
		}
		return result;
	}

	public int getNoticeCount(String where) {
		Statement stmt = null;
		ResultSet rs = null;
		int rcnt = 0;

		try {
			stmt = conn.createStatement();
			String sql = "select count(*) from t_brd_notice " + where;
			rs = stmt.executeQuery(sql);
			if (rs.next())
				rcnt = rs.getInt(1);

		} catch (Exception e) {
			System.out.println("getNoticeCount() 메소드 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}
		return rcnt;
	}

	public ArrayList<NoticeInfo> getNoticeList(String where, int cpage, int psize) {
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<NoticeInfo> noticeList = new ArrayList<NoticeInfo>();
		NoticeInfo noticeInfo = null;

		try {
			stmt = conn.createStatement();
			int snum = (cpage - 1) * psize;
			String sql = "select * from t_brd_notice " + where
					+ " order by bn_idx desc limit " + snum + ", " + psize;
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				noticeInfo = new NoticeInfo();

				noticeInfo.setBn_idx(rs.getInt("bn_idx"));
				noticeInfo.setBn_writer(rs.getString("bn_writer"));
				noticeInfo.setBn_title(rs.getString("bn_title"));
				noticeInfo.setBn_date(rs.getString("bn_date"));
				noticeInfo.setBn_read(rs.getInt("bn_read"));

				noticeList.add(noticeInfo);
			}

		} catch (Exception e) {
			System.out.println("getNoticeList() 메소드 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}
		return noticeList;
	}
}
