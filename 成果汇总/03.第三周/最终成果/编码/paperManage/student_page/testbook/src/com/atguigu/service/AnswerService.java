package com.atguigu.service;

import com.atguigu.pojo.Paper;

import java.util.List;

public interface AnswerService {
    /**
     * 查看全部试卷
     * @return 返回全部试卷要显示的信息
     */
    List<Paper> queryAllPapers();

    /**
     * 根据所选 难度 返回试卷
     * @param tst_dif 难度
     * @return 试卷列表
     */
    List<Paper> selectDifPapers(String tst_dif);

    /**
     * 根据 章节 选择试卷
     * @param chapter 章节
     * @return 试卷列表
     */
    List<Paper> selectChaPapers(String chapter);

    /**
     * 根据 难度 和 章节 选择试卷
     * @param tst_dif 难度
     * @param chapter 章节
     * @return 试卷列表
     */
    List<Paper> selectPapers(String tst_dif, String chapter);
}
