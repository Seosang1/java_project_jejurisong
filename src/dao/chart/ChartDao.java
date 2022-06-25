package dao.chart;

import static db.JdbcUtil.*;
import java.util.*; 
import java.sql.*;
import vo.*;

public class ChartDao {
	private static ChartDao ReplyDao;
	private Connection conn;

	private ChartDao() {}

	public static ChartDao getInstance() {
		if (ReplyDao == null)
			ReplyDao = new ChartDao();
		return ReplyDao;
	}

	public void setConnection(Connection conn) {
		System.out.println("[ReplyDao]");
		this.conn = conn;
	}
 

	public ArrayList<ChartReplyInfo> getChartReplCnt(char code) {

		ArrayList<ChartReplyInfo> list = new ArrayList<ChartReplyInfo>();
		ChartReplyInfo info = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			String sql = " select t.yyyymm, IFNULL(cnt, 0) cnt from tmp_date t left join ( "
					+ "	select  DATE_FORMAT(reply_reg_date, \"%Y-%m\") yyyymm, count(*)  cnt from t_reply_list  "
					+ "    where reply_type = '"+code+"' "
					+ "	group by DATE_FORMAT(reply_reg_date, \"%Y-%m\") ) d "
					+ "on t.yyyymm = d.yyyymm order by t.yyyymm" ;
			System.out.println("* getChartReplCnt : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				info = new ChartReplyInfo();

				info.setDate(rs.getString("yyyymm"));  
				info.setValue(rs.getInt("cnt")); 

				list.add(info);
			}
		} catch (Exception e) {
			System.out.println("* getChartReplCnt() 메소드 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return list;
	}	
}
