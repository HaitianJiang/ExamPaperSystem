package org.keshe.dao;

import org.keshe.entity.Question;

import java.util.List;

public interface IQuestionManage {
    // 更新题目信息
    public boolean updateBySno(Question question);
    public boolean deleteBySno(String pro_no );
    public boolean addQuestion(Question question);
    public List<Question> queryAllQuestions() ;
    public List<Question> queryBySno(String title,String option);
}
