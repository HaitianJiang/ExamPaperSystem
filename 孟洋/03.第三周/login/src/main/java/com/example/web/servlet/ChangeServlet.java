package com.example.web.servlet;

import com.example.domain.Manager;
import com.example.domain.Student;
import com.example.domain.Teacher;
import com.example.service.LoginService;
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
import java.io.PrintWriter;


@WebServlet("/changeServlet")
public class ChangeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置编码
        request.setCharacterEncoding("utf-8");

        // 获取请求参数
        String no = request.getParameter("username");
        String oldPwd = request.getParameter("old");
        String newPwd = request.getParameter("new");

        Manager mana = new Manager();
        mana.setMana_no(no);
        mana.setMana_pwd(oldPwd);
        Student stu = new Student();
        stu.setStu_no(no);
        stu.setStu_pwd(oldPwd);
        Teacher tea = new Teacher();
        tea.setTea_no(no);
        tea.setTea_pwd(oldPwd);

        LoginService ls = new LoginService();
        int chose = ls.login(stu, tea, mana);
        PrintWriter out;
        switch (chose)
        {

            case 1:
                StudentService ss = new StudentServiceImpl();
                stu.setStu_pwd(newPwd);
                ss.updateStudentPwd(stu);
                response.setContentType("text/html;charset=utf-8");

                out=response.getWriter();

                out.print("<script language='javascript'>alert('修改成功！');window.location.href='/index.jsp';</script>");
                break;
            case 2:
                TeacherService ts = new TeacherServiceImpl();
                tea.setTea_pwd(newPwd);
                ts.updateTeacherPwd(tea);
                response.setContentType("text/html;charset=utf-8");

                out=response.getWriter();

                out.print("<script language='javascript'>alert('修改成功！');window.location.href='/index.jsp';</script>");
                break;
            default:
                // 账号或密码输入错误
                response.setContentType("text/html;charset=utf-8");

                out=response.getWriter();

                out.print("<script language='javascript'>alert('用户名或密码错误，请重新输入');window.location.href='/jsp/passwdcg.jsp';</script>");
                break;

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
