package svc.chart;


import static db.JdbcUtil.*;
import java.sql.*;
import java.util.ArrayList;

import dao.chart.*;
import vo.*;

public class ChartSvc {


	public ArrayList<ChartReplyInfo> getChartReplCnt(char code) {  
		ArrayList<ChartReplyInfo> list = new ArrayList<ChartReplyInfo>();
		Connection conn = getConnection();
		ChartDao dao = ChartDao.getInstance();
		dao.setConnection(conn);
		list = dao.getChartReplCnt(code);
		close(conn);

		return list;
	}
}
