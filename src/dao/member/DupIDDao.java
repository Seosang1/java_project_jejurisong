package dao.member;

import static db.JdbcUtil.*;
import java.sql.*;
import vo.*;

public class DupIDDao {
// ?šŒ?› ?•„?´?”” ì¤‘ë³µ ?™•?¸?š© ?´?˜?Š¤
	private static DupIDDao dupIDDao;
	private Connection conn;
	private DupIDDao() {}

	public static DupIDDao getInstance() {
		if (dupIDDao == null) {
			dupIDDao = new DupIDDao();
		}
		return dupIDDao;
	}
	public void setConnection(Connection conn) {
		this.conn = conn;
	}

	public int chkDupID(String uid) {
		Statement stmt = null;
		ResultSet rs = null;
		int chkPoint = 0;	// ì¤‘ë³µ?œ ?•„?´?””?˜ ê°œìˆ˜ë¥? ???¥?•  ë³??ˆ˜(ì¤‘ë³µ:1, ë¯¸ì¤‘ë³?:0)

		try {
			String sql = "select count(*) from t_member_info where mi_id = '" + uid + "'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next())	chkPoint = rs.getInt(1);
		} catch(Exception e) {
			System.out.println("chkDupID() ë©”ì†Œ?“œ ?˜¤ë¥?");
			e.printStackTrace();
		} finally {
			close(rs);	close(stmt);
		}

		return chkPoint;
	}
}
