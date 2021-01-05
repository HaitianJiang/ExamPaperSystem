package com.example.service.impl;

import com.example.dao.TeacherDao;
import com.example.domain.Teacher;
import com.example.service.TeacherService;

import java.util.List;

public class TeacherServiceImpl implements TeacherService {
    private TeacherDao dao = new TeacherDao();

    @Override
    public List<Teacher> findAll() {
        // 调用DAO
        return dao.findAll();
    }
}
