package com.atguigu.dao.impl;

import com.atguigu.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 * 完成基本的sql操作，也就是增删改查
 * 该抽象类，直接传入sql语句和参数，就能实现增删改查
 * 是对数据库操作的进一步抽象
 */
public abstract class BaseDao {
    // 使用DbUtils操作数据库
    private QueryRunner queryRunner = new QueryRunner();

    /**
     * update方法用于执行 insert/update/delete语句
     *
     * @return 执行失败，返回-1<br/> 执行成功，返回影响行数
     */
    public int update(String sql, Object... args) {
        // 连接数据库
        Connection connection = JdbcUtils.getConnection();
        // 执行传输过来的sql语句，这个语句可以是insert/update/delete
        try {
            return queryRunner.update(connection, sql, args);
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            JdbcUtils.closeDatabase(connection);
        }
        return -1;
    }

    /**
     * 查询返回一个JavaBean的sql语句，返回一行
     *
     * @param type 返回对象的类型
     * @param sql  执行的sql语句
     * @param args sql的参数值
     * @param <T>  返回类型的泛型
     * @return
     */
    public <T> T queryForOne(Class<T> type, String sql, Object... args) {
        Connection connection = JdbcUtils.getConnection();

        try {
            return queryRunner.query(connection, sql, new BeanHandler<T>(type), args);
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        } finally {
            JdbcUtils.closeDatabase(connection);
        }

        return null;
    }

    /**
     * 查询返回多个javaBean的sql语句 返回多行
     *
     * @param type 返回的对象类型
     * @param sql  执行的sql语句
     * @param args sql对应的参数值
     * @param <T>  返回的类型的泛型
     * @return
     */
    public <T> List<T> queryForList(Class<T> type, String sql, Object... args) {
        Connection con = JdbcUtils.getConnection();
        try {
            return queryRunner.query(con, sql, new BeanListHandler<T>(type), args);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.closeDatabase(con);
        }
        return null;
    }


    /**
     * 执行返回一行一列的sql语句
     *
     * @param sql  执行的sql语句
     * @param args sql对应的参数值
     * @return
     */
    public Object queryForSingleValue(String sql, Object... args) {

        Connection conn = JdbcUtils.getConnection();

        try {
            return queryRunner.query(conn, sql, new ScalarHandler(), args);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.closeDatabase(conn);
        }
        return null;

    }

}
