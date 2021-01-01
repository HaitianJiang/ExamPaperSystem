

$(function(){


	//每10秒刷新页面
	setInterval(function(){
		startRequest();
	}, 10000);



	// 习题修改
	$("img[name='revise_img']").click(function(){
		
		var fu =$(this).parents('.question');  // 获取点击元素的 class=question的 祖元素
	
		fu.find('input').removeAttr('readonly'); //移除 属性
		alert(fu);
		var fub =$(this).parents('form');   //获取祖元素
		fub.find("input[type='submit']").css('display','inline')  // 设置符合条件的元素 的css 
		// $("input[readonly='readonly']").removeAttr('readonly');
		
	});
	// 习题删除
	$("img[name='delect_img']").click(function(){

		var fu =$(this).parents('form');  // 获取点击元素的 的 祖元素
		var pro =fu.find("input[name='pro_no']").val();

		var bool = confirm("确定删除?")
		if (bool) {
			alert(pro);
			window.document.location.href = "QuestionDelete?pro_no="+pro;
			$(fu).remove();
			alert("删除成功");

		} else {
			alert("用户点击了取消");}




	});


});

// 刷新函数
function  startRequest()
{
	window.location.href="QuestionAllQuery";
};









