package org.keshe.service;

import org.keshe.entity.Question;

import java.util.List;

public interface  IManageService {
    public boolean updateQue(Question question);
    public boolean deleteQue(String pro_no );
    public boolean addQuestion(Question question);
    public List<Question> queryQuestionBySno(String title,String option);
    public List<Question> queryALLQuestions();
}
