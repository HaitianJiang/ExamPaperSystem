package com.example.domain;

public class Manager {
    private String mana_no;
    private String mana_name;
    private String mana_pwd;

    public String getMana_no() {
        return mana_no;
    }

    public void setMana_no(String mana_no) {
        this.mana_no = mana_no;
    }

    public String getMana_name() {
        return mana_name;
    }

    public void setMana_name(String mana_name) {
        this.mana_name = mana_name;
    }

    public String getMana_pwd() {
        return mana_pwd;
    }

    public void setMana_pwd(String mana_pwd) {
        this.mana_pwd = mana_pwd;
    }

    @Override
    public String toString() {
        return "Manager{" +
                "mana_no='" + mana_no + '\'' +
                ", mana_name='" + mana_name + '\'' +
                ", mana_pwd='" + mana_pwd + '\'' +
                '}';
    }
}
