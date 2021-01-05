package com.atguigu.dao.impl;

import com.atguigu.dao.AnswerViewDao;
import com.atguigu.pojo.AnswerView;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class AnswerViewDaoImpl extends BaseDao implements AnswerViewDao {
//    public static void main(String[] args) {
//        List<Integer> p = new ArrayList<>(Arrays.asList(26,30,31));
//        for(AnswerView answerView:new AnswerViewDaoImpl().queryAnswers(p)){
//            System.out.println(answerView);
//        }
//    }

    @Override
    public List<AnswerView> queryAnswers(List<Integer> pro_no) {
        List<AnswerView> answerViews = new ArrayList<>();
        String sql = "select `pro_type`,`pro_detail`,`ans_detail` " +
                "from problem,answer " +
                "where answer.`pro_no`=? and problem.`pro_no`=answer.`pro_no`";
        for(Integer i: pro_no){
            answerViews.add(queryForOne(AnswerView.class,sql,i));
        }
        return answerViews;
    }
}
