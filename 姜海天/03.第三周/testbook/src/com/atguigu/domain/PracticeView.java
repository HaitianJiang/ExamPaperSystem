package com.atguigu.domain;

/**
 * 存储需要查看的习题信息
 */
public class PracticeView {
    private String pro_detail;  // 题干
    private String option_A;    // 选项A
    private String option_B;    // 选项B
    private String option_C;    // 选项C
    private String option_D;    // 选项D
    private String pro_type;    // 试题类型

    public PracticeView(String pro_detail, String option_A,
                        String option_B, String option_C, String option_D, String pro_type) {
        this.pro_detail = pro_detail;
        this.option_A = option_A;
        this.option_B = option_B;
        this.option_C = option_C;
        this.option_D = option_D;
        this.pro_type = pro_type;
    }

    public PracticeView() {
    }

    public String getPro_detail() {
        return pro_detail;
    }

    public void setPro_detail(String pro_detail) {
        this.pro_detail = pro_detail;
    }

    public String getOption_A() {
        return option_A;
    }

    public void setOption_A(String option_A) {
        this.option_A = option_A;
    }

    public String getOption_B() {
        return option_B;
    }

    public void setOption_B(String option_B) {
        this.option_B = option_B;
    }

    public String getOption_C() {
        return option_C;
    }

    public void setOption_C(String option_C) {
        this.option_C = option_C;
    }

    public String getOption_D() {
        return option_D;
    }

    public void setOption_D(String option_D) {
        this.option_D = option_D;
    }

    public String getPro_type() {
        return pro_type;
    }

    public void setPro_type(String pro_type) {
        this.pro_type = pro_type;
    }

    @Override
    public String toString() {
        return "PracticeView{" +
                "pro_detail='" + pro_detail + '\'' +
                ", option_A='" + option_A + '\'' +
                ", option_B='" + option_B + '\'' +
                ", option_C='" + option_C + '\'' +
                ", option_D='" + option_D + '\'' +
                ", pro_type='" + pro_type + '\'' +
                '}';
    }
}
