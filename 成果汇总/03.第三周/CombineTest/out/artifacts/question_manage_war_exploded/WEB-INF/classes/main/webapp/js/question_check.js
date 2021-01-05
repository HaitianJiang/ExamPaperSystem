

$(function(){


	//每10秒刷新页面
	// setInterval(function(){
	// 	startRequest();
	// }, 10000);




	$("a[class='df']").click(function(){

		var option= $(this).attr("name");
		var title= "0";
		// alert(option);
		window.document.location.href = "QuestionQuery?option="+option+"&title="+title;
		
	});
	$("a[class='ch']").click(function(){

		var option= $(this).attr("name");
		var title= "1";
		// alert(option);
		window.document.location.href = "QuestionQuery?option="+option+"&title="+title;

	});
	$("a[class='im']").click(function(){

		var option= $(this).attr("name");
		var title= "2";
		// alert(option);
		window.document.location.href = "QuestionQuery?option="+option+"&title="+title;

	});
	//习题删除



});

// 刷新函数
// function  startRequest()
// {
// 	window.location.href="QuestionAllQuery";
// };








