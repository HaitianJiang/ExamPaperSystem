package com.example.domain;

public class Teacher {
    private String tea_no;
    private String tea_pwd;
    private String tea_name;
    private String tea_discipline;
    private String tea_mail;

    public String getTea_no() {
        return tea_no;
    }

    public String getTea_pwd() {
        return tea_pwd;
    }

    public String getTea_name() {
        return tea_name;
    }

    public String getTea_discipline() {
        return tea_discipline;
    }

    public String getTea_mail() {
        return tea_mail;
    }

    public void setTea_no(String tea_no) {
        this.tea_no = tea_no;
    }

    public void setTea_pwd(String tea_pwd) {
        this.tea_pwd = tea_pwd;
    }

    public void setTea_name(String tea_name) {
        this.tea_name = tea_name;
    }

    public void setTea_discipline(String tea_discipline) {
        this.tea_discipline = tea_discipline;
    }

    public void setTea_mail(String tea_mail) {
        this.tea_mail = tea_mail;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "tea_no='" + tea_no + '\'' +
                ", tea_pwd='" + tea_pwd + '\'' +
                ", tea_name='" + tea_name + '\'' +
                ", tea_discipline='" + tea_discipline + '\'' +
                ", tea_mail='" + tea_mail + '\'' +
                '}';
    }
}
