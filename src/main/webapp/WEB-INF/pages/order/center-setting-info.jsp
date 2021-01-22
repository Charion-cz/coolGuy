<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>设置-个人信息</title>
     <link rel="icon" href="<%=basePath%>/img/favicon.ico">

    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/all.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/pages-seckillOrder.css" />
</head>

<body>
    <!-- 头部栏位 -->
    <!--页面顶部-->
	<div id="nav-bottom">
		<!--顶部-->
		<div class="top">
			<div class="py-container">
				<div class="shortcut">
					<ul class="fl">
						<li class="f-item"><span><a href="<%=path%>/search/toIndex">网上商城欢迎您!</a></span></li>
						<li class="f-item">&nbsp;&nbsp;${username}</li>
					</ul>
					<div class="fr typelist">
						<ul class="types">
							<li class="f-item">
								<span><a href="<%=path%>/order/myOrder">我的订单</a></span>
							</li>
							<li class="f-item">
									<span>
										<a href="<%=path%>/order/toCart">我的购物车</a>
									</span>
							</li>
						</ul>
					</div>

				</div>
			</div>
		</div>

		<!--头部-->
		<div class="header">
			<div class="py-container">
				<div class="yui3-g Logo">
					<div class="yui3-u Rit searchArea">
						<div class="search">
							<form action="<%=path%>/search/complete" class="sui-form form-inline" method="post">
								<!--searchAutoComplete-->
								<div class="input-append">
									<input type="text" id="autocomplete" placeholder="请输入你要查找的商品" class="input-error input-xxlarge" name="complete"/>
									<button class="sui-btn btn-xlarge btn-danger" type="submit">搜索</button>
								</div>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

    <!--header-->
    <div id="account">
        <div class="py-container">
            <div class="yui3-g home">
                <!--左侧列表-->
				<div class="yui3-u-1-6 list">
					<div class="list-items">
						<dl>
							<dt><i>·</i> 订单中心</dt>
							<dd ><a href="<%=path%>/order/myOrder">我的订单</a></dd>
						</dl>
						<dl>
							<dt><i>·</i> 我的中心</dt>
							<dd><a href="<%=path%>/collect/toCenterCollect">我的收藏</a></dd>
						</dl>
						<dl>
							<dd><a href="<%=path%>/info/toSettingInfo">个人信息</a></dd>
							<dd><a href="<%=path%>/info/toSettingAddress">地址管理</a></dd>
						</dl>
					</div>
				</div>
                <!--右侧主内容-->
                <div class="yui3-u-5-6">
                    <div class="body userInfo">
                        <ul class="sui-nav nav-tabs nav-large nav-primary ">
                            <li class="active"><a href="#one" data-toggle="tab">基本资料</a></li>                         
                        </ul>
                        <div class="tab-content ">
                            <div id="one" class="tab-pane active">
                                <form id="form-msg" class="sui-form form-horizontal" action="<%=path%>/info/toUpUser">
                                    <div class="control-group">
                                        <label for="username" class="control-label">昵称：</label>
                                        <div class="controls">
                                            <input type="text" id="username" name="username" placeholder="${user.username}">
                                        </div>
                                    </div>
									<div class="control-group">
                                        <label for="phone" class="control-label">手机号：</label>
                                        <div class="controls">
                                            <input type="text" id="phone" name="phone" placeholder="${user.phone}">
                                        </div>
                                    </div>
									<div class="control-group">
										<label for="password" class="control-label">原密码：</label>
										<div class="controls">
											<input type="password" id="password" name="password" placeholder="******">
										</div>
									</div>
									<div class="control-group">
                                        <label for="newPassword" class="control-label">新密码：</label>
                                        <div class="controls">
                                            <input type="password" id="newPassword" name="newPassword" placeholder="******">
                                        </div>
                                    </div>
									<div class="control-group">
                                        <label for="rePassword" class="control-label">确认密码：</label>
                                        <div class="controls">
                                            <input type="password" id="rePassword" name="rePassword" placeholder="******">
                                        </div>
                                    </div>                                
                                    <div class="control-group">
										<label for="sanwei" class="control-label"></label>
                                        <div class="controls">
                                            <input type="submit" id="sanwei" class="sui-btn btn-primary"></button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                          
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 底部栏位 -->
    <!--页面底部-->
<div class="clearfix footer">
	<div class="py-container">
		<div class="footlink">
			<div class="Mod-service">
				<ul class="Mod-Service-list">
					<li class="grid-service-item intro  intro1">

						<i class="serivce-item fl"></i>
						<div class="service-text">
							<h4>正品保障</h4>
							<p>正品保障，提供发票</p>
						</div>

					</li>
					<li class="grid-service-item  intro intro2">

						<i class="serivce-item fl"></i>
						<div class="service-text">
							<h4>正品保障</h4>
							<p>正品保障，提供发票</p>
						</div>

					</li>
					<li class="grid-service-item intro  intro3">

						<i class="serivce-item fl"></i>
						<div class="service-text">
							<h4>正品保障</h4>
							<p>正品保障，提供发票</p>
						</div>

					</li>
					<li class="grid-service-item  intro intro4">

						<i class="serivce-item fl"></i>
						<div class="service-text">
							<h4>正品保障</h4>
							<p>正品保障，提供发票</p>
						</div>

					</li>
					<li class="grid-service-item intro intro5">

						<i class="serivce-item fl"></i>
						<div class="service-text">
							<h4>正品保障</h4>
							<p>正品保障，提供发票</p>
						</div>

					</li>
				</ul>
			</div>
			<div class="clearfix Mod-list">
				<div class="yui3-g">
					<div class="yui3-u-1-6">
						<h4>购物指南</h4>
						<ul class="unstyled">
							<li>购物流程</li>
							<li>会员介绍</li>
							<li>生活旅行/团购</li>
							<li>常见问题</li>
							<li>购物指南</li>
						</ul>

					</div>
					<div class="yui3-u-1-6">
						<h4>配送方式</h4>
						<ul class="unstyled">
							<li>上门自提</li>
							<li>211限时达</li>
							<li>配送服务查询</li>
							<li>配送费收取标准</li>
							<li>海外配送</li>
						</ul>
					</div>
					<div class="yui3-u-1-6">
						<h4>支付方式</h4>
						<ul class="unstyled">
							<li>货到付款</li>
							<li>在线支付</li>
							<li>分期付款</li>
							<li>邮局汇款</li>
							<li>公司转账</li>
						</ul>
					</div>
					<div class="yui3-u-1-6">
						<h4>售后服务</h4>
						<ul class="unstyled">
							<li>售后政策</li>
							<li>价格保护</li>
							<li>退款说明</li>
							<li>返修/退换货</li>
							<li>取消订单</li>
						</ul>
					</div>
					<div class="yui3-u-1-6">
						<h4>特色服务</h4>
						<ul class="unstyled">
							<li>夺宝岛</li>
							<li>DIY装机</li>
							<li>延保服务</li>
							<li>E卡</li>
							<li>通信</li>
						</ul>
					</div>
					<div class="yui3-u-1-6">
						<h4>帮助中心</h4>
						<img src="<%=basePath%>>/img/wx_cz.jpg">
					</div>
				</div>
			</div>
			<div class="Mod-copyright">
				<ul class="helpLink">
					<li>关于我们<span class="space"></span></li>
					<li>联系我们<span class="space"></span></li>
					<li>关于我们<span class="space"></span></li>
					<li>商家入驻<span class="space"></span></li>
					<li>营销中心<span class="space"></span></li>
					<li>友情链接<span class="space"></span></li>
					<li>关于我们<span class="space"></span></li>
					<li>营销中心<span class="space"></span></li>
					<li>友情链接<span class="space"></span></li>
					<li>关于我们</li>
				</ul>
				<p>地址： 邮编： 电话： 传真：</p>
				<p>京ICP备084564641号京公网安备1105645642</p>
			</div>
		</div>
	</div>
</div>
<!--页面底部END-->

</body>

</html>