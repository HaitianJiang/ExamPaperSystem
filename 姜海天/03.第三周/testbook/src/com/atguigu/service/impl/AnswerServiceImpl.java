package com.atguigu.service.impl;

import com.atguigu.dao.AnswerDao;
import com.atguigu.dao.impl.AnswerDaoImpl;
import com.atguigu.domain.Paper;
import com.atguigu.service.AnswerService;

import java.util.List;

public class AnswerServiceImpl implements AnswerService {
    private AnswerDao answerDao = new AnswerDaoImpl();

//    public static void main(String[] args) {
//        for(Paper paper: new PaperServiceImpl().queryAllPapers()){
//            System.out.println(paper);
//        }
//    }

    /**
     * 查看全部试卷信息
     *
     * @return 返回全部试卷中，要显示在页面的全部信息
     */
    @Override
    public List<Paper> queryAllPapers() {
        return answerDao.queryAllPapers();
    }


    @Override
    public List<Paper> selectDifPapers(String tst_dif) {
        return answerDao.selectDifPapers(tst_dif);
    }

    @Override
    public List<Paper> selectChaPapers(String chapter) {
        return answerDao.selectChaPapers(chapter);
    }

    @Override
    public List<Paper> selectPapers(String tst_dif, String chapter) {
        return answerDao.selectPapers(tst_dif, chapter);
    }
}
