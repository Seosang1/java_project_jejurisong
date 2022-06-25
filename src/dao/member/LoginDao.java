package dao.member;

import static db.JdbcUtil.*;
import java.sql.*;
import vo.*;

public class LoginDao {
// 濡쒓?���씤 ?����?�� ?��?��?��?���? �깮�꽦�븯�뿬 �떎�뻾�떆�궎�뒗 �겢�옒�뒪
	private static LoginDao loginDao;
	// �씤�뒪�꽩�뒪 硫ㅻ�?媛� �븘�땶 �겢�옒�뒪 硫ㅻ�?濡� loginDao �씤�뒪�꽩�뒪?���? �꽑�뼵�븿�쑝濡쒖?�� �뿬�윭 媛쒓�? �븘�땶 �븯�굹留� 議댁?���븯寃� �맖
	private Connection conn;
	// �겢�옒�뒪 �쟾泥댁뿉��? Connection �씤�뒪�꽩�뒪 conn�쓣 �궗�슜�븷 �닔 �엳寃� �맖
	private LoginDao() {}
	// �쇅?����뿉��? 吏곸?���쟻�쑝濡� �씤�뒪�꽩�뒪?���? �깮�꽦�븯�뒗 寃�(new �궎�썙�뱶 �궗�슜)�쓣 留됯�? �쐞�빐 private�쑝濡� 湲곕?�� �깮�꽦�옄?���? �꽑�뼵

	public static LoginDao getInstance() {
	// �씤�뒪�꽩�뒪?���? �깮�꽦�빐二쇰?�� 硫붿?���뱶濡� �븯�굹�쓽 �씤�뒪�꽩�뒪留� �깮�꽦�떆�궡(singleton 諛⑹?��)
	// DB�옉�뾽�쓣 留롮?�� �븯�뒗 �겢�옒�뒪 �듅�꽦�긽 �뿬�윭 媛쒖?�� �씤�뒪�꽩�뒪媛� �깮�꽦�릺硫� 洹몃쭔��? 
	// 留롮�? �닔�쓽 DB�뿰寃�(Connection)�씠 �깮湲곕�濡�? �쟾泥댁?���씤 �냽�룄 ���븯�쓽 �슦�젮媛� �엳�뼱 �떛湲��넠 諛⑹?���쓣 �궗�슜
		if (loginDao == null) {
		// 硫ㅻ�?濡� �꽑�뼵�맂 LoginDao �삎 �씤�뒪�꽩�뒪 loginDao媛� null�씠硫�(�씤�뒪�꽩�뒪媛� �깮�꽦�릺吏� �븡�븯�쑝硫�)
			loginDao = new LoginDao();
			// �깮�꽦�맂 loginDao �씤�뒪�꽩�뒪媛� �뾾�쑝誘�濡� �깉濡�寃� �븯�굹 �깮�꽦�븿
		}
		return loginDao;
	}
	public void setConnection(Connection conn) {
	// LoginSvc �겢�옒�뒪�뿉�꽌 蹂�?�? Connection媛앹껜瑜�? 諛쏆�? 硫ㅻ�?�씤 conn�뿉 ���옣
	// �쇅?����뿉��? Connection 媛앹껜瑜�? 諛쏅?�� �씠��?�뒗 DB�옉�뾽�씠 �뿬�윭 踰덉?�� 寃쎌?�� 
	// Connection 媛앹껜瑜�? �뿬�윭 踰� �깮�꽦�븯�뒗 寃껋?�� 留됯�? �쐞�빐 硫ㅻ�?濡� 吏��젙�븯�뿬 �궗�슜
		this.conn = conn;
	}
	public MemberInfo getLoginMember(String uid, String pwd) {
	// �궗�슜�옄媛� �엯�젰�븳 �븘�씠�뵒�� ?��꾨�踰덊?��?���? �씠�슜�븯�뿬 濡쒓?���씤 �썑 �븘�슂�븳 �궗�슜�옄�젙蹂�?�� ?��붿텧�븯�뿬 MemberInfo �삎�쑝濡� ?��?�꽩�븯�뒗 硫붿?���뱶
		MemberInfo loginMember = null;	// 濡쒓?���씤 �썑 �궗�슜�옄�젙蹂�?�� ���옣�븷 �씤�뒪�꽩�뒪
		Statement stmt = null;
		ResultSet rs = null;
		try {
		// DB?����?�� �옉�뾽�뿉�꽌�뒗 ��?���遺꾩쓽 硫붿?���뱶媛� 'throws SQLException'濡� �꽑�뼵�릺�뼱 �엳湲� �븣?��몄뿉 �삁�쇅泥섎?��?���? �빐�빞 �븿 
			stmt = conn.createStatement();
			String sql = "select * from t_member_info where " + 
				"mi_id = '" + uid + "' and mi_pwd = '" + pwd + "' "  ;
			System.out.print("getLoginMember : " + sql);
			rs = stmt.executeQuery(sql);

			if (rs.next()) {	// 濡쒓?���씤 �꽦?�듭?��
				loginMember = new MemberInfo();	// 濡쒓?���씤 �꽦?�듭?���뿉留� �깮�꽦�릺�뒗 �씤�뒪�꽩�뒪
				// 濡쒓?���씤 �떎�뙣�떆�뿉�뒗 loginMember媛� ?��꾩뼱 �엳�뒗 �긽�깭(null)濡� ?��?�꽩�릺寃� �븿

				loginMember.setMi_id(uid);
				loginMember.setMi_pwd(pwd);
				loginMember.setMi_name(rs.getString("mi_name"));
				loginMember.setMi_birth(rs.getString("mi_birth"));
				loginMember.setMi_gender(rs.getString("mi_gender"));
				loginMember.setMi_phone(rs.getString("mi_phone"));
				loginMember.setMi_email(rs.getString("mi_email"));
				loginMember.setMi_issns(rs.getString("mi_issns"));
				loginMember.setMi_ismail(rs.getString("mi_ismail")); 
				// MemberInfo �겢�옒�뒪�쓽 �씤�뒪�꽩�뒪 loginMember�뿉 �쉶�썝�젙蹂�?뱾�?�� 湲곕?��二쇱?��?���? ���옣
			}

		} catch(Exception e) {
			System.out.println("getLoginMember() 硫붿?���뱶 �삤?���?");
			e.printStackTrace();
		} finally {
			close(rs);	close(stmt);
		}

		return loginMember;
	}
}
