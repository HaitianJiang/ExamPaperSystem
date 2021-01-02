package com.example.dao;

import com.example.domain.Teacher;
import com.example.util.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class TeacherDao {
    // 声明JDBCTemplate对象共用
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
    public Teacher searchTeacher(Teacher loginTeacher) {

        try {
            // 1、编写sql
            String sql = "select * from teacher where tea_no = ? and tea_pwd = ?";

            // 2、调用query方法
            Teacher tea = template.queryForObject(sql,
                    new BeanPropertyRowMapper<Teacher>(Teacher.class), loginTeacher.getTea_no(), loginTeacher.getTea_pwd());
            return tea;
        } catch (DataAccessException e) {
            e.printStackTrace(); // 记录日志
            // 若没有查询到返回null值
            return null;
        }
    }

    public List<Teacher> findAll() {

        // 定义sql
        String sql = "select * from teacher";
        List<Teacher> teas = template.query(sql,
                new BeanPropertyRowMapper<Teacher>(Teacher.class));
        return teas;
    }
}
