package com.example.service;

import com.example.dao.ManagerDao;
import com.example.dao.StudentDao;
import com.example.dao.TeacherDao;
import com.example.domain.Manager;
import com.example.domain.Student;
import com.example.domain.Teacher;

public class LoginService {
    public int login(Student stu, Teacher tea, Manager mana) {
        //调用dao查询
        ManagerDao dao0 = new ManagerDao();
        StudentDao dao1 = new StudentDao();
        TeacherDao dao2 = new TeacherDao();
        if(dao0.searchManager(mana) == null)
        {
            if(dao1.searchStudent(stu) == null)
            {
                if(dao2.searchTeacher(tea) == null)
                {
                    return -1;
                }
                else
                {
                    return 2;
                }
            }
            else
            {
                return 1;
            }
        }
        else {
            return 0;
        }
    }
}
