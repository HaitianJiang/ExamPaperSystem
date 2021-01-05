package main.java.org.keshe.servlet;

import main.java.org.keshe.entity.Question;
import main.java.org.keshe.service.IManageService;
import main.java.org.keshe.service.impl.ManageService;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "QuestionDelete", value = "/QuestionDelete")

public class QuestionDelete extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //设置字符集  初始out
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();


        // 获取 修改问题的表单
        String Pro_no=request.getParameter("pro_no");
        int pro_no=0;
        if(Pro_no == null || Pro_no.equals("")) {
            pro_no = 0;
        } else {

            pro_no = Integer.parseInt(Pro_no);
        }

        IManageService manageService =new ManageService();


        if(manageService.deleteQue(pro_no))
        {
//            request.setAttribute("text","cg");
            request.getRequestDispatcher("QuestionQueryByPage").forward(request, response);
            out.println("aaaaa");
            out.println("成功");
        }
        else
        {
            out.println(pro_no);
            out.println("bbbb");

        }



    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
    }
}




