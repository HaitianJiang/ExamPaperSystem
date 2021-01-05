package org.keshe.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {
	public static PreparedStatement pstmt = null;
	public static Connection conn = null;
	public static ResultSet rs = null;
	//private static String url = "jdbc:mysql://localhost:3306/question_manage";
	private static String url = "jdbc:mysql://cdb-lgy538lc.cd.tencentcdb.com:10100/ExamPaperManageSystem?useSSL=false";
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");

		return DriverManager.getConnection(url, "XianyangTian", "xianyang12345");
	//	return DriverManager.getConnection(url, "XianyangTian", "xianyang12345");
	}

	public static PreparedStatement createPreparedStatement(String sql, Object[] params)
			throws ClassNotFoundException, SQLException {
		pstmt = getConnection().prepareStatement(sql);
		if (params != null) {
			for (int i = 0; i < params.length; i++) {
				pstmt.setObject(i + 1, params[i]);

			}
		}
		return pstmt;
	}


	//查询总数
	public static int getTotalCount(String sql ) { //select count(1) from student
		int count = -1 ;
		try {

			pstmt = createPreparedStatement(sql, null);
			rs = pstmt.executeQuery()  ;//88
			if(rs.next()) {
				count = rs.getInt(1) ;
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeAll(rs, pstmt, conn);
		}
		return count;
	}

	// 通用增删改
	public static boolean executeUpdate(String sql, Object[] params) {

		try {

			pstmt = createPreparedStatement(sql, params);

			int rs = pstmt.executeUpdate();
			if (rs > 0) {
				return true;
			} else {
				return false;

			}
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
			return false;

		} catch (SQLException e) {

			e.printStackTrace();
			return false;

		} catch (Exception e) {

			e.printStackTrace();
			return false;

		} finally {

			closeAll(null, pstmt, conn);
		}
	}

	public static void closeAll(ResultSet rs, Statement stmt, Connection connection)

	{
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 查询通用
	public static ResultSet executeQuery(String sql, Object[] params) {

		try {

			pstmt = createPreparedStatement(sql, params);

			rs = pstmt.executeQuery();
			return rs;

		} catch (ClassNotFoundException e) {

			e.printStackTrace();
			return null;

		} catch (SQLException e) {

			e.printStackTrace();
			return null;

		} catch (Exception e) {

			e.printStackTrace();
			return null;
		}
	}

}
