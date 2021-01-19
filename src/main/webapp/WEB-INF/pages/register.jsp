<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
	<base href="<%=basePath%>">
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
	<title>个人注册</title>
	<link rel="icon" href="<%=basePath%>/img/favicon.ico">


    <link rel="stylesheet" type="text/css" href="<%=path%>/css/all.css" />
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/pages-register.css" />
</head>

<body>
<!--页面顶部-->
<div id="nav-bottom">
	<!--顶部-->
	<div class="nav-top">
		<div class="top">
			<div class="py-container">
				<div class="shortcut">
					<ul class="fl">
						<li class="f-item">网上商城欢迎您！</li>
						<li class="f-item">请<a href="login.jsp">登录</a>　
							<span><a href="<%=path%>/limit/register">免费注册</a></span></li>
					</ul>
				</div>
			</div>
		</div>

	</div>
</div>

<div class="register py-container ">

	<!--register-->
	<div class="registerArea">
		<h3>注册新用户<span class="go">我有账号，去<a href="login.jsp">登陆</a></span></h3>
		<div class="info">
			<form class="sui-form form-horizontal" action="<%=path%>/limit/toRegister" method="post">
				<div class="control-group">
					<label class="control-label">用户名：</label>
					<div class="controls">
						<input type="text" placeholder="请输入你的用户名" class="input-xfat input-xlarge" name="username">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">手机号：</label>
					<div class="controls">
						<input type="text" placeholder="请输入你的手机号" class="input-xfat input-xlarge" name="phone">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">登录密码：</label>
					<div class="controls">
						<input type="password" placeholder="设置登录密码" class="input-xfat input-xlarge" name="password">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">确认密码：</label>
					<div class="controls">
						<input type="password" placeholder="再次确认密码" class="input-xfat input-xlarge" name="repassword">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label"></label>
					<div class="controls btn-reg">
						<input class="sui-btn btn-block btn-xlarge btn-danger" type="submit" value="完成注册">
					</div>
				</div>
			</form>
			<div class="clearfix"></div>
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
			<li>手机</li>
			<li>销售联盟</li>
			<li>社区</li>
		</ul>
		<div class="address">地址： 邮编： 电话： 传真：</div>
		<div class="beian">京ICP备08242号京公网安备11034307702
		</div>
	</div>
</div>

</body>

</html>