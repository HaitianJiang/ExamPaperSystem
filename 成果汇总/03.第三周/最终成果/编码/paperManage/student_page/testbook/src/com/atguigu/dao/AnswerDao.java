package com.atguigu.dao;

import com.atguigu.pojo.Paper;

import java.util.List;

/**
 * 查询可以被学生查询的答案
 */
public interface AnswerDao {
    /**
     * 全部难度，全部章节 的试卷
     * @return
     */
    List<Paper> queryAllPapers();

    /**
     * 根据难度选择试卷
     * @param tst_dif 试卷难度
     * @return 试卷列表
     */
    List<Paper> selectDifPapers(String tst_dif);

    /**
     * 根据章节选择试卷
     * @param chapter 章节
     * @return 试卷列表
     */
    List<Paper> selectChaPapers(String chapter);

    /**
     * 根据 难度 和 章节  选试卷
     * @param tst_dif 难度
     * @param chapter 章节
     * @return 试卷列表
     */
    List<Paper> selectPapers(String tst_dif,String chapter);
}
