<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css">
	<link rel="${pageContext.request.contextPath}/shortcut.icon" href="${pageContext.request.contextPath}/img/logo2.svg" type="image/x-icon">
	<title>登录 - 试卷管理系统</title>
</head>
<body>
<div class="top-bar">
	<div class="text-title"><a href="index.jsp">试卷管理系统</a></div>
</div>

<div class="mid">
	<div class="image" id="img1"><img src="${pageContext.request.contextPath}/img/img1.svg" width="55%" height="55%" alt="无法显示此页面"/></div>
	<div class="form_style" id="login_form">
		<div class="form_title"><a href="#">用户登录</a></div>
		<div class="line"></div>
		<div>
			<form method="post" action="${pageContext.request.contextPath}/LoginServlet">
				<div id="login_input_id"><label>
					<input type="text" name="username" placeholder="请输入学号/工号/账号">
				</label>
				</div>
				<div id="login_input_pd"><label>
					<input type="password" name="password" placeholder="请输入密码">
				</label>
				</div>
				<div id="login_modify_pd"><a href="${pageContext.request.contextPath}/html/passwdcg.html">修改密码</a></div>
				<div id="login_submit"><input type="submit" value="登录"></div>
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
