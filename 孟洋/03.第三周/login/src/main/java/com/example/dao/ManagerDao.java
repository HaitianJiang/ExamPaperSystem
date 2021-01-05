package com.example.dao;

import com.example.domain.Manager;
import com.example.util.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class ManagerDao {
    // 声明JDBCTemplate对象共用
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
    public Manager searchManager(Manager loginManager) {

        try {
            // 1、编写sql
            String sql = "select * from manager where mana_no = ? and mana_pwd = ?";

            // 2、调用query方法
            Manager mana = template.queryForObject(sql,
                    new BeanPropertyRowMapper<Manager>(Manager.class), loginManager.getMana_no(), loginManager.getMana_pwd());
            return mana;
        } catch (DataAccessException e) {
            e.printStackTrace(); // 记录日志
            // 若没有查询到返回null值
            return null;
        }
    }

}
