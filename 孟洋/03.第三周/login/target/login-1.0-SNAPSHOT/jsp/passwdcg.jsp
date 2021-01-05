<%--
  Created by IntelliJ IDEA.
  User: OSC
  Date: 2021/1/2
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <link href="../css/index.css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="../img/logo2.svg" type="image/x-icon">
    <title></title>
</head>
<body>
<div class="top-bar">
    <div class="text-title"><a href="${pageContext.request.contextPath}/index.jsp">试卷管理系统</a></div>
</div>
<div class="mid">
    <div class="form_style" id="passwd_form">
        <div class="form_title"><a href="#">修改密码</a></div>
        <div class="line"></div>
        <div>
            <form method="post" action="/changeServlet">
                <div id="passwd_input_id"><input type="text" name="username" placeholder="请输入学号/工号/账号"></div>
                <div id="passwd_input_opd"><input type="password" name="old" placeholder="请输入原密码"></div>
                <div id="passwd_input_npd"><input type="password" name="new" placeholder="请输入新密码"></div>
                <div id="passwd_submit"><input type="submit" value="确定"></div>
            </form>
        </div>
    </div>
</div>
<div class="footer">
    <div class="C">
        <a href="#">版权信息 &copy; 版权信息 2020-2050</a>
    </div>
</div>
</body>
</html>

