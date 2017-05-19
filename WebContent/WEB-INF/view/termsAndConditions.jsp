<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="base.jsp" %>
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
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
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
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
</head>
<body class=""> 
  <!--<![endif]-->
    
    <div class="navbar">
        <div class="navbar-inner">
                <ul class="nav pull-right">
                    
                    <li><a href="#" class="hidden-phone visible-tablet visible-desktop" role="button">设置</a></li>
                    <li id="fat-menu" class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                      		    ${ sessionScope.User.name  }
                            
                        </a>

                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="#">我的账户</a></li>
                            <li class="divider"></li>
                            <li><a tabindex="-1" class="visible-phone" href="#">Settings</a></li>
                            <li class="divider visible-phone"></li>
                            <li><a tabindex="-1" href="cancel">退出</a></li>
                        </ul>
                    </li>
                    
                </ul>
                <a class="brand" href="person/users"><span class="first">Your</span> <span class="second">个人理财平台</span></a>
        </div>
    </div>
    


    
    <div class="sidebar-nav">
        <a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>仪表盘</a>
        <ul id="dashboard-menu" class="nav nav-list collapse in">
            <li ><a href="person/users">理财列表</a></li>
            <li ><a href="person/categoryList">类别列表</a></li>
            
        </ul>

        <a href="#accounts-menu" class="nav-header" data-toggle="collapse"><i class="icon-briefcase"></i>个人管理</a>
        <ul id="accounts-menu" class="nav nav-list collapse">

            <li ><a href="person/resetPassword">重设密码</a></li>
        </ul>

        

        <a href="#legal-menu" class="nav-header" data-toggle="collapse"><i class="icon-legal"></i>法律</a>
        <ul id="legal-menu" class="nav nav-list collapse">
            <li ><a href="privacyPolicy">隐私政策</a></li>
            <li ><a href="termsAndConditions">条款和条件</a></li>
        </ul>

        <a href="help" class="nav-header" ><i class="icon-question-sign"></i>帮助</a>
        <a href="faq" class="nav-header" ><i class="icon-comment"></i>常见问题</a>
    </div>
    

    
    <div class="content">
        
        <div class="header">
            
            <h1 class="page-title">条款和条件</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="users">首页</a> <span class="divider">/</span></li>
            <li class="active">条款和条件</li>
        </ul>

        <div class="container-fluid">
            <div class="row-fluid">
                    
<h2>使用条款</h2>
这些条款和条件构成您（“您”，“您的”，“用户”，“客户”）和公司之间的协议（“协议”）。
<h2>资格与身份。</h2>
要有资格使用我们的服务，您必须至少13岁.
<h2>终止</h2>
您可以随时终止本协议，方式是停止使用本服务并通知我们。公司可以在任何时候终止本协议，恕不另行通知，如果其认为唯一判断您已违反或可能违反本协议的任何条款或条件。
<h2>使用服务和帐户</h2>
您声明并保证您拥有签订本协议的法定权利和能力。您同意不使用材料，内容，服务和您的帐户的任何非法或滥用目的或任何干扰我们向客户提供服务或损害我们的财产的能力。
<h2>修改服务</h2>
公司可以随时更改，暂停或停止服务的全部或任何部分，无论是否有理由。您承认本服务的操作可能会不时遇到技术或其他问题，并且可能不一定继续不间断或没有技术或其他错误，并且公司不会对您或他人负责任何此类中断，错误或问题或彻底终止服务。
<h2>知识产权所有权</h2>
所有材料，服务，帐户和内容，包括但不限于政策信息，文本，软件，音乐，声音，照片，视频，图形，文本和图像的安排，商业产生的信息，网站或通过服务（“内容”）提供，除非另有说明。
<h2>隐私</h2>
请参阅 <a href="privacy-policy.html">隐私政策,</a> 如网站上所述。

<h2>关于这些条款</h2>
这些条款和条件仅是一个样本，不具有法律约束力。实际服务条款不（通常）包含蔬菜...

                    
                    <footer>
                        <hr>

                        <!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
                        <p class="pull-right">A <a href="http://www.portnine.com/bootstrap-themes" target="_blank">Free Bootstrap Theme</a> by <a href="http://www.portnine.com" target="_blank">Portnine</a></p>

                        <p>&copy; 2012 <a href="http://www.portnine.com" target="_blank">Portnine</a></p>
                    </footer>
                    
            </div>
        </div>
    </div>
    


    <script src="lib/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
</html>