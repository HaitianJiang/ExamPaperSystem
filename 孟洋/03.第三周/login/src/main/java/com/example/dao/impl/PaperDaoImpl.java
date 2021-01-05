package com.example.dao.impl;

import com.example.dao.PaperDao;
import com.example.domain.Paper;
import com.example.domain.TestChapter;

import java.util.ArrayList;
import java.util.List;

public class PaperDaoImpl extends BaseDao implements PaperDao {

//    public static void main(String[] args) {
//        PaperDao paperDao = new PaperDaoImpl();
//        for (Paper paper : paperDao.queryAllPapers()) {
//            System.out.println(paper);
//        }

//        for (Paper paper : paperDao.selectPapers("简单", "引论"))
//            System.out.println(paper);
//    }

    @Override
    public List<Paper> queryAllPapers() {
        String sql = "select `tst_no`,`tst_name`,`tst_type`, `tst_dif`,`tst_num`,`tst_time` " +
                "from test " +
                "where tst_stu_view=1";
        return queryForList(Paper.class, sql);
    }

    @Override
    public List<Paper> querySingleSimplePapers() {
//        System.out.println("查全部");
        String sql = "select `tst_no`,`tst_name`,`tst_type`, `tst_dif`,`tst_num`,`tst_time` " +
                "from test " +
                "where `tst_dif`='简单' ";
        return queryForList(Paper.class, sql);
    }

    @Override
    public List<Paper> selectDifPapers(String tst_dif) {
//        System.out.println("查难度");
        if (tst_dif != null && !tst_dif.equals("全部")) {
            String sql = "select `tst_no`,`tst_name`,`tst_type`, `tst_dif`,`tst_num`,`tst_time` " +
                    "from test " +
                    "where `tst_dif`=? and tst_stu_view=1 ";
            return queryForList(Paper.class, sql, tst_dif);
        } else {
            // 查询全部
            String sql = "select `tst_no`,`tst_name`,`tst_type`, `tst_dif`,`tst_num`,`tst_time` " +
                    "from test " +
                    "where tst_stu_view=1 ";
            return queryForList(Paper.class, sql);
        }
    }

    @Override
    public List<Paper> selectChaPapers(String chapter) {
//        System.out.println("查章节");
        if (chapter != null && !chapter.equals("全部")) {
            // 获取包含该章节的所有试卷ID
            String sql1 = "select distinct tst_id from test_screen where tst_chapter=? ";
            List<TestChapter> testChapters = queryForList(TestChapter.class, sql1, chapter);

            // 根据试卷ID获得相关试卷信息
            List<Paper> papers = new ArrayList<>();  /*初始化啊……*/
            String sql = "select `tst_no`,`tst_name`,`tst_type`, `tst_dif`,`tst_num`,`tst_time` " +
                    "from test " +
                    "where tst_no=? and tst_stu_view=1 ";

            for (TestChapter testChapter : testChapters) {
                papers.add(queryForOne(Paper.class, sql, testChapter.getTst_id()));
            }

            return papers;
        } else {
            // 查询全部
            String sql = "select `tst_no`,`tst_name`,`tst_type`, `tst_dif`,`tst_num`,`tst_time` " +
                    "from test " +
                    "where tst_stu_view=1 ";
            return queryForList(Paper.class, sql);
        }

    }

    @Override
    public List<Paper> selectPapers(String tst_dif, String chapter) {
        boolean tst_dif_all = (tst_dif == null) || tst_dif.equals("全部") || tst_dif.equals("");
        boolean chapter_all = (chapter == null) || chapter.equals("全部") || chapter.equals("");

//        System.out.println(tst_dif_all + "" + chapter_all);

        if (tst_dif_all && chapter_all) {
            return queryAllPapers();
        } else if (tst_dif_all) {   // 难度选全部，查章节
            return selectChaPapers(chapter);
        } else if (chapter_all) {   // 章节选全部，查难度
            return selectDifPapers(tst_dif);
        } else {
            String sql = "select distinct `tst_no`,`tst_name`,`tst_type`, " +
                    " `tst_dif`,`tst_num`,`tst_time` " +
                    "from test_screen,test " +
                    "where test_screen.tst_chapter=? and test.tst_dif=? and test.tst_no=test_screen.tst_id " +
                    "and tst_stu_view=1 ";

            return queryForList(Paper.class, sql, chapter, tst_dif);
        }
    }
}
