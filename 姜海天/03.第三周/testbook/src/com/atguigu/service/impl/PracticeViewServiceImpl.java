package com.atguigu.service.impl;

import com.atguigu.dao.PracticeViewDao;
import com.atguigu.dao.impl.PracticeViewDaoImpl;
import com.atguigu.domain.PracticeView;
import com.atguigu.service.PractiseViewService;

import java.util.ArrayList;
import java.util.List;

public class PracticeViewServiceImpl implements PractiseViewService {
    private PracticeViewDao practiceViewDao = new PracticeViewDaoImpl();

//    public static void main(String[] args) {
//        PractiseViewService practiseViewService = new PracticeViewServiceImpl();
//        for (PracticeView i : practiseViewService.queryPracticeById(2)) {
//            System.out.println(i);
//        }
//    }

    /**
     * 获取试题编号
     *
     * @param id 试卷id
     * @return 以空格分开的试题编号字符串
     */
    @Override
    public String getPracticeNumber(Integer id) {
        return practiceViewDao.getPracticeNumber(id);
    }

    /**
     * 分割字符串
     *
     * @param pro_no 试题编号字符串 编号数字以空格分开
     * @return 将参数转换为Integer数组
     */
    @Override
    public List<Integer> separatePracticeNumber(String pro_no) {
        List<Integer> pro_no_int = new ArrayList<>();

        String[] temp;
        String delimiter = " ";         // 分隔符是 空格
        temp = pro_no.split(delimiter); // 分割字符串
        for (String x : temp) {
            pro_no_int.add(Integer.valueOf(x));
        }

        return pro_no_int;
    }

    /**
     * 试卷习题内容
     *
     * @param pro_no 习题编号
     * @return 对应试卷id的具体试题内容
     */
    @Override
    public List<PracticeView> queryPractice(List<Integer> pro_no) {
        return practiceViewDao.queryPractice(pro_no);
    }

    /**
     * 顶层方法
     *
     * @param id 试卷id
     * @return 试题内容列表
     */
    @Override
    public List<PracticeView> queryPracticeById(Integer id) {
        PractiseViewService practiseViewService = new PracticeViewServiceImpl();
        // 获取试题编号字符串
        String practiceNumber = practiseViewService.getPracticeNumber(id);
        // 分割字符串获取试题编号数组
        List<Integer> pro_no = practiseViewService.separatePracticeNumber(practiceNumber);
        // 获取试题内容
        return practiseViewService.queryPractice(pro_no);
    }
}
