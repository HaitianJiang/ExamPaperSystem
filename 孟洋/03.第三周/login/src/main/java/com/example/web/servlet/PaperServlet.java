package com.example.web.servlet;

import com.example.domain.AnswerView;
import com.example.domain.Paper;
import com.example.domain.PracticeView;
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

/**
 * 查看试卷【筛选功能】的Servlet程序
 */
@WebServlet(name = "paperServlet",value = "/paperServlet")
public class PaperServlet extends BaseServlet {
//    private PaperService paperService = new PaperServiceImpl();
//    private PractiseViewService practiseViewService = new PracticeViewServiceImpl();
//    private AnswerService answerService = new AnswerServiceImpl();
//    private AnswerViewService answerViewService = new AnswerViewServiceImpl();

    /**
     * 按照 难度 和 章节 选择试卷
     *
     * @param request
     * @param response
     */
    protected void selectPapers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println("haskihdsakshdak");
        // 获取参数
        String tst_dif = request.getParameter("dif");
        String chapter = request.getParameter("cha");
        if (tst_dif == null || tst_dif.equals(""))
            tst_dif = "全部";
        if (chapter == null || chapter.equals(""))
            chapter = "全部";
        // 查询符合条件的试卷
        System.out.println("giu87yiuhiu");
        PaperServiceImpl paperService = new PaperServiceImpl();
        System.out.println("BIHIHI");
        List<Paper> selectPaper = paperService.selectPapers(tst_dif, chapter);
//        for(Paper paper:selectPaper)
//            System.out.println(paper);
        // 分别保存 难度 和 章节 便于二者级联选择
        request.setAttribute("select_dif", tst_dif);
        request.setAttribute("select_cha", chapter);
        // 保存全部试卷到Request域中
        request.setAttribute("selectPapers", selectPaper);
        // 请求转发到 paper.jsp 页面
//        System.out.println("转发");
        request.getRequestDispatcher("/jsp/paper.jsp").forward(request, response);
//        System.out.println("转发完成");
    }

    /**
     * 按照 难度 和 章节 筛选试卷答案
     *
     * @param request
     * @param response
     */
//    protected void selectAnswers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // 获取参数
//        String tst_dif = request.getParameter("dif");
//        String chapter = request.getParameter("cha");
//        if (tst_dif == null || tst_dif.equals(""))
//            tst_dif = "全部";
//        if (chapter == null || chapter.equals(""))
//            chapter = "全部";
//        // 查询符合条件的试卷
//        List<Paper> selectAnswer = answerService.selectPapers(tst_dif, chapter);
//        // 分别保存 难度 和 章节 便于二者级联选择
//        request.setAttribute("select_dif", tst_dif);
//        request.setAttribute("select_cha", chapter);
//        // 保存全部试卷到Request域中
//        request.setAttribute("selectAnswers", selectAnswer);
//        // 请求转发到 paper.jsp 页面
//        request.getRequestDispatcher("/jsp/answer.jsp").forward(request, response);
//    }


    /**
     * 根据id显示试卷的全部试题内容
     *
     * @param request
     * @param response
     */
//    protected void displayPaperPractise(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // 获取参数
//        Integer id = Integer.valueOf(request.getParameter("paperId"));
//        request.setAttribute("paperId", id);
//        String name = request.getParameter("paperName");
//        request.setAttribute("paperName", name);
//
//        // 查询试卷的所有试题
//        List<PracticeView> practiceViews = practiseViewService.queryPracticeById(id);
//        // 保存试题信息到Request域中
//        request.setAttribute("practiceViews", practiceViews);
//        // 请求转发到 查看试卷试题详细信息 页面
//        request.getRequestDispatcher("/jsp/practiseView.jsp").forward(request, response);
//    }

    /**
     * 根据id显示试卷的全部试题答案
     *
     * @param request
     * @param response
     */
//    protected void displayPaperAnswers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // 获取参数
//        Integer id = Integer.valueOf(request.getParameter("paperId"));
//        request.setAttribute("paperId", id);
//        String name = request.getParameter("paperName");
//        request.setAttribute("paperName", name);
//
//        // 查询试卷的所有试题
//        List<AnswerView> answerViews = answerViewService.queryAnswerById(id);
//        // 保存试题信息到Request域中
//        request.setAttribute("answerViews", answerViews);
//        // 请求转发到 查看试卷试题详细信息 页面
//        request.getRequestDispatcher("/jsp/answerView.jsp").forward(request, response);
//    }

}
