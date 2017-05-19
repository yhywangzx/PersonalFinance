$(function() {
	$("#email").focus(function(){
		$(".emailtext").text("");
		$(".pwdtext").text("");
	});
	$("#pwd").focus(function(){
		$(".emailtext").text("");
		$(".pwdtext").text("");
	});
	
	$("#email").blur(email_blur);
	
	
	$("#pwd").blur(pwd_blur);

	$(".submit").click(function(){
		return checkForm();
	});

});


function email_blur() {
	

	if ($("#email").val().trim() == "") {
		$(".emailtext").text("邮箱名不能为空!");
		$(".emailtext").css("color", "red");
	}
	// alert(123);
}


function pwd_blur() {

	if ($("#pwd").val().trim() == "") {
		$(".pwdtext").text("密码不能为空");
		$(".pwdtext").css("color", "red");
	}
	// alert(123);
}



function checkForm() {

	if ($("#email").val().trim() == "") {
		//$("#ddlClassesType_2").focus();
		return false;
	}


	if ($("#pwd").val().trim() == "") {
		//$("#txtWebNameAlias").focus();
		return false;
	}

	return true;
}