<%@ page import="org.keshe.entity.Question" %>
<%@ page import="java.util.List" %>
<%@ page import="org.keshe.entity.Page" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link href="./css/question_manage.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="./script/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="./js/question_manage.js"> </script>

		<title></title>
	</head>
	<body>

		<!-- 修改试题页面头部 -->
		<div id="head"  >
			<div id="title">
				<p>当前题库信息</p>

			</div>
			<div id="adds_question">

				<button><a href="question_add.jsp" target="manage">+ 添加题目</a></button>
			</div>
		</div>
		<!-- 修改问题 的问题部分 -->
		<div id="body">
<%--			<a href="#" class="refresh">点击刷新题目</a>--%>
			<%
				//获取request域中的数据
				Page p  = (Page)request.getAttribute("p") ;
				if(p!=null)
				for(Question question:p.getQuestions()){
					if(question.getPro_type().equals("选择题"))
					{

			%>

			<form action="QuestionChange" method="post">
				<div class="question" name="ss">
					<!-- 问题 id 修改 删除 -->
					<div class="question_head clearfix">
						<div class="item_name">题号:</div> <input class="item_input" id="p_id" type="text" value="<%=question.getPro_no()%>" name="pro_no" size="60"
																readonly="readonly"  /><br />
						<div  class="item_name">类型：</div> <input class="item_input" type="text" value="<%=question.getPro_type()%>" name="pro_type"
																 size="60" readonly="readonly"  /><br />
						<div class="question_change">
							<a href="#"><img name="revise_img" class="ico" width="20px" src="./img/修改.png" title="修改"></a>
							<a href="#"><img name="delect_img" class="ico" width="20px" src="./img/删 除.png" title="删除"></a>
						</div>
					</div>
					<!-- 问题的 题目 选项 -->
					<div class="question_body">

						<div class="item_name">题目:</div> <input class="item_input" type="text" value="<%=question.getPro_detail()%>" name="pro_detail"
																size="60" readonly="readonly" /><br />
						<div class="item_name">A:</div> <input class="item_input" type="text" value="<%=question.getOption_A()%>" size="60" name="option_A"
															   readonly="readonly" /><br />
						<div class="item_name">B:</div> <input class="item_input" type="text" value="<%=question.getOption_B()%>" size="60" name="option_B"
															   readonly="readonly" /><br />
						<div class="item_name">C:</div> <input class="item_input" type="text" value="<%=question.getOption_C()%>" size="60" name="option_C"
															   readonly="readonly" /><br />
						<div class="item_name">D:</div> <input class="item_input" type="text" value="<%=question.getOption_D()%>" size="60" name="option_D"
															   readonly="readonly" /><br />
					</div>
					<!-- 问题的 属性 难度 -->
					<div class="question_answer">
						<div class="item_name">答案:</div> <input class="item_input" type="text" value="<%=question.getPro_ansdetil()%>" size="60" name=""
																readonly="readonly" /><br />
					</div>
				</div>
				<!-- <button >提交</button> -->
				<input type="submit" value="提交" />
			</form>
			<% 	}
			else
			{
			%>
			<form action="QuestionChange" method="post">
				<div class="question" name="ss">
					<!-- 问题 id 修改 删除 -->
					<div class="question_head clearfix">
						<div class="item_name">题号:</div> <input class="item_input" type="text" value="<%=question.getPro_no()%>" name="pro_no" size="60"
																readonly="readonly"  /><br />
						<div  class="item_name">类型：</div> <input class="item_input" type="text" value="<%=question.getPro_type()%>" name="pro_type"
																 size="60" readonly="readonly"  /><br />
						<div class="question_change">
							<a href="#"><img name="revise_img" class="ico" width="20px" src="./img/修改.png" title="修改"></a>
							<a href="#"><img name="delect_img" class="ico" width="20px" src="./img/删 除.png" title="删除"></a>
						</div>
					</div>
					<!-- 问题的 题目 选项 -->
					<div class="question_body">

						<div class="item_name">题目:</div> <input class="item_input" type="text" value="<%=question.getPro_detail()%>" name="pro_detail"
																size="60" readonly="readonly" /><br />

					</div>
					<!-- 问题的 属性 难度 -->
					<div class="question_answer">
						<div class="item_name">答案:</div> <input class="item_input" type="text" value="<%=question.getPro_ansno()%>" size="60" name="pro_ansno"
																readonly="readonly" /><br />
					</div>
				</div>
				<!-- <button >提交</button> -->
				<input type="submit" value="提交" />
			</form>


			<%
						}
					}

			%>


			<%
				if(p!=null)
				if(p.getCurrentPage() ==p.getTotalPage()){ //尾页
			%>			<a href="QuestionQueryByPage?currentPage=0">首页</a>
			<a href="QuestionQueryByPage?currentPage=<%=p.getCurrentPage()-1%>    ">上一页</a>
			<%
			}

			else if(p.getCurrentPage() ==0){//首页
			%>		<a href="QuestionQueryByPage?currentPage=<%=p.getCurrentPage()+1%> ">下一页</a>
			<a href="QuestionQueryByPage?currentPage=<%=p.getTotalPage()-1%>">尾页</a>
			<%
			}
			else{//中间
			%>
			<a href="QuestionQueryByPage?currentPage=0">首页</a>
			<a href="QuestionQueryByPage?currentPage=<%=p.getCurrentPage()-1%>    ">上一页</a>
			<a href="QuestionQueryByPage?currentPage=<%=p.getCurrentPage()+1%> ">下一页</a>
			<a href="QuestionQueryByPage?currentPage=<%=p.getTotalPage()-1%>">尾页</a>

			<%
				}


			%>

		</div>

	</body>
</html>