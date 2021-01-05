package main.java.org.keshe.service;

import main.java.org.keshe.entity.Question;

import java.util.List;

public interface  IManageService {
    public boolean updateQue(Question question);
    public boolean deleteQue(int pro_no );
    public boolean addQuestion(Question question);
    public List<Question> queryQuestionBySno(String title,String option,int currentPage ,int pageSize);
    public List<Question> queryALLQuestions();
    public String queryAnswerBySno(int title);
    public List<Question> queryQuestionsByPage(int currentPage ,int pageSize);
    public int getTotalCount();
}
