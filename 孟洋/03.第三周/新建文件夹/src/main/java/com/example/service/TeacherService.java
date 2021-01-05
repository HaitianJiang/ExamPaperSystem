package com.example.service;

import com.example.domain.Teacher;

import java.util.List;

// 课程负责人管理的业务接口
public interface TeacherService {
    public List<Teacher> findAll();
}
