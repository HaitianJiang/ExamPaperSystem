package com.atguigu.service.impl;

import com.atguigu.dao.PaperDao;
import com.atguigu.dao.impl.PaperDaoImpl;
import com.atguigu.pojo.Paper;
import com.atguigu.service.PaperService;

import java.util.List;

public class PaperServiceImpl implements PaperService {
    private PaperDao paperDao = new PaperDaoImpl();

//    public static void main(String[] args) {
//        for(Paper paper: new PaperServiceImpl().queryAllPapers()){
//            System.out.println(paper);
//        }
//    }

    /**
     * 查看全部试卷信息
     *
     * @return 返回全部试卷中，要显示在页面的全部信息
     */
    @Override
    public List<Paper> queryAllPapers() {
        return paperDao.queryAllPapers();
    }

    @Override
    public List<Paper> querySingleSimplePapers() {
        return paperDao.querySingleSimplePapers();
    }

    @Override
    public List<Paper> selectDifPapers(String tst_dif) {
        return paperDao.selectDifPapers(tst_dif);
    }

    @Override
    public List<Paper> selectChaPapers(String chapter) {
        return paperDao.selectChaPapers(chapter);
    }

    @Override
    public List<Paper> selectPapers(String tst_dif, String chapter) {
        return paperDao.selectPapers(tst_dif, chapter);
    }
}
