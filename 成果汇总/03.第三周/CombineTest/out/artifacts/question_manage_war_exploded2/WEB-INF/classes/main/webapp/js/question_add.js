

$(function(){






	$("input[type='radio']").click(function(){


		if($(this).val()!="选择题")
		{

			  $("input[class='item_input option']").attr("style","display:none");
			 // $("input[class='item_input option']").hide();
			 // $("div[class='item_name option']").hide();
			$("div[class='item_name option']").attr("style","display:none");
			$("div [class='question_body']").css("height","50px");
		}
		else
		{

			 $("input[class='item_input option']").show();
			$("div[class='item_name option']").show();
			$("div [class='question_body']").css("height","200px");
		}
		
	});





});










