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
import java.util.List;

@WebServlet("/teacherListServlet")
public class TeacherListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 调用service
        TeacherService service = new TeacherServiceImpl();
        List<Teacher> teas = service.findAll();

        // 将list存入request域
        request.setAttribute("teas", teas);

        // 转发到list_course.jsp
        request.getRequestDispatcher(request.getContextPath()+"/jsp/list_course.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
