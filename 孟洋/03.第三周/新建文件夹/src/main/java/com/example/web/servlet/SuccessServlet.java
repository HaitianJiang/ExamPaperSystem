package com.example.web.servlet;

import com.example.domain.Manager;
import com.example.domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/successServlet")
public class SuccessServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 获取request域中共享的user对象
        Manager mana = (Manager) request.getAttribute("mana");
        // 设置编码
        if(mana != null) {
            response.setContentType("text/html;charset=utf-8");

            response.getWriter().write("登录成功！" + mana.getMana_name() + "，欢迎您！");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
