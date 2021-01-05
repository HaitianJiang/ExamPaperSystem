package com.atguigu.domain;

public class AnswerView {
    private String pro_type;   // 试题类型
    private String pro_detail; // 试题内容
    private String ans_detail; // 试题答案

    @Override
    public String toString() {
        return "AnswerView{" +
                "pro_type='" + pro_type + '\'' +
                ", pro_detail='" + pro_detail + '\'' +
                ", ans_detail='" + ans_detail + '\'' +
                '}';
    }

    public String getPro_type() {
        return pro_type;
    }

    public void setPro_type(String pro_type) {
        this.pro_type = pro_type;
    }

    public String getPro_detail() {
        return pro_detail;
    }

    public void setPro_detail(String pro_detail) {
        this.pro_detail = pro_detail;
    }

    public String getAns_detail() {
        return ans_detail;
    }

    public void setAns_detail(String ans_detail) {
        this.ans_detail = ans_detail;
    }

    public AnswerView() {
    }

    public AnswerView(String pro_type, String pro_detail, String ans_detail) {
        this.pro_type = pro_type;
        this.pro_detail = pro_detail;
        this.ans_detail = ans_detail;
    }
}
