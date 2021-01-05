<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>

<html>
<head>
    <meta charset="utf-8" />
    <title>试卷库管理系统</title>
    <link rel="shortcut icon" href="./img/logo2.svg" type="image/x-icon">
    <link rel="stylesheet" href="./css/first.css"/>
    <script type="text/javascript">
        function validate() {
            if(confirm("提交表单?")){
                return true;
            }else{
                return false;
            }
        }
        function submitForms() {

            if (validate()) {
                document.form1.action = "create.jsp";
                document.form1.method = "get"; //post
                document.form1.submit();

            }

        }
    </script>

</head>
<body>
<!-- 顶部栏 -->
<!--        <div class="common-header"> -->
<!-- logo -->
<!--            <span>
                <img id="log" src="img/试卷管理系统log.svg" />
            </span>
            <span id="paper-header">试卷库管理系统</span>

           中部试卷信息 -->
<!--           <span class="test-paper">
               <a class="paper" href="https://time.geekbang.org/" target="_blank">试卷生成</a>
               <a class="answer" href="https://time.geekbang.org/" target="_blank">答案管理</a>
           </span> -->



<!-- 右侧个人信息 -->
<!--            <span>
                <img id="login-member" src="img/登录用户头像.png" />
            </span>
            <span id="information">
                <a href="https://time.geekbang.org/" target="_blank">个人信息</a>
            </span>
            <span id="message">
                <a href="https://time.geekbang.org/" target="_blank">通知</a>
            </span>

        </div> -->

<div class="step">
    <div class="step-1">
    </div>
    <div class="step4"></div>
    <div class="step-2">
    </div>
    <div class="step4"></div>
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
        <span>试卷信息</span>
    </div>
    <div class="name">
        <form name="form1"  >
            <span class="text1-s">试卷名称</span>
            <input  class="text1"  type="text" name="Ming">

            <br>
            <span class="checkbox1-s">题型选择:</span>
            <input  class="checkbox1" type="checkbox" name="tixing" value="选择题">单选题
            <input class="checkbox2" type="checkbox" name="tixing" value="填空题">填空题
            <input class="checkbox3" type="checkbox" name="tixing" value="简答题">简答题

            <span class="radio-s">难度选择：</span>
            <input type="radio" class="radio1" name="Difficulty" value="普通">普通
            <input type="radio" class="radio2" name="Difficulty" value="中等">中等
            <input  type="radio" class="radio2" name="Difficulty" value="困难">困难
            <br>
            <span class="text3-ss">单选题数量：</span>
            <input class="text33" type="text" name="Singlenum">
            <span class="text4-ss">单选题分值：</span>
            <input class="text44" type="text" name="SingleScore">
            <br>
            <span class="text5-ss">填空题数目：</span>
            <input class="text55" type="text" name="tiankongnum">
            <span class="text6-ss">填空题分值：</span>
            <input class="text66" type="text" name="tiankongScore">
            <br>
            <span class="text7-ss">简答题数目：</span>
            <input class="text77" type="text" name="datinum">
            <span class="text8-ss">简答题分值：</span>
            <input class="text88" type="text" name="datiScore">

    <div class="select-infor2">
        <span>选择试题章节</span>
    </div>
            <input type="checkbox" class="checkbox4" name="chap" value="0">第一章 引论
            <br>
            <input type="checkbox" class="checkbox5" name="chap" value="1">第二章 进程
            <br>
            <input type="checkbox" class="checkbox6" name="chap" value="2">第三章 线程

            <br>
        </form>
    </div>
</div>

<div class="jump">
    <input class="button1" type="submit" value="下一步" onclick="submitForms()"/>
</div>

</body>
</html>