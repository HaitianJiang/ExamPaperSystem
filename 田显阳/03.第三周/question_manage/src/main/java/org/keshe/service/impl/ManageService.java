package org.keshe.service.impl;

import org.keshe.dao.IQuestionManage;
import org.keshe.dao.impl.QuestionManage;
import org.keshe.entity.Question;
import org.keshe.service.IManageService;

import java.util.List;

public class ManageService implements IManageService {


    IQuestionManage questionManage=new QuestionManage();

    //  根据题号修改题目
    public boolean updateQue(Question question) {
        return questionManage.updateBySno(question);
    }

   //   根据题号删除题目
    public boolean deleteQue(int pro_no) {
        return questionManage.deleteBySno(pro_no );
    }

    //   根据题号增加题目
    public boolean addQuestion(Question question) {
        return questionManage.addQuestion(question);
    }

    //   根据题号查询题目
    public List<Question> queryQuestionBySno(String title,String option,int currentPage ,int pageSize) {
        return questionManage.queryBySno( title,option, currentPage , pageSize);
    }

    //   查询所有题目
    public List<Question> queryALLQuestions() {
        return questionManage.queryAllQuestions();
    }

    //   根据答案号查询答案
    public String queryAnswerBySno(int title) {
        return questionManage.queryByano( title);
    }

    //查询当前页的数据集合
    public List<Question> queryQuestionsByPage(int currentPage, int pageSize) {
        return questionManage.queryQuestionsByPage(currentPage, pageSize);
    }

    //查询数据总条数
    public int getTotalCount() {
        return questionManage.getTotalCount();
    }


}
