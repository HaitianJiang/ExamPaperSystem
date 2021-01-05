package org.keshe.dao;

import org.keshe.entity.Question;

import java.util.List;

public interface IQuestionManage {
    // 更新题目信息
    public boolean updateBySno(Question question);
    public boolean deleteBySno(int pro_no );
    public boolean addQuestion(Question question);
    public List<Question> queryAllQuestions() ;
    public List<Question> queryBySno(String title,String option,int currentPage, int pageSize);
    //   根据答案号查询答案
    public String queryByano(int title);

    //currentPage:当前页（页码）   pageSize：页面大小（每页显示的数据条数）
    public  List<Question> queryQuestionsByPage(int currentPage,int pageSize);
    public int getTotalCount();//查询总数据数


}
