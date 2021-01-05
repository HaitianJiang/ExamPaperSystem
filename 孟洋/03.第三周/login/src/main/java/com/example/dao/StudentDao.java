package com.example.dao;

import com.example.domain.Student;
import com.example.domain.Teacher;
import com.example.util.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

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

    public List<Student> findAll() {

        // 定义sql
        String sql = "select * from student";
        List<Student> stus = template.query(sql,
                new BeanPropertyRowMapper<Student>(Student.class));
        return stus;
    }

    public void updateStudentPwd(Student stu) {
        String sql = "update student set stu_pwd = ? where stu_no = ?";
        template.update(sql, stu.getStu_pwd(), stu.getStu_no());
    }

    public void addStudent(Student stu) {
        String sql = "insert into student values(?, ?, ?, ?, ?)";
        template.update(sql, stu.getStu_no(), stu.getStu_name(), stu.getStu_pwd(), stu.getStu_discipline(), stu.getStu_grade());

    }
    public void delStudent(String no) {
        String sql = "delete from student where stu_no = ?";
        template.update(sql, no);
    }
}
