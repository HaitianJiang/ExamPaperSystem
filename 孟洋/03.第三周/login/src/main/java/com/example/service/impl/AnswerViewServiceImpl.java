package com.example.service.impl;

import com.example.dao.AnswerViewDao;
import com.example.dao.impl.AnswerViewDaoImpl;
import com.example.domain.AnswerView;
import com.example.service.AnswerViewService;
import com.example.service.PractiseViewService;

import java.util.List;

public class AnswerViewServiceImpl implements AnswerViewService {
    private AnswerViewDao answerViewDao = new AnswerViewDaoImpl();
    private PractiseViewService practiseViewService = new com.example.service.impl.PracticeViewServiceImpl();

//    public static void main(String[] args) {
//        AnswerViewService answerViewService = new AnswerViewServiceImpl();
//        for(AnswerView answerView: answerViewService.queryAnswerById(6)){
//            System.out.println(answerView);
//        }
//    }

    /**
     * 根据试题编号查询答案内容
     * @param pro_no
     * @return
     */
    @Override
    public List<AnswerView> queryAnswers(List<Integer> pro_no) {
        return answerViewDao.queryAnswers(pro_no);
    }

    /**
     * 根据试卷id显示试题答案
     * @param id 试卷id
     * @return
     */
    @Override
    public List<AnswerView> queryAnswerById(Integer id) {
        AnswerViewService answerViewService = new AnswerViewServiceImpl();
        // 获取试题编号字符串
        String practiceNumber = practiseViewService.getPracticeNumber(id);
        // 分割字符串获取试题编号数组
        List<Integer> pro_no = practiseViewService.separatePracticeNumber(practiceNumber);
        // 获取试题内容
        return answerViewService.queryAnswers(pro_no);
    }

}
