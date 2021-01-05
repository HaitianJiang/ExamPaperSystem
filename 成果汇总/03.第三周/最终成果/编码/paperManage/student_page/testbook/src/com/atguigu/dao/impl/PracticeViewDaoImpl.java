package com.atguigu.dao.impl;

import com.atguigu.dao.PracticeViewDao;
import com.atguigu.pojo.PracticeView;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class PracticeViewDaoImpl extends BaseDao implements PracticeViewDao {

//    public static void main(String[] args) {
//        PracticeViewDao practiceViewDao = new PracticeViewDaoImpl();
//        System.out.println(practiceViewDao.getPracticeNumber(4));
//
//        List<Integer> num = new ArrayList<>(Arrays.asList(1, 2, 4));
//        for (PracticeView practiceView : practiceViewDao.queryPractice(num)) {
//            System.out.println(practiceView);
//        }
//    }

    /**
     * 获取试题编号
     *
     * @param id 试卷id
     * @return 以空格隔开的试题编号字符串
     */
    @Override
    public String getPracticeNumber(Integer id) {
        String sql = "select `tst_detail` from test where tst_no=?";
        return (String) queryForSingleValue(sql, id);
    }

    /**
     * 获取全部试题信息
     *
     * @param pro_no 习题编号
     * @return 试题列表
     */
    @Override
    public List<PracticeView> queryPractice(List<Integer> pro_no) {
        List<PracticeView> practiceViews = new ArrayList<PracticeView>();
        String sql = "select `pro_detail`,`option_A`,`option_B`,`option_C`,`option_D`, `pro_type` " +
                "from problem " +
                "where `pro_no`=?";
        for (Integer i : pro_no) {
            practiceViews.add(queryForOne(PracticeView.class, sql, i));
        }
        return practiceViews;
    }

}
