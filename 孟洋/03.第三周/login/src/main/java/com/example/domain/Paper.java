package com.example.domain;

/**
 * 试卷JavaBean对象
 */
public class Paper {
    private Integer tst_no;              // 试卷编号
    private String tst_name;             // 试卷名称
    private String tst_time;             // 生成时间
    private String tst_type;             // 试卷类型
    private String tst_dif;              // 试卷难度
    private String tst_num;              // 试题数量
    private String tst_score;            // 试卷分数
    private String tst_detail;           // 试卷内容
    private Integer tst_stu_view;       // 学生能否查看试卷（0为不行）
    private Integer tst_stu_ans_view;   // 学生能否查看试卷答案（0为不行）

    public Paper() {
    }

    public Paper(Integer tst_no, String tst_name, String tst_time,
                 String tst_type, String tst_dif, String tst_num,
                 String tst_score, String tst_detail, Integer tst_stu_view,
                 Integer tst_stu_ans_view) {
        this.tst_no = tst_no;
        this.tst_name = tst_name;
        this.tst_time = tst_time;
        this.tst_type = tst_type;
        this.tst_dif = tst_dif;
        this.tst_num = tst_num;
        this.tst_score = tst_score;
        this.tst_detail = tst_detail;
        this.tst_stu_view = tst_stu_view;
        this.tst_stu_ans_view = tst_stu_ans_view;
    }

    public Integer getTst_no() {
        return tst_no;
    }

    public void setTst_no(Integer tst_no) {
        this.tst_no = tst_no;
    }

    public String getTst_name() {
        return tst_name;
    }

    public void setTst_name(String tst_name) {
        this.tst_name = tst_name;
    }

    public String getTst_time() {
        return tst_time;
    }

    public void setTst_time(String tst_time) {
        this.tst_time = tst_time;
    }

    public String getTst_type() {
        return tst_type;
    }

    public void setTst_type(String tst_type) {
        this.tst_type = tst_type;
    }

    public String getTst_dif() {
        return tst_dif;
    }

    public void setTst_dif(String tst_dif) {
        this.tst_dif = tst_dif;
    }

    public String getTst_num() {
        return tst_num;
    }

    public void setTst_num(String tst_num) {
        this.tst_num = tst_num;
    }

    public String getTst_score() {
        return tst_score;
    }

    public void setTst_score(String tst_score) {
        this.tst_score = tst_score;
    }

    public String getTst_detail() {
        return tst_detail;
    }

    public void setTst_detail(String tst_detail) {
        this.tst_detail = tst_detail;
    }

    public Integer getTst_stu_view() {
        return tst_stu_view;
    }

    public void setTst_stu_view(Integer tst_stu_view) {
        this.tst_stu_view = tst_stu_view;
    }

    public Integer getTst_stu_ans_view() {
        return tst_stu_ans_view;
    }

    public void setTst_stu_ans_view(Integer tst_stu_ans_view) {
        this.tst_stu_ans_view = tst_stu_ans_view;
    }

    @Override
    public String toString() {
        return "Paper{" +
                "tst_no=" + tst_no +
                ", tst_name='" + tst_name + '\'' +
                ", tst_time='" + tst_time + '\'' +
                ", tst_type='" + tst_type + '\'' +
                ", tst_dif='" + tst_dif + '\'' +
                ", tst_num='" + tst_num + '\'' +
                ", tst_score='" + tst_score + '\'' +
                ", tst_detail='" + tst_detail + '\'' +
                ", tst_stu_view=" + tst_stu_view +
                ", tst_stu_ans_view=" + tst_stu_ans_view +
                '}';
    }
}
