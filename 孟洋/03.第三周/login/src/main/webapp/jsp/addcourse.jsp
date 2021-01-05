<%--
  Created by IntelliJ IDEA.
  User: OSC
  Date: 2021/1/2
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link href="${pageContext.request.contextPath}/css/add.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="add_form">
    <form method="post" action="/addTeacherServlet">
        <table>
            <tr>
                <td class="thead">姓名</td>
                <td class="tbody"><div><input type="text" name="name"></div></td>
            </tr>
            <tr>
                <td class="thead">工号</td>
                <td class="tbody"><div><input type="text" name="no"></div></td>
            </tr>
            <tr>
                <td class="thead">专业</td>
                <td class="tbody"><div><input type="text" name="dis"></div></td>
            </tr>
            <tr>
                <td class="thead">邮箱</td>
                <td class="tbody"><div><input type="text" name="mail"></div></td>
            </tr>
            <tr>
                <td class="thead">密码</td>
                <td class="tbody"><div><input type="text" name="pwd"></div></td>
            </tr>
        </table>
        <div class="save"><input type="submit" value="提交"></div>
    </form>
</div>
</body>
</html>
