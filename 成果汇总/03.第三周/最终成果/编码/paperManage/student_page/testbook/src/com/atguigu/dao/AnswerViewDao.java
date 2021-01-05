package com.atguigu.dao;

import com.atguigu.pojo.AnswerView;

import java.util.List;

/**
 * 查看答案信息
 */
public interface AnswerViewDao {
    /**
     * 获取试题答案
     *
     * @param pro_no 试题编号，通过
     *               {@link com.atguigu.service.PractiseViewService#getPracticeNumber(Integer)} 和
     *               {@link com.atguigu.service.PractiseViewService#separatePracticeNumber(String)}
     *               获取，在Service层进行相关操作
     * @return 试题答案列表
     */
    List<AnswerView> queryAnswers(List<Integer> pro_no);
}