<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 习题一答案 -->
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
                当前页面：${requestScope.paperName}【答案】
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
<%--                <a class="paper" href="#">上套答案</a>--%>
<%--                <a class="answer" href="#">下套答案</a>--%>
<%--            </span>--%>

    <!-- 右侧信息 -->
    <span id="information">
        <a href="paperServlet?action=displayPaperPractise&paperId=${requestScope.paperId}&paperName=${requestScope.paperName}">
            查看原试卷
        </a>
    </span>

</div>

<!-- -->
<!-- 试卷一 内容 -->
<!-- -->
<div class="practise1-content">
    <c:set scope="request" var="num" value="${0}"/>
    <c:forEach items="${requestScope.answerViews}" var="answer">
        <c:if test="${not empty answer}">
            <!-- 试题1 -->
            <div class="p1">
                <!-- 通用题目标题样式 -->
                <div class="pra-title">
                    <span class="pra-num">
                       ${requestScope.num = requestScope.num + 1}.
                    </span>

                    <span class="pra-num">
                        [${answer.pro_type}]
                    </span>
                    <span>
                            ${answer.pro_detail}
                    </span>
                </div>


                <!-- 通用选项样式 -->
                <div class="option">[答案] ${answer.ans_detail}</div>

                <!-- 通用试题分割线 -->
                <div class="cut-line">

                </div>
            </div>
        </c:if>
        <c:if test="${empty answer}">
            <div class="p1">
                <div class="pra-title">
                    <span class="pra-num">
                       ${requestScope.num = requestScope.num + 1}.
                    </span>
                </div>
                <!-- 通用选项样式 -->
                <div class="option">[答案] 略</div>

                <!-- 通用试题分割线 -->
                <div class="cut-line">

                </div>
            </div>
        </c:if>
    </c:forEach>
</div>
</body>
</html>

