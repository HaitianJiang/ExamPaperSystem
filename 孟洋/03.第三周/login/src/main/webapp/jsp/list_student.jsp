
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <link href="${pageContext.request.contextPath}/css/list.css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/logo2.svg" type="image/x-icon">
    <title></title>
</head>
<body>
<div class="table">
    <table>
        <tr>
            <td class="thead">学号</td>
            <td class="thead">姓名</td>
            <td class="thead">专业</td>
            <td class="thead">年级</td>
            <td class="thead">操作</td>
        </tr>
        <c:forEach items="${requestScope.stus}" var="stu" varStatus="s">
            <tr>
                <td class="tbody">${stu.stu_no}</td>
                <td class="tbody">${stu.stu_name}</td>
                <td class="tbody">${stu.stu_discipline}</td>
                <td class="tbody">${stu.stu_grade}</td>
                <td class="tbody" class="alink"><a href="/delStudentServlet?no=${stu.stu_no}">删除</a></td>
            </tr>
        </c:forEach>

    </table>
</div>
</body>
</html>
