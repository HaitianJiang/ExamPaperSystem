<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link href="./css/question_add.css" rel="stylesheet" type="text/css">
		<title></title>
	</head>
	<body>
		<!-- 问题 添加表单 -->
		<form action="QuestionAdd" method="post" >
			<div class="question_add">
				<!-- 问题头部 -->
				<!-- <div class="question_head clearfix">
					<div class="item_name">ID:</div> <input class="item_input" type="text" placeholder="常见的线程种类有() " size="60" /><br />
				</div> -->
				<!-- 问题 题目 选项 -->
				<div class="question_body">
					<div class="item_name">题号:</div> <input class="item_input" type="text" placeholder="123 " name="pro_no"  size="60"  /><br />
					<div class="item_name">题目类型:</div> <input class="item_input" type="text" placeholder="选择题" name="pro_type" size="60" /><br />
					<div class="item_name">题目:</div> <input class="item_input" type="text" placeholder="常见的线程种类有() " name="pro_detail" size="60" /><br />
					<div class="item_name">A:</div> <input class="item_input" type="text" placeholder="选用户线程" name="option_A" size="60" /><br />
					<div class="item_name">B:</div> <input class="item_input" type="text" placeholder="内核线程" name="option_B" size="60" /><br />
					<div class="item_name">C:</div> <input class="item_input" type="text" placeholder="轻量级进程" name="option_C" size="60" /><br />
					<div class="item_name">D:</div> <input class="item_input" type="text" placeholder="线程" name="option_D" size="60" /><br />

				</div>
				
				<!-- 问题的 属性 难度 -->
				<div class="question_answer">
					<div class="item_name">答案:</div> <input class="item_input" type="text" placeholder="ABC" name="pro_ansno" size="60" /><br />
					<div class="item_name">难度系数:</div> <input class="item_input" type="text" placeholder="1" name="pro_dif" size="60" /><br />
					<div class="item_name">所属章节编号:</div> <input class="item_input" type="text" placeholder="3" name="cha_no" size="60" /><br />
					<div class="item_name">所属章节要点:</div> <input class="item_input" type="text" placeholder="进程和线程管理" name="cha_mpiont" size="60" /><br />
					<div class="item_name">所属章节标题:</div> <input class="item_input" type="text" placeholder="网络" name="chapter_title"  size="60" /><br />
				</div>
				<!-- 提交按钮 -->
				<div class="questioon_submit">
					<button>提交</button>
				</div>
			</div>

		</form>

	</body>
</html>
