package com.example.web.servlet;

import com.example.service.TeacherService;
import com.example.service.impl.TeacherServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delTeacherServlet")
public class DelTeacherServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String no = request.getParameter("no");

        TeacherService ts = new TeacherServiceImpl();
        ts.delTeacher(no);

        response.sendRedirect(request.getContextPath() + "/teacherListServlet");
    }
}
