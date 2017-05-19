$(function(){
	$(".input2").click(function(){
		var reply = $(".input1").val();
		if(reply.trim()==""){
			$(".warning").html("评论不能为空!");
			$(".warning").css("color","red");
			return false;
		}
		
		return true;
	});
	
	$(".input1").focus(function(){
		$(".warning").html("");
	});
});