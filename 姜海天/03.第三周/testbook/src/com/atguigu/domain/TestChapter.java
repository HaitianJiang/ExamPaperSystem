package com.atguigu.domain;

/**
 * 保存试卷的 编号 和 章节
 */
public class TestChapter {
    private int tst_id;
    private String tst_chapter;

    public TestChapter(int tst_id, String tst_chapter) {
        this.tst_id = tst_id;
        this.tst_chapter = tst_chapter;
    }

    public TestChapter() {
    }

    public int getTst_id() {
        return tst_id;
    }

    public void setTst_id(int tst_id) {
        this.tst_id = tst_id;
    }

    public String getTst_chapter() {
        return tst_chapter;
    }

    public void setTst_chapter(String tst_chapter) {
        this.tst_chapter = tst_chapter;
    }

    @Override
    public String toString() {
        return "TestChapter{" +
                "tst_id=" + tst_id +
                ", tst_chapter='" + tst_chapter + '\'' +
                '}';
    }
}
