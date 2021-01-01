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
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "QuestionQuery", value = "/QuestionQuery")

public class QuestionQuery  extends HttpServlet{
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

        String title=request.getParameter("title");
        String option=request.getParameter("option");



        IManageService manageService =new ManageService();
        List<Question> questions=null;
        if(option.equals("0"))
        {
            questions=manageService.queryALLQuestions();

        }
        else
        {
            questions=manageService.queryQuestionBySno( title, option);
        }


        if(questions!=null)
        {
            request.setAttribute("questions",questions);
           request.getRequestDispatcher("question_check.jsp").forward(request, response);
            out.println("aaaaa");
            out.println("成功 ");
        }
        else
        {

            out.println("bbbb");

        }



    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
    }
}




