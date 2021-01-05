<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link href="${pageContext.request.contextPath}/css/manage.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/logo2.svg" type="image/x-icon">
    <title></title>
</head>
<body>
<div class="top-bar">
    <div class="text-title"><a href="${pageContext.request.contextPath}/index.jsp">试卷管理系统</a></div>
</div>
<div class="mid">
    <div class="left">
        <div class="list">
            <ul>
                <li>
                    <div class="opt" id="user" onclick="clickuser()">
                        <div class="ico" id="user_ico">
                            <img src="${pageContext.request.contextPath}/img/账号管理.svg" width="70%" height="70%"/>
                            <div class="left_text" id="u_text">账号管理</div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="opt" id="add" onclick="clickadd()">
                        <div class="ico" id="add_ico">
                            <img onclick="clickadd()" src="${pageContext.request.contextPath}/img/add.svg" width="70%" height="70%"/>
                            <div class="left_text" id="a_text">创建账户</div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="opt" id="search" onclick="clicksearch()">
                        <div class="ico" id="search_ico">
<%--                            <img src="${pageContext.request.contextPath}/img/search.svg" width="70%" height="70%"/>--%>
<%--                            <div class="left_text" id="s_text">快速查找</div>--%>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="middle">
        <div class="data">
            <div class="bar" id="userbar">
                <div id="mid_text_c" onclick="clickcourse()" tabindex="1"><span id="tc">课程负责人</span></div>
                <div id="mid_text_s" onclick="clickstudent()" tabindex="2"><span id="ts">学生</span></div>
            </div>
            <div class="ly_line"></div>
            <iframe  id="subframe" src="/teacherListServlet" frameborder="0" width="996px" height="562px" noresize="noresize" scrolling="auto"></iframe>
        </div>

    </div>
    <div class="right">
        <div class="right_title">
            口令校验队列
        </div>
        <div class="right_line"></div>
        <div class="message">
            您当前没有待处理的消息
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

<script>
    var nowfocus = 1;
    function clickuser()
    {
        nowfocus = 1;
        document.getElementById("subframe").src = "/teacherListServlet";
    }
    function clickadd()
    {
        nowfocus = 2;
        document.getElementById("subframe").src = "${pageContext.request.contextPath}/jsp/addcourse.jsp";
    }
    function clicksearch()
    {
        nowfocus = 3;
        document.getElementById("subframe").src = "search.html";
    }
    function clickcourse()
    {
        if(nowfocus == 1)
            document.getElementById("subframe").src = "/teacherListServlet";
        else if(nowfocus == 2)
            document.getElementById("subframe").src = "${pageContext.request.contextPath}/jsp/addcourse.jsp";

    }
    function clickstudent()
    {
        if(nowfocus == 1)
            document.getElementById("subframe").src = "/studentListServlet";
        else if(nowfocus == 2)
            document.getElementById("subframe").src = "${pageContext.request.contextPath}/jsp/addstu.jsp";
    }
</script>