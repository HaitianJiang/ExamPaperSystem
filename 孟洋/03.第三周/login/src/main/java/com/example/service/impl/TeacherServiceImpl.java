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

    @Override
    public void updateTeacherPwd(Teacher tea) {
        dao.updateTeacherPwd(tea);
    }

    @Override
    public void addTeacher(Teacher tea) {
        dao.addTeacher(tea);
    }

    @Override
    public void delTeacher(String no) {
        dao.delTeacher(no);
    }


}
