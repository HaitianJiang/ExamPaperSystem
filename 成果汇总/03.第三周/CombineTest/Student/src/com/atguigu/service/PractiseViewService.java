package com.atguigu.service;

import com.atguigu.pojo.PracticeView;

import java.util.List;

/**
 * 获取试卷的试题内容
 */
public interface PractiseViewService {

    /**
     * 获取试卷内容中的习题编号
     * @param id 试卷id
     * @return 以空格隔开的习题编号字符串
     */
    String getPracticeNumber(Integer id);

    /**
     * 把以空格分开的试题编号字符串分隔开
     * @param pro_no 试题编号字符串
     * @return 试题编号的Integer列表
     */
    List<Integer> separatePracticeNumber(String pro_no);

    /**
     * 获取习题列表
     * @param pro_no 习题编号
     * @return 习题列表
     */
    List<PracticeView> queryPractice(List<Integer> pro_no);

    /**
     * 获取试卷的试题具体内容
     * @param id 试卷id
     * @return   试题内容列表
     */
    List<PracticeView> queryPracticeById(Integer id);
}
