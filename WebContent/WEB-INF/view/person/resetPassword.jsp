<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../base.jsp" %>
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
                    
                </ul>
                <a class="brand" href="users"><span class="first">Your</span> <span class="second">个人理财平台</span></a>
        </div>
    </div>
    

        <div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading">密码修改</p>
            <div class="block-body">
                <form action="person/resetPassword" method="post">
                    <label>姓名</label>
                    <input type="text" style="border: 0px;" class="span12" value="${ sessionScope.User.name }"></input>
                    <label>邮箱</label>
                    <input type="text" style="border: 0px" class="span12" value="${ sessionScope.User.email }"></input>
                    <label>旧密码</label>
                    <input type="text" placeholder="请输入旧密码密码" class="span12" name="oldpwd">${ oldmsg }</input>
                    <label>新密码</label>
                    <input type="text" placeholder="请输入新密码" class="span12" name="newpwd">${ newmsg }</input>
                    <label>确认密码</label>
                    <input type="text" placeholder="请确认密码" class="span12" name="password">${ passwordmsg }</input>
                    <input type="submit" class="btn btn-primary pull-right" value="保存">
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
        <a href="signIn">登录到您的账号</a>
    </div>
</div>


    


    <script src="lib/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
  </body>
</html>