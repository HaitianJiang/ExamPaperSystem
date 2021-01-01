package org.keshe.servlet;

import org.keshe.entity.Question;
import org.keshe.service.IManageService;
import org.keshe.service.impl.ManageService;

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
        String pro_no=request.getParameter("pro_no");
        String pro_detail	=request.getParameter("pro_detail");
        String option_A=request.getParameter("option_A");
        String option_B=request.getParameter("option_B");
        String option_C=request.getParameter("option_C");
        String option_D=request.getParameter("option_D");
        String pro_ansno=request.getParameter("pro_ansno");
        String pro_keyw	=request.getParameter("pro_keyw");
        String pro_dif=request.getParameter("pro_dif");
        String cha_no=request.getParameter("cha_no");
        String cha_title=request.getParameter("cha_title");
        String cha_mpiont=request.getParameter("cha_mpiont");
        String pro_type=request.getParameter("pro_type");

        Question question=new Question(pro_no,pro_detail,option_A,option_B,option_C,option_D,pro_ansno,pro_keyw,pro_dif,cha_no,cha_title,cha_mpiont,pro_type);

        IManageService manageService =new ManageService();


        if(manageService.deleteQue(pro_no))
        {
//            request.setAttribute("text","cg");
            request.getRequestDispatcher("QuestionAllQuery").forward(request, response);
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




