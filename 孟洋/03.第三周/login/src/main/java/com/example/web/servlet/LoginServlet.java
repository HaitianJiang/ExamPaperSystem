package com.example.web.servlet;

import com.example.dao.ManagerDao;
import com.example.dao.StudentDao;
import com.example.dao.TeacherDao;

import com.example.domain.Student;
import com.example.domain.Teacher;
import com.example.domain.Manager;
import com.example.service.LoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 设置编码
        request.setCharacterEncoding("utf-8");


        // 获取请求参数
        String no = request.getParameter("username");
        String pwd = request.getParameter("password");


        Manager mana = new Manager();
        mana.setMana_no(no);
        mana.setMana_pwd(pwd);
        Student stu = new Student();
        stu.setStu_no(no);
        stu.setStu_pwd(pwd);
        Teacher tea = new Teacher();
        tea.setTea_no(no);
        tea.setTea_pwd(pwd);

        LoginService ls = new LoginService();
        int chose = ls.login(stu, tea, mana);

        switch (chose)
        {
            case 0: mana = new ManagerDao().searchManager(mana);
                request.setAttribute("mana",mana);
                request.getRequestDispatcher(request.getContextPath()+"/jsp/manager.jsp").forward(request, response);
                break;
            case 1: stu = new StudentDao().searchStudent(stu);
                request.setAttribute("stu",stu);
                // 重定向
                // 设置响应内容类型
                response.setContentType("text/html;charset=UTF-8");

                // 要重定向的新位置
                String site = new String("http://localhost:8088/testbook/jsp/paper.jsp");

                response.setStatus(response.SC_MOVED_TEMPORARILY);
                response.setHeader("Location", site);
//                request.getRequestDispatcher(request.getContextPath()+"/index.jsp").forward(request, response);
                break;
            case 2: tea = new TeacherDao().searchTeacher(tea);
                request.setAttribute("tea",tea);
                request.getRequestDispatcher(request.getContextPath()+"/index.jsp").forward(request, response);
                break;
            default:

                response.setContentType("text/html;charset=utf-8");

                PrintWriter out=response.getWriter();

                out.print("<script language='javascript'>alert('用户名或密码错误，请重新输入');window.location.href='/index.jsp';</script>");
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.doGet(request, response);
    }
}
