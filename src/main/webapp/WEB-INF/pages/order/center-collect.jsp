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
    <title>我的收藏</title>
	<link rel="icon" href="<%=basePath%>/img/favicon.ico">

	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/all.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/pages-seckillOrder.css" />
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
							<li class="f-item"><span><a href="<%=path%>/search/toIndex">网上商城欢迎您!</a></span></li>
							<li class="f-item">&nbsp;&nbsp;${username}</li>
							<li class="f-item"><span><a href="<%=path%>/limit/loginOut">退出</a></span></li>
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
								<li class="f-item">
									<span>
										<a href="<%=path%>/collect/toCenterCollect">我的收藏</a>
									</span>
								</li>
								<li class="f-item">
									<span>
										<a href="<%=path%>/info/toSettingInfo">个人信息</a>
									</span>
								</li>
								<li class="f-item">
									<span>
										<a href="<%=path%>/info/toSettingAddress">地址管理</a>
									</span>
								</li>
							</ul>
						</div>

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
	</div>

    <!--header-->
    <div id="account">
        <div class="py-container">
            <div class="yui3-g collect">
                <!--左侧列表-->
				<div class="yui3-u-1-6 list">
					<div class="list-items">
						<dl>
							<dt><i>·</i> 收藏中心</dt>
						</dl>
					</div>
				</div>
                <!--右侧主内容-->
                <div class="yui3-u-5-6 goods">
                    <div class="body">                   
						<h4>收藏的商品</h4>
                            <div class="goods-list">
                                <!-- 表格 -->
								<ul class="yui3-g"  id="goods-list">
									<c:forEach items="${list}" var="p" varStatus="s">
										<li class="yui3-u-1-4">
											<div class="list-wrap">
												<div class="p-img"><img src="${p.image}" ></div>
												<div class="price"><strong><em>¥</em> <i>8848.00</i></strong></div>
												<div class="attr"><em>${p.name}</em></div>
												<div class="operate">
													<a href="<%=path%>/collect/mvToCart/${p.id}/${userId}"class="sui-btn btn-bordered btn-danger">加入购物车</a>
												</div>
												<div class="operate">
													<a href="<%=path%>/collect/delCollect/${p.id}/${userId}" class="sui-btn btn-bordered">删除</a>
												</div>

											</div>
										</li >
									</c:forEach>
								</ul>
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
						<img src="./img/wx_cz.jpg">
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
				<p>地址：江苏省苏州市 邮编： 电话： 传真：</p>
				<p>京ICP备080446651号京公网安备11010846575757</p>
			</div>
		</div>
	</div>
</div>
<!--页面底部END-->
    


</body>

</html>