<%@ page import="org.keshe.entity.Question" %>
<%@ page import="java.util.List" %>
<%@ page import="org.keshe.entity.Page" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- 试卷库管理系统 -- 学生登录后查看的页面 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>试卷库管理系统</title>
       
        <link rel="stylesheet" href="./css/question_check.css"/>
        <script type="text/javascript" src="./js/jquery-3.4.1.js"></script>
        <script type="text/javascript" src="./js/question_check.js"> </script>
	</head>
	<body>

        <!-- 当前试卷列表 -->
        <div class="all-papers">
            <!-- 难度系数 -->
            <div class="difficulty-level">
                <span class="select-title">难度：</span>
                <a  class="df" href="#" name="0">全部</a>
                <a  class="df" href="#" name="1">简单</a>
                <a  class="df" href="#" name="2">中等</a>
                <a  class="df" href="#" name="3">困难</a>

            </div>
            <!-- 分割线 -->
            <div class="cut-line">
                
            </div>
            <!-- 章节 -->
            <div class="chapter">
                <span class="select-title">章节：</span>
                <a  class="ch" href="#" name="0">全部</a>
                <a  class="ch" href="#" name="1">引论</a>
                <a  class="ch" href="#" name="2" >进程</a>
                <a  class="ch" href="#" name="3">线程</a>
                <a  class="ch" href="#" name="4">虚存管理</a>
                <a  class="ch" href="#" name="5">文件管理</a>
               
                <!-- 换行和对齐 -->
                <br />
                <span style="margin-left: 93px;"></span>
               
                <a id="df6" class="ch" href="#" name="6">操作系统接口</a>
                <a id="df7" class="ch" href="#" name="7">多处理器操作系统</a>
                <a id="df8" class="ch" href="#" name="8">保护和安全</a>
            </div>
            <!-- 分割线 -->
            <div class="cut-line">
                
            </div>
            <!-- 知识点 -->
            <div class="knowledge-point">
                <span class="select-title">知识点：</span>
                <a id="df0" class="im" href="#" name="0">全部</a>
                <a id="df1" class="im" href="#" name="1">操作系统的目标与作用</a>
                <a id="df2" class="im" href="#" name="2">操作系统的发展过程</a>
               
                
                <!-- 换行和对齐 -->
               
                <span style="margin-left: 93px;"></span>
                
                <a id="df5" class="im" href="#" name="3">OS结构设计</a>
            </div>
        </div>
        <%
            //获取request域中的数据


        %>


        <%
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
                    <div class="item_name">题号:</div> <input class="item_input" type="text" value="<%=question.getPro_no()%>" name="pro_no" size="60"
                                                            readonly="readonly"  /><br />
                    <div  class="item_name">类型：</div> <input class="item_input" type="text" value="<%=question.getPro_type()%>" name="pro_type"
                                                             size="60" readonly="readonly"  /><br />

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
                    <div class="item_name">答案:</div> <input class="item_input" type="text" value="<%=question.getPro_ansdetil()%>" size="60" name="pro_ansno"
                                                            readonly="readonly" /><br />
                </div>
            </div>
            <!-- <button >提交</button> -->

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

        </form>


            <%
                        }
                    }

            %>
        <div id="fengye">
            <%
                if(p!=null)
                    if(p.getCurrentPage() ==p.getTotalPage()){ //尾页
            %>			<a href="QuestionQuery?currentPage=0">首页</a>
            <a href="QuestionQuery?currentPage=<%=p.getCurrentPage()-1%>    ">上一页</a>
            <%
            }

            else if(p.getCurrentPage() ==0){//首页
            %>		<a href="QuestionQuery?currentPage=<%=p.getCurrentPage()+1%> ">下一页</a>
            <a href="QuestionQuery?currentPage=<%=p.getTotalPage()-1%>">尾页</a>
            <%
            }
            else{//中间
            %>
            <a href="QuestionQuery?currentPage=0">首页</a>
            <a href="QuestionQuery?currentPage=<%=p.getCurrentPage()-1%>    ">上一页</a>
            <a href="QuestionQuery?currentPage=<%=p.getCurrentPage()+1%> ">下一页</a>
            <a href="QuestionQuery?currentPage=<%=p.getTotalPage()-1%>">尾页</a>

            <%
                    }


            %>



        </div>




        

	</body>
</html>
