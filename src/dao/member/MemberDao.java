package dao.member;

import static db.JdbcUtil.*;
import javax.sql.*;
import java.sql.*;
import java.util.*;
import vo.*;

public class MemberDao {
// �뜝�럩�뤂�뜝�럩�쐸 占쎄슈�뜝�룞�삕占쎌죨 DB�뜝�럩�굚�뜝�럥�뵜�뜝�럩諭� �뜝�럥堉꾢뜝�럩�젷�슖�댙�삕 嶺뚳퐣瑗띰옙遊뷴뜝�럥由��뜝�럥裕� 嶺뚮∥�뾼占쎄틬�뜝�럥援▼뜝�럥援뜹뜝�럩諭� �뜝�럥堉뽩뜝�룞�삕 �뜝�럡源삣뜝�럩�굥�뜝�럥裕�
	private static MemberDao memberDao;
	private Connection conn;
	private MemberDao() {}

	public static MemberDao getInstance() {
		if (memberDao == null)	memberDao = new MemberDao();
		return memberDao;
	}
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	public int memberJoin(MemberInfo memberInfo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		try {
			String sql = "insert into t_member_info (mi_id, mi_pwd, mi_name, " + 
				"mi_birth, mi_gender, mi_phone, mi_email, mi_issns, mi_ismail, mi_pic) " +
				"values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
				
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberInfo.getMi_id());
			pstmt.setString(2, memberInfo.getMi_pwd());
			pstmt.setString(3, memberInfo.getMi_name());
			pstmt.setString(4, memberInfo.getMi_birth());
			pstmt.setString(5, memberInfo.getMi_gender());
			pstmt.setString(6, memberInfo.getMi_phone());
			pstmt.setString(7, memberInfo.getMi_email());
			pstmt.setString(8, memberInfo.getMi_issns());
			pstmt.setString(9, memberInfo.getMi_ismail());
			pstmt.setString(10, memberInfo.getMi_pic());
			System.out.println(pstmt);
			
			result = pstmt.executeUpdate();
			if (result > 0) {
				sql = "insert into t_member_addr (mi_id, ma_zip, ma_addr1, ma_addr2) " + 
					"values (?, ?, ? , ?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, memberInfo.getMi_id());
				pstmt.setString(2, memberInfo.getMa_zip());
				pstmt.setString(3, memberInfo.getMa_addr1());
				pstmt.setString(4, memberInfo.getMa_addr2());
				System.out.println(pstmt);
				result += pstmt.executeUpdate();
				
			}
		} catch(Exception e) {
			System.out.println("memberJoin() 嶺뚮∥�뾼占쎄틬�뜝�럥援� �뜝�럩沅롳옙紐닷뜝占�");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
	
	public int memberUpdate(MemberInfo memberInfo) {
	// �뜝�럩�뤂�뜝�럩�쐸 �뜝�럩�젧�솻洹ｏ옙�뜝�룞�삕 �뜝�럥�빢�뜝�럩�젧�뜝�럥由��뜝�럥裕� 嶺뚮∥�뾼占쎄틬�뜝�럥援�
		int result = 0;
		Statement stmt = null;

		try {
			String sql = "update t_member_info set ";
			if (!memberInfo.getMi_pwd().equals("")) {	// 占쎈쑏熬곣뫅�삕�뵓怨뺣쐡占쎄퉰�뜝�럥利� �솻洹⑥삕�뇦猿뗫윪占쎈뻣
				sql += "mi_pwd = '" + memberInfo.getMi_pwd() + "', ";
			}
			sql += "mi_phone = '"	+ memberInfo.getMi_phone()	+ "', ";
			sql += "mi_email = '"	+ memberInfo.getMi_email()	+ "', ";
			sql += "mi_issns = '"	+ memberInfo.getMi_issns()	+ "', ";
			sql += "mi_ismail = '"	+ memberInfo.getMi_ismail()	+ "' ";
			if (memberInfo.getMi_pic() != null) {
				sql += "mi_pic = '"		+ memberInfo.getMi_pic()	+ "' ";	
			}
			sql += "where mi_id = '"+ memberInfo.getMi_id() 	+ "' ";
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);

		} catch(Exception e) {
			System.out.println("memberUpdate() 嶺뚮∥�뾼占쎄틬�뜝�럥援� �뜝�럩沅롳옙紐닷뜝占�");
			e.printStackTrace();
		} finally {
			close(stmt);
		}

		return result + 2;
	}

	public int memberDelete(String miid) {
	// �뜝�럩�뤂�뜝�럩�쐸�뜝�럩諭� �뜝�럡�돮�뜝�럥�떄�뜝�럥六삣뜝�럡�뀞�뜝�럥裕� 嶺뚮∥�뾼占쎄틬�뜝�럥援�
		int result = 0;
		Statement stmt = null;

		try {
			String sql = "update t_member_info set mi_isactive = 'n' " + 
				" where mi_id = '" + miid + "' ";
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);

		} catch(Exception e) {
			System.out.println("嶺뚮、�걞�떋占� �뜝�럥堉꾢뜝�럩沅�() 嶺뚮∥�뾼占쎄틬�뜝�럥援� �뜝�럩沅롳옙紐닷뜝占�");
			e.printStackTrace();
		} finally {
			close(stmt);
		}

		return result;
	}
	

	public HashMap<String, String> delete(String whereInDel, String hotelRegId) {

		HashMap<String, String> ret = new HashMap<String, String>();

		Statement stmt = null;
		ResultSet rs = null;

		int rcnt = 0;
		int result = 0;

		try { 
			String sql = " update t_member_info set mi_isactive = 'n' where mi_id in (" + whereInDel + ") ";
			System.out.println("* delete : " + sql);
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);

			if (result > 0) {
				ret.put("result", "success");
				ret.put("msg", "삭제처리가 완료되었습니다.");
			} else {
				ret.put("result", "fail");
				ret.put("msg", "삭제처리가 실패되었습니다. 다시 시도해주세요.");
			} 

		} catch (Exception e) {
			System.out.println("* !!! Delete Error !!!");

			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return ret;
	}

	public int getMemberInfo(String miid) {
		int result = 0;
		Statement stmt = null;
		
		try {
			String sql = "select t_member_info set mi_isactive = 'n' " + 
				" where mi_id = '" + miid + "' ";
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);
			
		} catch(Exception e) {
			System.out.println("MemberDao getMemberInfo �떎�뙣");
			e.printStackTrace();
		} finally {
			close(stmt);
		}

		return result;
	}

	 
	public int getCount(String where) {

		Statement stmt = null;
		ResultSet rs = null;
		int rcnt = 0;

		try {
			String sql = "select count(*) from t_member_info " + where;
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
 
	public MemberInfo getSelectOne(String where) {
		MemberInfo info = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "select * from t_member_info " + where;
			System.out.println("* getinfo : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				info = new MemberInfo();
				info.setMi_id(rs.getString("mi_id")); 
				info.setMi_name(rs.getString("mi_name")); 
				info.setMi_birth(rs.getString("mi_birth")); 
				info.setMi_gender(rs.getString("mi_gender"));
				info.setMi_phone(rs.getString("mi_phone")); 
				info.setMi_email(rs.getString("mi_email")); 
				info.setMi_issns(rs.getString("mi_issns")); 
				info.setMi_ismail(rs.getString("mi_ismail")); 

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
  
	public ArrayList<MemberInfo> getList(String where, String orderBy, int cpage, int psize) {

		ArrayList<MemberInfo> list = new ArrayList<MemberInfo>();
		Statement stmt = null;
		ResultSet rs = null;
		MemberInfo info = null;
		int snum = (cpage - 1) * psize;

		try {

			String sql = "select * from t_member_info " + where + orderBy ;
			if (psize >= 0) sql += " limit " + snum + ", " + psize;
			System.out.println("*  getList : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				info = new MemberInfo();

				info.setMi_id(rs.getString("mi_id")); 
				info.setMi_name(rs.getString("mi_name")); 
				info.setMi_birth(rs.getString("mi_birth")); 
				info.setMi_gender(rs.getString("mi_gender"));
				info.setMi_phone(rs.getString("mi_phone")); 
				info.setMi_email(rs.getString("mi_email")); 
				info.setMi_issns(rs.getString("mi_issns")); 
				info.setMi_ismail(rs.getString("mi_ismail")); 

				list.add(info);
			}
		} catch (Exception e) {
			System.out.println("*  getList() Fail");
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}

		return list;
	}


	public ChartAgeInfo getAges() {

		Statement stmt = null;
		ResultSet rs = null;
		ChartAgeInfo ageInfo = new ChartAgeInfo();
		
		try {
			String sql = " select "
					+ " sum(if(date_format(now(),'%Y')-substring(mi_birth,1,4) between 0 and 19 , 1, 0)) as age_10, "
					+ " sum(if(date_format(now(),'%Y')-substring(mi_birth,1,4) between 20 and 29 , 1, 0)) as age_20, "
					+ " sum(if(date_format(now(),'%Y')-substring(mi_birth,1,4) between 30 and 39 , 1, 0)) as age_30, "
					+ " sum(if(date_format(now(),'%Y')-substring(mi_birth,1,4) between 40 and 49 , 1, 0)) as age_40, "
					+ " sum(if(date_format(now(),'%Y')-substring(mi_birth,1,4) between 50 and 100 , 1, 0)) as age_etc "
					+ " from t_member_info ";
			System.out.println("* getAges : " + sql);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				ageInfo.setAge10(rs.getInt("age_10")); 
				ageInfo.setAge20(rs.getInt("age_20")); 
				ageInfo.setAge30(rs.getInt("age_30")); 
				ageInfo.setAge40(rs.getInt("age_40")); 
				ageInfo.setAgeEtc(rs.getInt("age_etc")); 
			}
			
		} catch(Exception e) {
			System.out.println("getAges error");
			e.printStackTrace();
		} finally {
			close(stmt);
		}

		return ageInfo;
	}

}
