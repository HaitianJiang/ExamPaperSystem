package com.example.dao;

import com.example.domain.Student;
import com.example.util.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class StudentDao {
    // 声明JDBCTemplate对象共用
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
    public Student searchStudent(Student loginStudent) {

        try {
            // 1、编写sql
            String sql = "select * from student where stu_no = ? and stu_pwd = ?";

            // 2、调用query方法
            Student stu = template.queryForObject(sql,
                    new BeanPropertyRowMapper<Student>(Student.class), loginStudent.getStu_no(), loginStudent.getStu_pwd());
            return stu;
        } catch (DataAccessException e) {
            e.printStackTrace(); // 记录日志
            // 若没有查询到返回null值
            return null;
        }
    }
}
