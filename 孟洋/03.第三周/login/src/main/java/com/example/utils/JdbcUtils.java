package com.example.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcUtils {


    /**
     * 连接数据库
     *
     * @return Connection对象
     */
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
//            String url = "jdbc:mysql://localhost:3306/book";
//            String user = "root";
//            String password = "jht990107+";
            String url = "jdbc:mysql://cdb-lgy538lc.cd.tencentcdb.com:10100/ExamPaperManageSystem";
            String user = "HaitianJiang";
            String password = "jht990107+";
            return DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException f) {
//            System.out.println("网络没有连接！");
            f.printStackTrace();
            return null;
        }
    }

    /**
     * 关闭数据库
     *
     * @param conn 数据库连接对象
     */
    public static void closeDatabase(Connection conn) {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException throwable){
            throwable.printStackTrace();
        }

    }
}
