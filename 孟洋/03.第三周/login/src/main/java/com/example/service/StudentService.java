package com.example.service;

import com.example.domain.Student;
import com.example.domain.Teacher;

import java.util.List;

public interface StudentService {
    public List<Student> findAll();
    public void updateStudentPwd(Student stu);
    public void addStudent(Student stu);
    public void delStudent(String no);
}
