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
import java.util.List;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "QuestionAllQuery", value = "/QuestionAllQuery")

public class QuestionAllQuery  extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //设置字符集  初始out
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();


        // 获取 修改问题的表单
        //String pro_no=request.getParameter("pro_no");
        String Pro_no=request.getParameter("pro_no");
        int pro_no=0;
        if(Pro_no == null || Pro_no.equals("")) {
            pro_no = 0;
        } else {

            pro_no = Integer.parseInt(Pro_no);
        }
        String pro_detail	=request.getParameter("pro_detail");
        String option_A=request.getParameter("option_A");
        String option_B=request.getParameter("option_B");
        String option_C=request.getParameter("option_C");
        String option_D=request.getParameter("option_D");
        //String pro_ansno=request.getParameter("pro_ansno");
        String Pro_ansno=request.getParameter("pro_ansno");
        int pro_ansno=0;
        if(Pro_ansno == null || Pro_ansno.equals("")) {
            pro_ansno = 0;
        } else {

            pro_ansno = Integer.parseInt(Pro_ansno);
        }
        String pro_keyw	=request.getParameter("pro_keyw");
        String pro_dif=request.getParameter("pro_dif");
        String cha_no=request.getParameter("cha_no");
        String cha_title=request.getParameter("cha_title");
        String cha_mpiont=request.getParameter("cha_mpiont");
        String pro_type=request.getParameter("pro_type");


        IManageService manageService =new ManageService();

        List<Question> questions=manageService.queryALLQuestions();
       //  根据答案号找 答案
        if(questions!=null)
            for(Question question:questions) {
                String ansdetil=manageService.queryAnswerBySno(pro_ansno);
                question.setPro_ansdetil(ansdetil);
            }


       if(questions!=null)
       {
           out.println("ss");
           request.setAttribute("questions",questions);
         request.getRequestDispatcher("question_manage.jsp").forward(request, response);

       }
       else
       {
           out.println("ssb");
       }



    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
    }
}




