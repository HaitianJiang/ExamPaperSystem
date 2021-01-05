<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 操作系统练习一界面 -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>试卷库管理系统</title>
    <%--指定当前所处的目录‘/’是web--%>
    <base href="http://localhost:8088/testbook/">

    <link rel="shortcut icon" href="img/logo-green.png" type="image/x-icon">
    <link rel="stylesheet" href="css/check-paper.css"/>
</head>
<body>
<!-- 顶部栏 -->
<div class="paper-infor">
            
            <span class="paper-title">
                当前试卷：${requestScope.paperName}
            </span>

</div>

<!-- 底部栏 -->
<div class="common-header">
    <!-- logo -->
    <span>
                <a id="log" href="jsp/paper.jsp">
                    <!-- <img id="log" src="img/返回.png" /> -->
                </a>
            </span>
    <span id="paper-header">
                <a href="jsp/paper.jsp">返回主页</a>
            </span>

    <!-- 中部信息 -->
<%--    <span class="test-paper">--%>
<%--                <a class="paper" href="#">上套试卷</a>--%>
<%--                <a class="answer" href="#">下套试卷</a>--%>
<%--            </span>--%>

    <!-- 右侧信息 -->
    <span id="information">
                <a href="paperServlet?action=displayPaperAnswers&paperId=${requestScope.paperId}&paperName=${requestScope.paperName}">
                    查看当前试卷答案
                </a>
            </span>

</div>

<!--            -->
<!-- 试卷一 内容 -->
<!--            -->
<div class="practise1-content">
    <c:set scope="request" var="num" value="${0}"/>

    <c:forEach items="${requestScope.practiceViews}" var="practise">

        <%-- 试题 --%>
        <div class="p1">
                <%-- 通用题目标题样式 --%>
            <div class="pra-title">
                    <span class="pra-num">
                        ${requestScope.num = requestScope.num + 1}. [${practise.pro_type}]
                    </span>
                <span>
                        ${practise.pro_detail}
                </span>
            </div>


                <%-- 通用选项样式 --%>
                <%-- 注意空选项的判断 --%>
            <c:if test="${not empty practise.option_A}">
                <div class="option">A. ${practise.option_A}</div>
                <div class="option">B. ${practise.option_B}</div>
                <div class="option">C. ${practise.option_C}</div>
                <div class="option">D. ${practise.option_D}</div>
            </c:if>

            <c:if test="${practise.pro_type.equals(\"简答题\")}">
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
            </c:if>

                <%-- 通用试题分割线 --%>
            <div class="cut-line">

            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>
