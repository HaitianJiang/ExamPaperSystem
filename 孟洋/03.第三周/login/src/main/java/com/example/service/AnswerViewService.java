package com.example.service;

import com.example.domain.AnswerView;

import java.util.List;

public interface AnswerViewService {
    List<AnswerView> queryAnswers(List<Integer> pro_no);

    /**
     * 获取试卷的试题答案
     * @param id 试卷id
     * @return   试题答案列表
     */
    List<AnswerView> queryAnswerById(Integer id);
}
