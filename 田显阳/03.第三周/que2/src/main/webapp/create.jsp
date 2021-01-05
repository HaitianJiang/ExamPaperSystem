<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page import="java.awt.geom.Arc2D" %>







<html>
<head>
    <meta charset="utf-8" />
    <title>试卷库管理系统</title>
    <link rel="shortcut icon" href="./img/logo2.svg" type="image/x-icon">
    <link rel="stylesheet" href="./css/header1.css"/>

    <%!
        String url = "jdbc:mysql://cdb-lgy538lc.cd.tencentcdb.com:10100/ExamPaperManageSystem";
        String user = "Hengtaoding";
        String password = "WWWyy20000621";
        String sql = "Insert into Detail value (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        String sql1 = "select  *from Detail";
    %>

    <%
        String[] Kinds = request.getParameterValues("tixing");
        String str4 = "100";
        String str5 = "100";
        String str6 = "100";
        if(Kinds!=null) {
            int idx = Kinds.length;
            if (idx == 1) {
                str4 = Kinds[0];
            } else if (idx == 2) {
                str4 = Kinds[0];
                str5 = Kinds[1];
            } else if (idx == 3) {
                str4 = Kinds[0];
                str5 = Kinds[1];
                str6 = Kinds[2];
            }
        }
        String name = request.getParameter("Ming");
        String difficulty = request.getParameter("Difficulty");
        String Single_num = request.getParameter("Singlenum");
        if(Single_num==""){
            Single_num="100";
        }
        String SingleScore = request.getParameter("SingleScore");
        if(SingleScore==""){
            SingleScore="100";
        }
        String tiankongNum = request.getParameter("tiankongnum");
        if(tiankongNum==""){
            tiankongNum="100";
        }
        String tiankongScore = request.getParameter("tiankongScore");
        if(tiankongScore==""){
            tiankongScore = "100";
        }
        String datiNum = request.getParameter("datinum");
        if(datiNum==""){
            datiNum="100";
        }
        String datiScore = request.getParameter("datiScore");
        if(datiScore==""){
            datiScore = "100";
        }
        String Union1_num = request.getParameter("number1");
        String Union2_num = request.getParameter("number2");
        String Union3_num = request.getParameter("number3");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url,user,password);
            PreparedStatement pst = connection.prepareStatement(sql1);
            ResultSet res = pst.executeQuery();
            int idx = 1;
            while (res.next()) {
                idx++;
            }
            PreparedStatement pst1 = connection.prepareStatement(sql);
            pst1.setInt(1,idx);
            pst1.setString(2,name);
            pst1.setString(3,str4);
            pst1.setString(4,str5);
            pst1.setString(5,str6);
            pst1.setString(6,difficulty);
            pst1.setString(7,Single_num);
            pst1.setString(8,SingleScore);
            pst1.setString(9,tiankongNum);
            pst1.setString(10,tiankongScore);
            pst1.setString(11,datiNum);
            pst1.setString(12,datiScore);
            pst1.setString(13,Union1_num);
            pst1.setString(14,Union2_num);
            pst1.setString(15,Union3_num);
            int result = pst1.executeUpdate();
            pst.close();
            pst1.close();
            connection.close();


        } catch (ClassNotFoundException | SQLException e ) {
            e.printStackTrace();
        }
    %>
    <%
        request.setCharacterEncoding("utf-8");
        String[] chapters = request.getParameterValues("chap");
        String str1="100";
        String str2="100";
        String str3="100";
        if(chapters!=null) {
            int i = chapters.length;
            if (i == 1) {
                str1 = chapters[i - 1];
            } else if (i == 2) {
                str1 = chapters[0];
                str2 = chapters[1];
            } else if (i == 3) {
                str1 = chapters[0];
                str2 = chapters[1];
                str3 = chapters[2];
            }
        }
//        Cookie cookies1= new Cookie("str1",str1);
//        Cookie cookies2=new Cookie("str2",str2);
//        Cookie cookies3 = new Cookie("str3",str3);
//        response.addCookie(cookies1);
//        response.addCookie(cookies2);
//        response.addCookie(cookies3);



     //   request.setAttribute("Kinds",Kinds);

//        Cookie cookies4= new Cookie("str4",str4);
//        Cookie cookies5=new Cookie("str5",str5);
//        Cookie cookies6 = new Cookie("str6",str6);
//        response.addCookie(cookies4);
//        response.addCookie(cookies5);
//        response.addCookie(cookies6);

//        String name = request.getParameter("Ming");
//        String difficulty = request.getParameter("Difficulty");
//        String Single_num = request.getParameter("singlenum");
//        String SingleScore = request.getParameter("SingleScore");
//        String tiankongNum = request.getParameter("tiankongnum");
//        String tiankongScore = request.getParameter("tiankongScore");
//        String datiNum = request.getParameter("datinum");
//        String datiScore = request.getParameter("datiScore");
//        String Union1_num = request.getParameter("number1");
//        String Union2_num = request.getParameter("number2");
//        String Union3_num = request.getParameter("number3");
//        Cookie cookie1 = new Cookie("name",name);
//        Cookie cookie2 = new Cookie("difficulty",difficulty);
//        Cookie cookie3 = new Cookie("Single_num",Single_num);

//        request.setAttribute("name",name);
//        request.setAttribute("difficulty",difficulty);
//        request.setAttribute("Single_num",Single_num);
//        request.setAttribute("Single_Score",SingleScore);
//        request.setAttribute("tiankongNum",tiankongNum);
//        request.setAttribute("tiankongScore",tiankongScore);
//        request.setAttribute("datiNum",datiNum);
//        request.setAttribute("datiScore",datiScore);
//        request.setAttribute("Union1_num",Union1_num);
//        request.setAttribute("Union2_num",Union2_num);
//        request.setAttribute("Union3_num",Union3_num);
//        request.getRequestDispatcher("finish.jsp").forward(request,response);
       // response.sendRedirect("create.jsp");
        assert chapters != null;%>

    <script>
        window.onload = function () {
            let a = document.getElementsByClassName("creatt")[0];
            a.onclick= function () {
                let div1s = document.getElementsByClassName("union1-idx");
                let div2s = document.getElementsByClassName("union1-main");
                let arr=[];
                let idx = <%=chapters.length%>;
                if(idx===1){
                    arr[0] = <%=Integer.valueOf(str1)%>;
                }else if(idx===2){
                    arr[0] = <%=Integer.valueOf(str1)%>;
                    arr[1] = <%=Integer.valueOf(str2)%>
                }else if(idx===3){
                    arr[0] = <%=Integer.valueOf(str1)%>;
                    arr[1] = <%=Integer.valueOf(str2)%>;
                    arr[2] = <%=Integer.valueOf(str3)%>;
                }


                for(let k=0;k<idx;k++){
                    div1s[arr[k]].style.display="block";
                    div2s[arr[k]].style.display="block";
                }

                alert("成功")
            }

        }

        function sub() {
            document.getElementById("form3").submit();
            <%
                //response.sendRedirect("finish.jsp");
            %>
            // document.getElementById("form4").submit();
            // document.getElementById("form5").submit();

        }
        function all11() {
            let checkButton1 = document.getElementsByName("union1");
            for(let i=0;i<checkButton1.length;i++){
                    checkButton1[i].checked = true;
            }
        }

        function all22() {
            let checkButton1 = document.getElementsByName("union2");
            for(let i=0;i<checkButton1.length;i++){
                checkButton1[i].checked = true;
            }
        }

        function all33() {
            let checkButton1 = document.getElementsByName("union3");
            for(let i=0;i<checkButton1.length;i++){
                checkButton1[i].checked = true;
            }
        }


    </script>

</head>
<body>




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

</div>



<div class="select">
    <div class="select-wu"></div>
    <div class="select-infor1">
        <span>章节知识点选择</span>
        <input class="creatt" type="button"  value="生成章节知识点">
    </div>
    <div class="union">
        <div class="union1-idx">
            <span class="union1-s">章节一：引论</span>
        </div>

            <form id="form3" action="finish.jsp" method="post">
                <div class="union1-main">
                <input class="union1c1" type="checkbox" name="union1" value="操作系统的目标和作用">操作系统的目标和作用
                <input class="union1c2" type="checkbox" name="union1" value="操作系统的发展过程"> 操作系统的发展过程
                <input class="union1c3" type="checkbox" name="union1" value="操作系统的基本特性">  操作系统的基本特性
                <br>
                <input class="union1c1" type="checkbox" name="union1" value=" 操作系统的主要功能">  操作系统的主要功能
                <input class="union1c2" type="checkbox" name="union1" value="OS结构设计">  OS结构设计
                <input class="union1b" type="button" name="all1" value="全选" onclick="all11()">
                    </div>


        <div class="union1-idx">
            <span class="union1-s">章节二：进程与线程</span>
        </div>

                <div class="union1-main">
                <input class="union1c1" type="checkbox" name="union2" value="前趋图和程序执行">  前趋图和程序执行
                <input class="union1c2" type="checkbox" name="union2" value="进程的描述">  进程的描述
                <input class="union1c3" type="checkbox" name="union2" value="进程控制">  进程控制
                <input class="union1c4" type="checkbox" name="union2" value="进程同步"> 进程同步
                <br>
                <input class="union1c1" type="checkbox" name="union2" value="经典进程的同步问题">  经典进程的同步问题
                <input class="union1c2" type="checkbox" name="union2" value="进程通信"> 进程通信
                <input class="union1b" type="button" name="all2" value="全选" onclick="all22()">
                </div>

        <div class="union1-idx">
            <span class="union1-s">章节三:存储器</span>
        </div>
                <div class="union1-main">
                <input class="union1c1" type="checkbox" name="union3" value="线程的基本概念">  线程的基本概念
                <input class="union1c2" type="checkbox" name="union3" value="线程的实现">  线程的实现
                <input class="union1b" type="button" name="all3" value="全选" onclick="all33()">
                <br>
                </div>
            </form>

    </div>

</div>


<div class="jump">
    <button class="button1" type="button" onclick="sub()">提交</button>

</div>

</body>
</html>