package com.atguigu.dao;

import com.atguigu.pojo.PracticeView;

import java.util.List;

/**
 * 查看试卷习题
 */
public interface PracticeViewDao {

    /**
     * 获取试卷内容中的习题编号
     * @param id 试卷id
     * @return 以空格隔开的习题编号字符串
     */
    String getPracticeNumber(Integer id);

    /**
     * 获取习题列表
     * @param pro_no 习题编号
     * @return 习题列表
     */
    List<PracticeView> queryPractice(List<Integer> pro_no);

}

