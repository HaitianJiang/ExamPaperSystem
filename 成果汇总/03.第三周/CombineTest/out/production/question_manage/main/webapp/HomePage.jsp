<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>我的主页</title>
		<link href="./css/HomePage.css" rel="stylesheet" type="text/css">
		<!-- <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"> -->

	</head>
	<body>
		<div id="box1">
			<div id="box1-box">
				<span id="box1-s">试卷库管理系统</span>
			</div>
			<ul id="box1-u">
				<li class="line"></li>
			</ul>
			<div id="box1-b">
				<a id="aaa" href="#"><i class="fa fa-user-circle-o" aria-hidden="true" style="font-size: 20px"></i> <i class="fa fa-caret-down"
					 style="font-size: 20px"></i> </a>
			</div>
			<ul id="box1-u1">
				<li class="line"></li>
			</ul>
		</div>

		<div id="box2">
			<ul id="box2-u">
				<li>
					<a href="#" target="content"><i class="fa fa-address-book-o" aria-hidden="true"></i>习题</a>
					<ol>
						<li><a href="question_manage.jsp" target="content"><i class="fa fa-address-book-o" aria-hidden="true"></i>习题管理</a></li>
						<li><a href="question_check.jsp" target="content"><i class="fa fa-graduation-cap" aria-hidden="true"></i>习题查看</a></li>
					</ol>
				</li>


			</ul>
		</div>

		<div id="box3">
			<iframe name="content" src="index.htmls" width="100%" height="90%" frameborder="no" border="0" marginwidth="0"
			 marginheight="0" scrolling="auto" allowtransparency="yes"></iframe>
		</div>
	</body>
</html>
