<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
            
            <h1 class="page-title">类别列表</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="person/users">首页</a> <span class="divider">/</span></li>
            <li class="active">类别列表</li>
        </ul>
<form action="person/categoryList" method="post">
        <div class="container-fluid">
            <div class="row-fluid">
                    
<div class="btn-toolbar">
	<table>
	<tr>
 	<td style="width:50px"><label style="margin-left: 20px">类别</label></td>
	<td>
	
		<select style="width: 100px" name="category">
			<option value="所有">所有</option>
			<option value="支出">支出</option>
			<option value="收入">收入</option>
		</select>
	</td>
    <td><a href="person/categoryAdd" class="btn btn-primary pull-right" style="margin-left: 200px; width: 50px">新增</a></td>
    <td><input type="submit" value="查询">
    </tr>
    </table>
   
  <div class="btn-group">
  </div>
</div>
<div class="well">
    <table class="table">
      <thead>
        <tr>
          <th>序号</th>
          <th>名称</th>
          <th>所属分类</th>
          <th>操作</th>
          
        </tr>
      </thead>
      <tbody>
      <c:forEach var="item" items="${ requestScope.categoryList }" varStatus="st">
    	<tr>
    		<th>${ st.index+1 }</th>
    		<th>${ item.name }</th>
    		<th>${ item.classify }</th>
    		<th><a class = "delete"  href="delete?id=${ item.id }"><i class="icon-remove"></i></a></th>
    	
    	</tr>
      
      
      
      </c:forEach>
        


      </tbody>
    </table>
</div>


<div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Delete Confirmation</h3>
    </div>
    <div class="modal-body">
        <p class="error-text"><i class="icon-warning-sign modal-icon"></i>Are you sure you want to delete the user?</p>
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
        <button class="btn btn-danger" data-dismiss="modal">Delete</button>
    </div>
</div>


                    
                    <footer>
                        <hr>

                        <!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
                        <p class="pull-right">A <a href="http://www.portnine.com/bootstrap-themes" target="_blank">Free Bootstrap Theme</a> by <a href="http://www.portnine.com" target="_blank">Portnine</a></p>

                        <p>&copy; 2012 <a href="http://www.portnine.com" target="_blank">Portnine</a></p>
                    </footer>
                    
            </div>
        </div>
        </form>
    </div>
    


    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    
  </body>
</html>