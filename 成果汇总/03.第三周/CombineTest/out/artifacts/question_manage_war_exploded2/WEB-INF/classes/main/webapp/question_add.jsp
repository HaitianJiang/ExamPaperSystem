<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link href="./css/question_add.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="./script/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="./js/question_add.js"> </script>
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



					<div class="item_name">题目类型:</div> <div id="option_type"><input   type="radio" name="pro_type" value="选择题" id="xuan" /><label >选择题</label>
					<input type="radio"   name="pro_type" value="填空题"  id="tian" /><label >填空题</label>
					<input type="radio"    name="pro_type" value="简答题"  id="jian" /><label >简答题</label></div> <br />
					<div class="item_name">题目:</div> <input class="item_input" type="text" placeholder="常见的线程种类有() " name="pro_detail" size="60" /><br />
					<div class="item_name option">A:</div> <input class="item_input option" type="text" placeholder="选用户线程" name="option_A" size="60" /><br />
					<div class="item_name option">B:</div> <input class="item_input option" type="text" placeholder="内核线程" name="option_B" size="60" /><br />
					<div class="item_name option">C:</div> <input class="item_input option" type="text" placeholder="轻量级进程" name="option_C" size="60" /><br />
					<div class="item_name option">D:</div> <input class="item_input option" type="text" placeholder="线程" name="option_D" size="60" /><br />

				</div>
				
				<!-- 问题的 属性 难度 -->
				<div class="question_answer">
					<div class="item_name">答案号:</div> <input class="item_input" type="text" placeholder="ABC" name="pro_ansno" size="60" /><br />
					<div class="item_name">难度系数:</div> <input class="item_input" type="text" placeholder="1" name="pro_dif" size="60" /><br />
					<div class="item_name">关键字:</div> <input class="item_input" type="text" placeholder="进程和线程管理" name="pro_keyw" size="60" /><br />
					<div class="item_name">所属章节编号:</div> <input class="item_input" type="text" placeholder="3" name="cha_no" size="60" /><br />
					<div class="item_name">所属章节要点:</div> <input class="item_input" type="text" placeholder="进程和线程管理" name="cha_mpiont" size="60" /><br />
					<div class="item_name">所属章节标题:</div> <input class="item_input" type="text" placeholder="网络" name="cha_title"  size="60" /><br />
				</div>
				<!-- 提交按钮 -->
				<div class="questioon_submit">
					<button>提交</button>
				</div>
			</div>

		</form>

	</body>
</html>
