package com.example.service.impl;

import com.example.dao.StudentDao;
import com.example.domain.Student;
import com.example.service.StudentService;

import java.util.List;

public class StudentServiceImpl implements StudentService {

    private StudentDao dao = new StudentDao();
    @Override
    public List<Student> findAll() {
        return dao.findAll();
    }

    @Override
    public void updateStudentPwd(Student stu) {
        dao.updateStudentPwd(stu);
    }

    @Override
    public void addStudent(Student stu) {
        dao.addStudent(stu);
    }

    @Override
    public void delStudent(String no) {
        dao.delStudent(no);
    }
}
