$(function() {
	$("#email").focus(email_focus);
	$("#email").blur(email_blur);
	$("#name").focus(name_focus);
	$("#name").blur(name_blur);
	$("#pwd").focus(pwd_focus);
	$("#pwd").blur(pwd_blur);
	$("#repwd").focus(repwd_focus);
	$("#repwd").blur(repwd_blur);

	$(".submit").click(function(){
		return checkForm();
	});

});

function email_focus() {
	$(".emailtext").show();
	// alert(123);
	$(".emailtext").text("请输入有效邮箱名");
	$(".emailtext").css("color", "green");
}
function email_blur() {
	$(".emailtext").text("");

	if ($("#email").val().trim() == "") {
		$(".emailtext").text("邮箱名不能为空!");
		$(".emailtext").css("color", "red");
	}
	// alert(123);
}
function name_focus() {
	$(".nametext").show();
	// alert(123);
	$(".nametext").text("请输入昵称");
	$(".nametext").css("color", "green");
}
function name_blur() {
	$(".nametext").text("");

	if ($("#name").val().trim() == "") {
		$(".nametext").text("昵称不能为空!");
		$(".nametext").css("color", "red");
	}
	// alert(123);
}
function pwd_focus() {
	$(".pwdtext").show();
	// alert(123);
	$(".pwdtext").text("请设置密码");
	$(".pwdtext").css("color", "green");
}
function pwd_blur() {
	$(".pwdtext").text("");

	if ($("#pwd").val().trim() == "") {
		$(".pwdtext").text("密码不能为空");
		$(".pwdtext").css("color", "red");
	}
	// alert(123);
}
function repwd_focus() {
	$(".repwdtext").show();
	// alert(123);
	$(".repwdtext").text("请确认密码");
	$(".repwdtext").css("color", "green");
}
function repwd_blur() {
	$(".repwdtext").text("");

	if ($("#repwd").val().trim() == "") {
		$(".repwdtext").text("确认密码不能为空!");
		$(".repwdtext").css("color", "red");
	}
	// alert(123);
}

function checkForm() {

	if ($("#email").val().trim() == "") {
		//$("#ddlClassesType_2").focus();
		return false;
	}

	if ($("#name").val().trim() == "") {
		//$("#txtWebName").focus();
		return false;
	}

	if ($("#pwd").val().trim() == "") {
		//$("#txtWebNameAlias").focus();
		return false;
	}

	if ($("#repwd").val().trim() == "") {
		//$("#ddlVisitorType").focus();
		return false;
	}

	return true;
}