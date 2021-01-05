package com.atguigu.service;

import com.atguigu.domain.Paper;

import java.util.List;

/**
 * 与查看试卷页面的，试卷【筛选】相关，默认都是【全部】
 */
public interface PaperService {

    /**
     * 查看全部试卷
     * @return 返回全部试卷要显示的信息
     */
    List<Paper> queryAllPapers();

    /**
     * 查看 简单难度 全部章节 的试卷
     * @return
     */
    List<Paper> querySingleSimplePapers();

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
