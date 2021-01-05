package com.example.web.servlet;

import com.example.domain.Paper;
import com.example.service.AnswerService;
import com.example.service.AnswerViewService;
import com.example.service.PaperService;
import com.example.service.PractiseViewService;
import com.example.service.impl.AnswerServiceImpl;
import com.example.service.impl.AnswerViewServiceImpl;
import com.example.service.impl.PaperServiceImpl;
import com.example.service.impl.PracticeViewServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

@WebServlet(name = "BaseServlet", value = "/BaseServlet")
public class BaseServlet extends HttpServlet {
//    private final PaperService paperService = new PaperServiceImpl();
//    private PractiseViewService practiseViewService = new PracticeViewServiceImpl();
//    private AnswerService answerService = new AnswerServiceImpl();
//    private AnswerViewService answerViewService = new AnswerViewServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("BUUBUBU");
        doPost(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 解决post请求中文乱码问题
        // 一定要在获取请求参数之前调用才有效
        req.setCharacterEncoding("UTF-8");

        String action = req.getParameter("action");
        try {
            // 获取action业务鉴别字符串，获取相应的业务 方法反射对象
            Method method = this.getClass().getDeclaredMethod(action, HttpServletRequest.class, HttpServletResponse.class);
//            System.out.println(method);
            // 调用目标业务 方法
            ((Method) method).invoke(this, req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

//    /**
//     * 按照 难度 和 章节 选择试卷
//     *
//     * @param request
//     * @param response
//     */
//    protected void selectPapers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////        System.out.println("haskihdsakshdak");
//        // 获取参数
//        String tst_dif = request.getParameter("dif");
//        String chapter = request.getParameter("cha");
//        if (tst_dif == null || tst_dif.equals(""))
//            tst_dif = "全部";
//        if (chapter == null || chapter.equals(""))
//            chapter = "全部";
//        // 查询符合条件的试卷
//        System.out.println("AAAAAAAAA");
//        List<Paper> selectPaper = new PaperServiceImpl().selectPapers(tst_dif, chapter);
////        for(Paper paper:selectPaper)
////            System.out.println(paper);
//        // 分别保存 难度 和 章节 便于二者级联选择
//        request.setAttribute("select_dif", tst_dif);
//        request.setAttribute("select_cha", chapter);
//        // 保存全部试卷到Request域中
//        request.setAttribute("selectPapers", selectPaper);
//        // 请求转发到 paper.jsp 页面
//        System.out.println("转发");
//        request.getRequestDispatcher(request.getContextPath()+"/jsp/paper.jsp").forward(request, response);
//        System.out.println("转发完成");
//    }
}
