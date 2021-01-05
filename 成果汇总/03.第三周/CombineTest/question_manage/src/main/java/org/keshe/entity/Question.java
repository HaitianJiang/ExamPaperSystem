package main.java.org.keshe.entity;

public class Question {

    private int  pro_no;
    private String  pro_detail;
    private String  option_A;
    private String  option_B;
    private String  option_C;
    private String  option_D;
    private int  pro_ansno;

    private String  pro_keyw;
    private String  pro_dif;
    private String  cha_no;
    private String  cha_title;
    private String  cha_mpiont;
    private String  pro_type;
    private String  pro_ansdetil;

    public Question(int pro_no, String pro_detail, String option_A, String option_B, String option_C, String option_D, int pro_ansno, String pro_keyw, String pro_dif, String cha_no, String cha_title, String cha_mpiont, String pro_type,String  pro_ansdetil) {
        this.pro_no = pro_no;
        this.pro_detail = pro_detail;
        this.option_A = option_A;
        this.option_B = option_B;
        this.option_C = option_C;
        this.option_D = option_D;
        this.pro_ansno = pro_ansno;
        this.pro_keyw = pro_keyw;
        this.pro_dif = pro_dif;
        this.cha_no = cha_no;
        this.cha_title = cha_title;
        this.cha_mpiont = cha_mpiont;
        this.pro_type = pro_type;
        this.pro_ansdetil = pro_ansdetil;
    }
    public Question(int pro_no, String pro_detail, String option_A, String option_B, String option_C, String option_D, int pro_ansno, String pro_keyw, String pro_dif, String cha_no, String cha_title, String cha_mpiont, String pro_type) {
        this.pro_no = pro_no;
        this.pro_detail = pro_detail;
        this.option_A = option_A;
        this.option_B = option_B;
        this.option_C = option_C;
        this.option_D = option_D;
        this.pro_ansno = pro_ansno;
        this.pro_keyw = pro_keyw;
        this.pro_dif = pro_dif;
        this.cha_no = cha_no;
        this.cha_title = cha_title;
        this.cha_mpiont = cha_mpiont;
        this.pro_type = pro_type;

    }

    public Question(int pro_no) {
        this.pro_no = pro_no;
    }

    public Question() {

    }

    public int getPro_no() {
        return pro_no;
    }

    public String getPro_detail() {
        return pro_detail;
    }

    public String getOption_A() {
        return option_A;
    }

    public String getOption_B() {
        return option_B;
    }

    public String getOption_C() {
        return option_C;
    }

    public String getOption_D() {
        return option_D;
    }

    public int getPro_ansno() {
        return pro_ansno;
    }

    public String getPro_keyw() {
        return pro_keyw;
    }

    public String getPro_dif() {
        return pro_dif;
    }

    public String getCha_no() {
        return cha_no;
    }

    public String getCha_title() {
        return cha_title;
    }

    public String getCha_mpiont() {
        return cha_mpiont;
    }

    public String getPro_type() {
        return pro_type;
    }
    public String getPro_ansdetil(){return  pro_ansdetil;}

    public void setPro_ansdetil(String pro_ansdetil) {
        this.pro_ansdetil = pro_ansdetil;
    }
}
