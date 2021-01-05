<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 试卷库管理系统 -- 查看答案页面 -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>试卷库管理系统</title>
    <%--指定当前所处的目录‘/’是web--%>
    <base href="http://localhost:8088/testbook/">

    <link rel="shortcut icon" href="img/logo-green.png" type="image/x-icon">
    <link rel="stylesheet" href="css/answer-style.css"/>
</head>
<body>
<!-- 顶部栏 -->
<div class="common-header">
    <!-- logo -->
    <span>
                <img id="log" src="img/logo-green.png"/>
            </span>
    <span id="paper-header">试卷库管理系统</span>

    <!-- 中部试卷信息 -->
    <span class="test-paper">
                <a class="paper" href="jsp/paper.jsp">查看试卷</a>
                <a class="answer" href="jsp/answer.jsp">查看答案</a>
            </span>


    <!-- 右侧个人信息 -->
    <span>
                <img id="login-member" src="img/登录用户头像.png"/>
            </span>
    <span id="information">
                <a href="#">个人信息</a>
            </span>
    <%--    <span id="message">--%>
    <%--                <a href="#">通知</a>--%>
    <%--            </span>--%>

</div>

<!-- 当前试卷列表 -->
<div class="all-papers">
    <%-- 当前选择 --%>
    <div class="current-select">
        <span class="title">当前选择:</span>
        <c:choose>
            <c:when test="${empty requestScope.select_dif && empty requestScope.select_cha}">
                <span class="select">您还没有选择</span>
            </c:when>
            <c:otherwise>
                <span class="select">[难度] ${requestScope.select_dif}</span>
                <span class="select">[章节] ${requestScope.select_cha}</span>
            </c:otherwise>
        </c:choose>

    </div>
    <!-- 分割线 -->
    <div class="cut-line">

    </div>
    <!-- 难度系数 -->
    <div class="difficulty-level">
        <span class="select-title">难度：</span>

        <a class="df0" href="paperServlet?action=selectAnswers&dif=${"全部"}&cha=${requestScope.select_cha}">全部</a>
        <a class="df1" href="paperServlet?action=selectAnswers&dif=${"简单"}&cha=${requestScope.select_cha}">简单</a>
        <a class="df2" href="paperServlet?action=selectAnswers&dif=${"中等"}&cha=${requestScope.select_cha}">中等</a>
        <a class="df3" href="paperServlet?action=selectAnswers&dif=${"困难"}&cha=${requestScope.select_cha}">困难</a>

    </div>
    <!-- 分割线 -->
    <div class="cut-line">

    </div>
    <!-- 章节 -->
    <div class="chapter">
        <span class="select-title">章节：</span>
        <a class="df0" href="paperServlet?action=selectAnswers&dif=${requestScope.select_dif}&cha=${"全部"}">全部</a>
        <a class="df1" href="paperServlet?action=selectAnswers&dif=${requestScope.select_dif}&cha=${"引论"}">引论</a>
        <a class="df2" href="paperServlet?action=selectAnswers&dif=${requestScope.select_dif}&cha=${"进程"}">进程</a>
        <a class="df3" href="paperServlet?action=selectAnswers&dif=${requestScope.select_dif}&cha=${"线程"}">线程</a>
        <a class="df4" href="paperServlet?action=selectAnswers&dif=${requestScope.select_dif}&cha=${"虚存管理"}">虚存管理</a>
        <a class="df5" href="paperServlet?action=selectAnswers&dif=${requestScope.select_dif}&cha=${"文件管理"}">文件管理</a>
        <a class="df6"
           href="paperServlet?action=selectAnswers&dif=${requestScope.select_dif}&cha=${"输入输出系统"}">输入输出系统</a>
        <a class="df7"
           href="paperServlet?action=selectAnswers&dif=${requestScope.select_dif}&cha=${"磁盘存储器管理"}">磁盘存储器管理</a>
        <!-- 换行和对齐 -->
        <br/>
        <span style="margin-left: 93px;"></span>

        <a class="df5"
           href="paperServlet?action=selectAnswers&dif=${requestScope.select_dif}&cha=${"操作系统接口"}">操作系统接口</a>
        <a class="df5"
           href="paperServlet?action=selectAnswers&dif=${requestScope.select_dif}&cha=${"多处理器操作系统"}">多处理器操作系统</a>
        <a class="df5" href="paperServlet?action=selectAnswers&dif=${requestScope.select_dif}&cha=${"保护和安全"}">保护和安全</a>
    </div>
    <!-- 分割线 -->
    <%--    <div class="cut-line">--%>

    <%--    </div>--%>
    <!-- 知识点 -->
    <%--<div class="knowledge-point">
        <span class="select-title">知识点：</span>
        <a class="df0" href="#">全部</a>
        <a class="df1" href="#">操作系统的目标与作用</a>
        <a class="df2" href="#">操作系统的发展过程</a>
        <a class="df3" href="#">操作系统的基本特性</a>
        <a class="df4" href="#">操作系统的主要功能</a>

        <!-- 换行和对齐 -->
        <br/>
        <span style="margin-left: 93px;"></span>

        <a class="df5" href="#">OS结构设计</a>
    </div>--%>
</div>

<!-- 显示具体的试卷 -->
<div class="specific-paper">


    <c:choose>
        <%-- 第一次进入查看试卷页面 --%>
    <c:when test="${requestScope.selectAnswers == null}">
        <div class="select-need">
            请根据难度和章节选择您需要的答案
        </div>
        <div class="select-img">
            <img class="no-select-img" src="${pageContext.request.contextPath}/img/select_papers.png">
        </div>
    </c:when>
        <%-- 没有符合条件的试卷 --%>
    <c:when test="${empty requestScope.selectAnswers}">
        <div class="select-need">
            对不起，没有符合条件的试卷
        </div>
        <div class="select-img">
            <img class="no-find-img" src="${pageContext.request.contextPath}/img/not_fine_paper.png">
        </div>
    </c:when>

        <%-- 打印符合条件的试卷 --%>
    <c:otherwise>
    <table class="paper-information">
        <tr>
            <th class="th1">试卷编号</th>
            <th class="th2">试卷名称</th>
            <th class="th3">试卷类型</th>
            <th class="th4">难度</th>
            <th class="th5">试题数量</th>
            <th class="th6">创建时间</th>
            <th class="th7">操作</th>
        </tr>
        <c:forEach items="${requestScope.selectAnswers}" var="paper">
            <tr>
                <td>${paper.tst_no}</td>
                <td>${paper.tst_name}</td>
                <td>${paper.tst_type}</td>
                <td>${paper.tst_dif}</td>
                <td>${paper.tst_num}</td>
                <td>${paper.tst_time}</td>
                <td>
                    <a href="paperServlet?action=displayPaperAnswers&paperId=${paper.tst_no}&paperName=${paper.tst_name}"
                       class="watch-paper">查看答案</a>
                </td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="7">
                <p style="text-align: center;
                font-size: 10px;
                color: #b8b8b8;
                font-weight: lighter">到底啦，没有更多答案了</p>
            </td>
        </tr>
        </c:otherwise>
        </c:choose>

    </table>
</div>

</body>
</html>
