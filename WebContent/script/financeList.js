$(function(){
	$(".page").click(pageClick);
});

//分页操作
function pageClick(){
	var id = $(this).attr("id");
	var pageIndex = parseInt($("#pageIndex").val());
	var pageTotal = parseInt($("#pageTotal").val());

	//判断按的是哪个a标签
	if(id=="first"){
		$("#pageIndex").val(1);
		$("form").submit();
	}else if(id=="prev"){
		if(pageIndex>1){
			$("#pageIndex").val(pageIndex-1);
			$("form").submit();
		}
	}else if(id=="next"){
		if(pageIndex<pageTotal){
			$("#pageIndex").val(pageIndex+1);
			$("form").submit();
		}
	}else if(id=="last"){
		$("#pageIndex").val(pageTotal);
		$("form").submit();
	}
	return false;
}
