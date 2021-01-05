package com.example.web.servlet;

import com.example.domain.Student;
import com.example.domain.Teacher;
import com.example.service.StudentService;
import com.example.service.TeacherService;
import com.example.service.impl.StudentServiceImpl;
import com.example.service.impl.TeacherServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addStudentServlet")
public class AddStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置编码
        request.setCharacterEncoding("utf-8");

        String no = request.getParameter("no");
        String name = request.getParameter("name");
        String dis = request.getParameter("dis");
        String grade = request.getParameter("grade");
        String pwd = request.getParameter("pwd");

        Student stu = new Student();
        stu.setStu_no(no);
        stu.setStu_pwd(pwd);
        stu.setStu_name(name);
        stu.setStu_discipline(dis);
        stu.setStu_grade(grade);

        StudentService ss = new StudentServiceImpl();
        ss.addStudent(stu);

        response.sendRedirect(request.getContextPath() + "/studentListServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
