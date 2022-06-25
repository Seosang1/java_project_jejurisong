package dao.user;

import static db.JdbcUtil.*;
import java.util.*;
import javax.sql.*;
import java.sql.*;
import vo.*;

public class UserAdminDao {
	private static UserAdminDao adminLoginDao;
	private Connection conn;
	private UserAdminDao() {}

	public static UserAdminDao getInstance() {
		if (adminLoginDao == null) {
			adminLoginDao = new UserAdminDao();
		}
		return adminLoginDao;
	}
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	public AdminInfo getLoginAdmin(String uid, String pwd) {
		AdminInfo adminInfo = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			String sql = "select * from t_admin_info where ai_id = '" + uid + 
				"' and ai_pwd = '" + pwd + "' and ai_isrun = 'y'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				adminInfo = new AdminInfo();

				adminInfo.setAi_idx(rs.getInt("ai_idx"));
				adminInfo.setAi_id(uid);
				adminInfo.setAi_name(rs.getString("ai_name")); 
				adminInfo.setAi_regdate(rs.getString("ai_regdate"));
			}
		} catch(Exception e) {
			System.out.println("getLoginAdmin() �޼ҵ� ����");
			e.printStackTrace();
		} finally {
			close(rs);	close(stmt);
		}

		return adminInfo;
	}
}
