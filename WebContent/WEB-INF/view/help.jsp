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
<body>
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
            
            <h1 class="page-title">帮助</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="users">首页</a> <span class="divider">/</span></li>
            <li class="active">帮助</li>
        </ul>

        <div class="container-fluid">
            <div class="row-fluid">
                    
<div class="faq-content">
    <div class="row-fluid">
        <div class="span9">
            <div class="search-well">
                <form class="form-inline">
                    <input class="input-xlarge" placeholder="Search Help..." id="appendedInputButton" type="text">
                    <button class="btn" type="button"><i class="icon-search"></i> Go</button>
                </form>
            </div>

            <div class="block">
                <p class="block-heading">热门话题</p>
                <div class="block-body">
                    <ol>
                        <li><a href="#">What if I have a question?</a></li>
                        <li><a href="#">Where can I get support?</a></li>
                        <li><a href="#">How long does it take to fix a problem?</a></li>
                        <li><a href="#">Who can help me out?</a></li>
                        <li><a href="#">Where are you located?</a></li>
                    </ol>
                </div>
            </div>

            <div class="block">
                <p class="block-heading">高级支持可用</p>
                <div class="block-body">
                <div class="row-fluid">
                    <p>Cress green bean potato bunya nuts water chestnut chicory rock melon jícama lotus root wattle seed eggplant coriander winter purslane spring onion.</p>
                    <a href="#" class="btn btn-primary">开始</a>
                    <div class="clearfix"></div>
                    </div>
                </div>
            </div>

            <div class="block">
                <p class="block-heading">热门话题</p>
                <div class="block-body">
                <div class="row-fluid" style="text-align: center;">
                    <div class="pull-left span4 unstyled">
                        <p><a href="#">Your Account</a></p>
                        <p><a href="#">Past Orders</a></p>
                        <p><a href="#">Your Profile</a></p>
                    </div>
                    <div class="pull-left span4 unstyled">
                        <p><a href="#">Your Account</a></p>
                        <p><a href="#">Past Orders</a></p>
                        <p><a href="#">Your Profile</a></p>
                    </div>
                    <div>
                        <p><a href="#">Your Account</a></p>
                        <p><a href="#">Past Orders</a></p>
                        <p><a href="#">Your Profile</a></p>
                    </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="block">
                <p class="block-heading">有用的信息</p>
                <div class="block-body">
                    <h2>Aubergine Asparagus Maize</h2>
                    <p>Catsear corn gumbo leek chickpea summer purslane chicory. Taro azuki bean broccoli rabe soybean endive chicory. Pumpkin salsify horseradish avocado cabbage tomatillo ricebean caulie turnip greens eggplant.</p>

                    <p>Sweet pepper pea sprouts mung bean cabbage radicchio silver beet coriander lentil groundnut jícama wattle seed black-eyed pea chicory broccoli rabe bamboo shoot. Kombu garlic watercress garbanzo squash plantain amaranth wattle seed tomatillo tigernut. Wakame watercress swiss chard bamboo shoot garlic wakame azuki bean lentil lettuce chicory horseradish eggplant gumbo. Swiss chard turnip jícama courgette fennel salsify brussels sprout zucchini sea lettuce desert raisin fava bean artichoke kale bell pepper watercress wakame black-eyed pea garlic. Lentil spring onion caulie welsh onion sweet pepper quandong potato wakame carrot taro artichoke prairie turnip eggplant.</p>

                    <p>Scallion burdock silver beet water spinach turnip watercress aubergine. Komatsuna scallion bush tomato prairie turnip amaranth cress fennel parsnip plantain rutabaga lettuce chickweed radish. Yarrow bell pepper radish tomatillo avocado brussels sprout leek garlic salad pea sprouts sorrel courgette chickweed courgette carrot fennel cress lotus root.</p>
                </div>
            </div>
        </div>
        <div class="span3">
            <div class="toc">
                <h3>Table of Contents</h3>
                <ol>
                    <li><a href="#">Orders</a></li>
                    <li><a href="#">Billing</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">Your Account</a></li>
                </ol>
            </div>
            <div class="toc">
                <h3>联系我们</h3>
                <h4>联系方式</h4>
                <p>+1-123-333-4321</p>
                <h4>邮箱地址</h4>
                <p><a href="#">hello@yourcompany.com</a></p>
                <h4>地址</h4>
                <address>
						安徽省<br>
						合肥市<br>
						科大讯飞
				</address>
                <div>
                    <button class="btn"><i class="icon-facebook"></i></button>
                    <button class="btn"><i class="icon-twitter"></i></button>
                    <button class="btn"><i class="icon-linkedin"></i></button>
                </div>
            </div>
        </div>
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
    </div>
    


    <script src="lib/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    
  </body>
</body>
</html>