<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../base.jsp"%>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet" type="text/css" href="stylesheet/bootstrap.css">

<link rel="stylesheet" type="text/css" href="stylesheet/theme.css">

<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

<script src="lib/jquery-1.7.2.min.js" type="text/javascript"></script>


<!-- Demo page code -->

<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.brand {
	font-family: georgia, serif;
}

.brand .first {
	color: #ccc;
	font-style: italic;
}

.brand .second {
	color: #fff;
	font-weight: bold;
}
</style>

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="../assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../assets/ico/apple-touch-icon-57-precomposed.png">
</head>
<body class="">
	<!--<![endif]-->
	<form action="person/users" method="post">
		<div class="navbar">
			<div class="navbar-inner">
				<ul class="nav pull-right">

					<li><a href="#"
						class="hidden-phone visible-tablet visible-desktop" role="button">设置</a></li>
					<li id="fat-menu" class="dropdown"><a href="#" role="button"
						class="dropdown-toggle" data-toggle="dropdown"> ${ sessionScope.User.name  }

					</a>

						<ul class="dropdown-menu">
							<li><a tabindex="-1" href="#">我的账户</a></li>
							<li class="divider"></li>
							<li><a tabindex="-1" class="visible-phone" href="#">Settings</a></li>
							<li class="divider visible-phone"></li>
							<li><a tabindex="-1" href="cancel">退出</a></li>
						</ul></li>

				</ul>
				<a class="brand" href="person/users"><span class="first">Your</span>
					<span class="second">个人理财平台</span></a>
			</div>
		</div>




		<div class="sidebar-nav">
			<a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i
				class="icon-dashboard"></i>仪表盘</a>
			<ul id="dashboard-menu" class="nav nav-list collapse in">
				<li><a href="person/users">理财列表</a></li>
				<li><a href="person/categoryList">类别列表</a></li>

			</ul>

			<a href="#accounts-menu" class="nav-header" data-toggle="collapse"><i
				class="icon-briefcase"></i>个人管理</a>
			<ul id="accounts-menu" class="nav nav-list collapse">

				<li><a href="person/resetPassword">重设密码</a></li>
			</ul>



			<a href="#legal-menu" class="nav-header" data-toggle="collapse"><i
				class="icon-legal"></i>法律</a>
			<ul id="legal-menu" class="nav nav-list collapse">
				<li><a href="privacyPolicy">隐私政策</a></li>
				<li><a href="termsAndConditions">条款和条件</a></li>
			</ul>

			<a href="help" class="nav-header"><i class="icon-question-sign"></i>帮助</a>
			<a href="faq" class="nav-header"><i class="icon-comment"></i>常见问题</a>
		</div>



		<div class="content">

			<div class="header">

				<h1 class="page-title">理财列表</h1>
			</div>

			<ul class="breadcrumb">
				<li><a href="person/users">首页</a> <span class="divider">/</span></li>
				<li class="active">理财列表</li>
			</ul>

			<div class="container-fluid">
				<div class="row-fluid">

					<div class="btn-toolbar">
						<table>
							<tr>
								<td style="width: 50px"><label style="margin-left: 20px">类别</label></td>
								<td><select style="width: 100px" name="classify">
										<option value="所有">所有</option>
										<option value="支出">支出</option>
										<option value="收入">收入</option>
								</select></td>
								<td style="width: 50px"><label style="margin-left: 20px">时间</label></td>

								<td><input style="width: 100px" type="text"
									name="beginDate" value="${beginDate }"></td>

								<td style="width: 50px;"><label style="margin-left: 20px">至</label></td>

								<td><input style="width: 100px" type="text" name="endDate"
									value="${endDate }"></td>

								<td><a href="person/addlist"
									class="btn btn-primary pull-right"
									style="margin-left: 200px; width: 50px">新增</a></td>

								<td><input type="submit" class="btn" value="查询"></td>

							</tr>
						</table>

						<div class="btn-group"></div>
					</div>
					<div class="well">
						<table class="table">
							<thead>
								<tr>
									<th>序号</th>
									<th>名称</th>
									<th>金额</th>
									<th>时间</th>
									<th>类别</th>
									<th>操作</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${ requestScope.financeList }"
									varStatus="st">
									<tr>
										<td>${ st.index+1 }</td>
										<td>${ item.detail }</td>
										<td>${ item.money }</td>
										<td><fmt:formatDate value="${ item.time }"
												pattern="yyyy-MM-dd" /></td>
										<td>${ item.cname }[${ item.classify }]</td>
										<td><a class="delete"
											href="deletefinance?id=${ item.id }"><i
												class="icon-remove"></i></a></td>

									</tr>


								</c:forEach>






							</tbody>
						</table>
					</div>
					<div id="ys" style="text-align: center; margin-top: 10px;">${ requestScope.pageIndex }/${ requestScope.pageTotal }</div>
					<div id="tbl" style="margin-top: 10px; text-align: center;">

						<input type="hidden" name="pageIndex" id="pageIndex" value="${ requestScope.pageIndex }">
						<input type="hidden" id="pageTotal" value="${ requestScope.pageTotal }">

						<table id="tab" style="margin: auto; width: 20%;">

							<tr>
								<td><a href="#" class="page" id="first">首页</a></td>
								<td><a href="#" class="page" id="previou">上页</a></td>
								<td><a href="#" class="page" id="next">下页</a></td>
								<td><a href="#" class="page" id="last">末页</a></td>


							</tr>

						</table>
					</div>

					<div class="modal small hide fade" id="myModal" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h3 id="myModalLabel">Delete Confirmation</h3>
						</div>
						<div class="modal-body">
							<p class="error-text">
								<i class="icon-warning-sign modal-icon"></i>Are you sure you
								want to delete the user?
							</p>
						</div>
						<div class="modal-footer">
							<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
							<button class="btn btn-danger" data-dismiss="modal">Delete</button>
						</div>
					</div>



					<footer>
					<hr>

					<!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
					<p class="pull-right">
						A <a href="http://www.portnine.com/bootstrap-themes"
							target="_blank">Free Bootstrap Theme</a> by <a
							href="http://www.portnine.com" target="_blank">Portnine</a>
					</p>

					<p>
						&copy; 2012 <a href="http://www.portnine.com" target="_blank">Portnine</a>
					</p>
					</footer>

				</div>
			</div>
		</div>



		<script src="lib/bootstrap/js/bootstrap.js"></script>
		<script type="text/javascript">
			$("[rel=tooltip]").tooltip();
			$(function() {
				$('.demo-cancel-click').click(function() {
					return false;
				});
				$(".page").click(pageClick);
			});

			//分页操作
			function pageClick(){
				var id = $(this).attr("id");
				var pageIndex = parseInt($("#pageIndex").val());
				var totalPage = parseInt($("#pageTotal").val());
				
				if(id == "first"){
					$("#pageIndex").val(1);
					$("form").submit();
				}else if (id == "previou"){
					if(pageIndex > 1){
						$("#pageIndex").val(pageIndex-1);
						$("form").submit();
					}
				}else if( id == "next"){
					if(pageIndex < totalPage){
						$("#pageIndex").val(pageIndex+1);
						$("form").submit();
					}
				}else if( id == "last"){
					$("#pageIndex").val(totalPage);
					$("form").submit();
				}
				return false;
			}
		</script>
	</form>
</body>
</html>