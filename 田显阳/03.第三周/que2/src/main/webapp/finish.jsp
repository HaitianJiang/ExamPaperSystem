<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/1/1
  Time: 3:50 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.Random" %>

<html>
<head>
    <meta charset="utf-8" />
    <title>试卷库管理系统</title>
    <link rel="shortcut icon" href="./img/logo2.svg" type="image/x-icon">
    <link rel="stylesheet" href="./css/finish.css"/></head>
<body>

<%!
    String url = "jdbc:mysql://cdb-lgy538lc.cd.tencentcdb.com:10100/ExamPaperManageSystem?useSSL=false";
    String user = "Hengtaoding";
    String password = "WWWyy20000621";
    String sql = "select pro_no from problem where pro_type=?&&pro_dif=?&&cha_mpiont=?";
    String sql1 = "select *from Detail";
    String sql2 = "select *from Detail where de_no=?";
    String sql3 = "select pro_ansno from problem where pro_no=?";
    String sql4 =  "Insert into test value (?,?,?,?,?,?,?,?,?,?)";
    Random random = new Random();
    ArrayList<Integer> xe = new ArrayList<Integer>();
    ArrayList<Integer> xm = new ArrayList<Integer>();
    ArrayList<Integer> xh = new ArrayList<Integer>();
    ArrayList<Integer> te = new ArrayList<Integer>();
    ArrayList<Integer> tm = new ArrayList<Integer>();
    ArrayList<Integer> th = new ArrayList<Integer>();
    ArrayList<Integer> de = new ArrayList<Integer>();
    ArrayList<Integer> dm = new ArrayList<Integer>();
    ArrayList<Integer> dh = new ArrayList<Integer>();
%>




<%
    request.setCharacterEncoding("utf-8");
    String[] array = request.getParameterValues("union1");
    String[] array2 = request.getParameterValues("union2");
    String[] array3 = request.getParameterValues("union3");

%>

<%
    ArrayList<String> Kinds = new ArrayList<String>();
//    String[] cookies = (String[])request.getAttribute("Kinds");
//    difficulty = request.getParameter("Difficulty");
%>

<%
    ArrayList<String> points = new ArrayList<String>();
    String[] points1 = request.getParameterValues("union1");
    String[] points2 = request.getParameterValues("union2");
    String[] points3 = request.getParameterValues("union3");
    if(points1!=null){
        points.addAll(Arrays.asList(points1));
    }

    if(points2!=null){
        points.addAll(Arrays.asList(points2));
    }

    if(points3!=null){
        points.addAll(Arrays.asList(points3));
    }

    ArrayList<String> diff = new ArrayList<String>();
    diff.add("简单");
    diff.add("中等");
    diff.add("困难");
%>

<%
    String kind1 = null;
    String kind2 = null;
    String kind3 = null;
%>
<%
    String difficulty = null;
    String name = null;
    String Single_num = null;
    int sn=0;
    String SingleScore = null;
    int ss=0;
    String tiankongNum =null;
    int tn=0;
    String tiankongScore =null;
    int ts=0;
    String datiNum=null ;
    int dn=0;
    String datiScore=null ;
    int ds=0;
//    String Union1_num ;
//    String Union2_num  ;
//    String Union3_num ;

%>

<%
    int no= 0;
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection(url,user,password);
        PreparedStatement pst = connection.prepareStatement(sql1);
        ResultSet res = pst.executeQuery();
        while (res.next()) {
          no++;
        }
        pst = connection.prepareStatement(sql2);
        pst.setInt(1,no);
        ResultSet res1 = pst.executeQuery();
        while (res1.next()){
             name = res1.getNString(2);
             kind1 = res1.getNString(3);
             kind2 = res1.getNString(4);
             kind3 = res1.getNString(5);
             difficulty = res1.getNString(6);
             Single_num = res1.getString(7);
             SingleScore = res1.getString(8);
             tiankongNum = res1.getString(9);
             tiankongScore = res1.getString(10);
             datiNum = res1.getString(11);
             datiScore = res1.getString(12);
        }
        pst.close();
        connection.close();

    } catch (ClassNotFoundException | SQLException e ) {
        e.printStackTrace();
    }

    if(!(Single_num =="100")){

        sn = Integer.parseInt(Single_num);
    }
    if(!(SingleScore=="100")){
        ss = Integer.parseInt(SingleScore);
    }
    if(!(tiankongNum=="100")){
        tn = Integer.parseInt(tiankongNum);
    }
    if(!(tiankongScore=="100")){
        ts = Integer.parseInt(tiankongScore);
    }
    if(!(datiNum=="100")){
        dn = Integer.parseInt(datiNum);
    }
    if(!(datiScore=="100")){
        ds = Integer.parseInt(datiScore);
    }
//    out.print(sn);
//    out.print(ss);
    int all_Score = sn*ss+tn*ts+dn*ds;
%>

<%
    ArrayList<ArrayList<Integer>> bigArrayList = new ArrayList<ArrayList<Integer>>();


        if(kind1!=null){
            Kinds.add(kind1);
        }
        if(kind2!=null){
            Kinds.add(kind2);
        }
        if(kind3!=null){
            Kinds.add(kind3);
        }
        String select1;
        String select2;
        String select3;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url,user,password);
            PreparedStatement pst = connection.prepareStatement(sql);
            for(String s1:Kinds) {
                select1 = s1;

                for (String s2 : diff) {
                    select2 = s2;
                    ArrayList<Integer> firstArrayList = new ArrayList<Integer>();
                    for (String s3 : points) {
                        select3 = s3;
                        pst.setString(1, select1);
                        pst.setString(2, select2);
                        pst.setString(3, select3);
                        ResultSet res = pst.executeQuery();
                        while (res.next()) {
                            int No = res.getInt("pro_no");

                            firstArrayList.add(No);
                        }
                    }
                    if (s2.equals("简单") && s1.equals("选择题")) {
                        xe.addAll(firstArrayList);
                    } else if (s2.equals("中等") && s1.equals("选择题")) {
                        xm.addAll(firstArrayList);
                    } else if (s2.equals("困难") && s1.equals("选择题")) {
                        xh.addAll(firstArrayList);
                    } else if (s2.equals("简单") && s1.equals("填空题")) {
                        te.addAll(firstArrayList);
                    } else if (s2.equals("中等") && s1.equals("填空题")) {
                        tm.addAll(firstArrayList);
                    } else if (s2.equals("困难") && s1.equals("填空题")) {
                        th.addAll(firstArrayList);
                    } else if (s2.equals("简单") && s1.equals("简答题")) {
                        de.addAll(firstArrayList);
                    } else if (s2.equals("中等") && s1.equals("简答题")) {
                        dm.addAll(firstArrayList);
                    } else {
                        dh.addAll(firstArrayList);
                    }
                }
            }
            pst.close();
            connection.close();
            } catch (ClassNotFoundException | SQLException e ) {
                e.printStackTrace();
            }


%>

<%
//    int len = bigArrayList.size();
    ArrayList<Integer> res = new ArrayList<Integer>();
    assert difficulty != null;
    if(difficulty.equals("普通")){
        if(!xe.isEmpty()){
            int j = xe.size();
            int sne = (int) ((int)sn*0.7);
            for(int i=0;i<sne;i++){
                int m = random.nextInt(j);
                res.add(xe.get(m));
            }
            int k = xm.size();
            int snm = (int)((int)sn*0.2);
            for(int i=0;i<snm;i++){
                int m = random.nextInt(k);
                res.add(xm.get(m));
            }
            int l = sn-sne-snm;
            for(int i=0;i<l;i++){
                int m = random.nextInt(l);
                res.add(xm.get(m));
            }
        }
        if(!te.isEmpty()){
            int j = te.size();
            int tne = (int) ((int)tn*0.7);
            for(int i=0;i<tne;i++){
                int m = random.nextInt(j);
                res.add(te.get(m));
            }
            int k = tm.size();
            int tnm = tn-tne;
            for(int i=0;i<tnm;i++){
                int m =random.nextInt(k);
                res.add(tm.get(m));
            }
//            int l = th.size();
//            int tnh = tn-tne-tnm;
//            for(int i=0;i<tnh;i++){
//                int m = random.nextInt(l);
//                res.add(th.get(m));
//            }
        }
        if(!de.isEmpty()){
            int j = de.size();
            int dne = (int) ((int)dn*0.7);
            for(int i=0;i<dne;i++){
                int m = random.nextInt(j);
                res.add(de.get(m));
            }
            int k = dm.size();
            int dnm = (int) ((int)dn*0.2);
            for(int i=0;i<dnm;i++){
                int m =random.nextInt(k);
                res.add(dm.get(m));
            }
            int l = dh.size();
            int tnh = dn-dne-dnm;
            for(int i=0;i<tnh;i++){
                int m = random.nextInt(l);
                res.add(dh.get(m));
            }
        }
    }else if(difficulty.equals("中等")){
        if(!xe.isEmpty()){
            int j = xe.size();
            int sne = (int) ((int)sn*0.6);
            for(int i=0;i<sne;i++){
                int m = random.nextInt(j);
                res.add(xe.get(m));
            }
            int k = xm.size();
            int snm = (int)((int)sn*0.3);
            for(int i=0;i<snm;i++){
                int m = random.nextInt(k);
                res.add(xm.get(m));
            }
            int l = sn-sne-snm;
            for(int i=0;i<l;i++){
                int m = random.nextInt(l);
                res.add(xh.get(m));
            }
        }
        if(!te.isEmpty()){
            int j = te.size();
            int tne = (int) ((int)tn*0.6);
            for(int i=0;i<tne;i++){
                int m = random.nextInt(j);
                res.add(te.get(m));
            }
            int k = tm.size();
            int tnm = (int) ((int)tn*0.3);
            for(int i=0;i<tnm;i++){
                int m =random.nextInt(k);
                res.add(tm.get(m));
            }
            int l = th.size();
            int tnh = tn-tne-tnm;
            for(int i=0;i<tnh;i++){
                int m = random.nextInt(l);
                res.add(th.get(m));
            }
        }
        if(!de.isEmpty()){
            int j = de.size();
            int dne = (int) ((int)dn*0.6);
            for(int i=0;i<dne;i++){
                int m = random.nextInt(j);
                res.add(de.get(m));
            }
            int k = dm.size();
            int dnm = (int) ((int)dn*0.3);
            for(int i=0;i<dnm;i++){
                int m =random.nextInt(k);
                res.add(dm.get(m));
            }
            int l = dh.size();
            int tnh = dn-dne-dnm;
            for(int i=0;i<tnh;i++){
                int m = random.nextInt(l);
                res.add(dh.get(m));
            }
        }
    }else{
        if(!xe.isEmpty()){
            int j = xe.size();
            int sne = (int) ((int)sn*0.5);
            for(int i=0;i<sne;i++){
                int m = random.nextInt(j);
                res.add(xe.get(m));
            }
            int k = xm.size();
            int snm = (int)((int)sn*0.3);
            for(int i=0;i<snm;i++){
                int m = random.nextInt(k);
                res.add(xm.get(m));
            }
            int l = sn-sne-snm;
            for(int i=0;i<l;i++){
                int m = random.nextInt(l);
                res.add(xh.get(m));
            }
        }
        if(!te.isEmpty()){
            int j = te.size();
            int tne = (int) ((int)tn*0.5);
            for(int i=0;i<tne;i++){
                int m = random.nextInt(j);
                res.add(te.get(m));
            }
            int k = tm.size();
            int tnm = (int) ((int)tn*0.3);
            for(int i=0;i<tnm;i++){
                int m =random.nextInt(k);
                res.add(tm.get(m));
            }
            int l = th.size();
            int tnh = tn-tne-tnm;
            for(int i=0;i<tnh;i++){
                int m = random.nextInt(l);
                res.add(th.get(m));
            }
        }
        if(!de.isEmpty()){
            int j = de.size();
            int dne = (int) ((int)dn*0.5);
            for(int i=0;i<dne;i++){
                int m = random.nextInt(j);
                res.add(de.get(m));
            }
            int k = dm.size();
            int dnm = (int) ((int)dn*0.3);
            for(int i=0;i<dnm;i++){
                int m =random.nextInt(k);
                res.add(dm.get(m));
            }
            int l = dh.size();
            int tnh = dn-dne-dnm;
            for(int i=0;i<tnh;i++){
                int m = random.nextInt(l);
                res.add(dh.get(m));
            }
        }
    }
%>

<%
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection(url,user,password);
        PreparedStatement pst1 = connection.prepareStatement(sql4);
        pst1.setInt(1,no);
        pst1.setString(2,name);
        pst1.setString(3,"2021-01-04");
        pst1.setString(4,"小测验");
        pst1.setString(5,difficulty);
        int num = sn+tn+dn;
        String str1 = Integer.toString(num);
        pst1.setString(6,str1);
        String str2 = Integer.toString(all_Score);
        pst1.setString(7,str2);
        String str = "";
        for(int c:res){
            str=str+Integer.toString(c);
            str = str+" ";
        }
        String ss1 = "1";
        String ss2 = "0";
        pst1.setString(8,str);
        pst1.setString(9,ss1);
        pst1.setString(10,ss2);

        int result = pst1.executeUpdate();

        pst1.close();
        connection.close();


    } catch (ClassNotFoundException | SQLException e ) {
        e.printStackTrace();
    }
%>

<div class="step">
    <div class="step-1">
    </div>
    <div class="step4"></div>
    <div class="step-2">
    </div>
    <div class="step4">
    </div>
    <div class="step-3">
    </div>
    <div class="step-wu"></div>
    <div class="step-span">
        <span class="step-s1">基本信息</span>
        <span class="step-s2">知识点选择</span>
        <span class="step-s3">完成</span>
    </div>

    <div class="finish">
        <img src="./img/done.png" height="70%" width="70%" />
    </div>
    <div class="finish-text">恭喜您，创建试卷成功！</div>
</div>



</body>
</html>
