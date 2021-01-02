<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<!DOCTYPE html>--%>
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
            <td class="thead">工号</td>
            <td class="thead">姓名</td>
            <td class="thead">专业</td>
            <td class="thead">邮箱</td>
            <td class="thead">操作</td>
        </tr>

        <c:forEach items="${requestScope.teas}" var="tea" varStatus="s">
            <tr>
                <td class="tbody">${tea.tea_no}</td>
                <td class="tbody">${tea.tea_name}</td>
                <td class="tbody">${tea.tea_discipline}</td>
                <td class="tbody">${tea.tea_mail}</td>
                <td class="tbody" class="alink"><a href="#">设置</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>

