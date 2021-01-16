<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
	<title>网上商城，欢迎登录</title>
	<link rel="icon" href="<%=basePath%>/img/favicon.ico">

	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/all.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/pages-login.css" />
</head>

<body>
<!-- 头部栏位 -->
<!--页面顶部-->
<div id="nav-bottom">
	<!--顶部-->
	<div class="nav-top">
		<div class="top">
			<div class="py-container">
				<div class="shortcut">
					<ul class="fl">
						<li class="f-item">网上商城欢迎您！</li>
						<li class="f-item">请<a href="limit/login" >登录</a>
							<span><a href="limit/register">免费注册</a></span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="login-box">

	<!--loginArea-->
	<div class="loginArea">
		<div class="py-container login">
			<div class="loginform">
				<ul class="sui-nav nav-tabs tab-wraped">
					<li id="tabSuiForm" class="active">
						<h3 align="center">账户登录</h3>
					</li>
				</ul>
				<div class="tab-content tab-wraped">
					<div id="profile" class="tab-pane active">
						<form class="sui-form" method="post" action="limit/toLogin">
							<div class="input-prepend"></span>
								<input id="inputName" type="text" placeholder="用户名" class="span2 input-xfat" name="username">
							</div>
							<div class="input-prepend"></span>
								<input id="inputPassword" type="password" placeholder="请输入密码" class="span2 input-xfat" name="password">
							</div>
							<div class="logined">
								<input class="sui-btn btn-block btn-xlarge btn-danger" type="submit" value="登  录" >
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--foot-->
	<div class="py-container copyright">
		<ul>
			<li>关于我们</li>
			<li>联系我们</li>
			<li>联系客服</li>
			<li>商家入驻</li>
			<li>营销中心</li>
			<li>手机品优购</li>
			<li>销售联盟</li>
			<li>品优购社区</li>
		</ul>
		<div class="address">地址： 邮编： 电话： 传真：</div>
		<div class="beian">京ICP备08078781号京公网安备11016868
		</div>
	</div>
</div>

<script type="text/javascript">
	function switchSuiForm() {
		document.getElementById('index').className = "tab-pane";
		document.getElementById('profile').className = "tab-pane active";
		document.getElementById('tabSuiForm').className = "active";
		document.getElementById('tabOtherLogin').className = "";
	}
	function switchOtherLogin() {
		document.getElementById('index').className = "tab-pane active";
		document.getElementById('profile').className = "tab-pane";
		document.getElementById('tabSuiForm').className = "";
		document.getElementById('tabOtherLogin').className = "active";
	}
</script>
</body>
</html>