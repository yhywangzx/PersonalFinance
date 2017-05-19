//$(function() {
//	$(".input_text").blur(text_blur);
//	$(".tarea").blur(content_blur);
//
//	$(".submit").click(function(){
//		return checkForm();
//	});
//
//});
//
//
//function text_blur() {
//	$(".warn").text("");
//
//	if ($(".input_text").val().trim() == "") {
//		$(".cname_warn").text("名称不能为空!");
//		$(".cname_warn").css("color", "red");
//	}
//	// alert(123);
//}








function checkForm() {

	if ($(".input_text").val().trim() == "") {
		//$("#ddlClassesType_2").focus();
		//alert(123);
		return false;
	}

	

	return true;
}