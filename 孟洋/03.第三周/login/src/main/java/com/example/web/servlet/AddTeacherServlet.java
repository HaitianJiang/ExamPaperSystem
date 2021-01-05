package com.example.web.servlet;

import com.example.domain.Teacher;
import com.example.service.TeacherService;
import com.example.service.impl.TeacherServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addTeacherServlet")
public class AddTeacherServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置编码
        request.setCharacterEncoding("utf-8");

        String no = request.getParameter("no");
        String name = request.getParameter("name");
        String dis = request.getParameter("dis");
        String mail = request.getParameter("mail");
        String pwd = request.getParameter("pwd");

        Teacher tea = new Teacher();
        tea.setTea_no(no);
        tea.setTea_pwd(pwd);
        tea.setTea_name(name);
        tea.setTea_discipline(dis);
        tea.setTea_mail(mail);

        TeacherService ts = new TeacherServiceImpl();
        ts.addTeacher(tea);

        response.sendRedirect(request.getContextPath() + "/teacherListServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
