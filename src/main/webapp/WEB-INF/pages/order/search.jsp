<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
	<title>产品列表页</title>
	 <link rel="icon" href="<%=basePath%>/img/favicon.ico">

    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/all.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/pages-list.css" />
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

	<!-- 商品分类导航 -->
	<div class="typeNav">
			<div class="py-container">
				<div class="yui3-g NavList">
    <div class="all-sorts-list">
        <div class="yui3-u Left all-sort">
            <h4>全部商品分类</h4>
        </div>
    </div>
    <div class="yui3-u Center navArea">
        <ul class="nav">
            <li class="f-item">服装城</li>
            <li class="f-item">美妆馆</li>
            <li class="f-item">网上商城超市</li>
            <li class="f-item">全球购</li>
            <li class="f-item">闪购</li>
            <li class="f-item">团购</li>
            <li class="f-item">有趣</li>
            <li class="f-item">秒杀</li>
        </ul>
    </div>
    <div class="yui3-u Right"></div>
</div>
			</div>
		</div>
	<!--list-content-->
	<div class="main">
		<div class="py-container">
			<!--bread-->
			<div class="bread">
				<ul class="fl sui-breadcrumb">
					<li>
						<a href="#">筛选条件：</a>
					</li>					
				</ul>
				<ul class="fl sui-tag">
					<li class="with-x">${complete} --></li>
					<c:forEach items="${brand}" var="brand">
						<li class="with-x">${brand}</li>
					</c:forEach>
				</ul>				
			</div>
			<div class="goods-list">
				<ul class="yui3-g">
					<c:forEach items="${pageInfo.list}" var="p" varStatus="s">
					<li class="yui3-u-1-5">
						<div class="list-wrap">
							<div class="p-img">
								<img src="${p.image}"/>
							</div>
							<div class="price">
								<strong>
									<em>¥</em>
									<i>8888.00</i>
								</strong>
							</div>
							<div class="attr">
								${p.name}
							</div>
							<div class="operate">
								<a href="<%=path%>/order/toCollect/${p.id}/${userId}" class="sui-btn btn-bordered btn-danger">加入购物车</a>
								<a href="<%=path%>/collect/centerCollect/${p.id}/${userId}" class="sui-btn btn-bordered">收藏</a>
							</div>
						</div>
					</li>
					</c:forEach>
				</ul>
			</div>
				<div class="fr page">
					<div class="sui-pagination pagination-large">
						<ul>
							<li class="next">
								<a href="<%=path%>/search/complete?complete=${complete}&page=${page-1}">«上一页</a>
							</li>
							<li class="active">
								<a href="<%=path%>/search/complete?complete=${complete}&page=1">1</a>
							</li>
							<li>
								<a href="<%=path%>/search/complete?complete=${complete}&page=2">2</a>
							</li>
							<li>
								<a href="<%=path%>/search/complete?complete=${complete}&page=3">3</a>
							</li>
							<li>
								<a href="<%=path%>/search/complete?complete=${complete}&page=4">4</a>
							</li>
							<li class="dotted"><span>....</span></li>
							<li class="next">
								<a href="<%=path%>/search/complete?complete=${complete}&page=${page+1}">下一页»</a>
							</li>
						</ul>
						<div><span>共${totalPage}页&nbsp;</span></div>
					</div>
				</div>
			</div>
			<!--hotsale-->
			<div class="clearfix hot-sale">
				<h4 class="title">热卖商品</h4>
				<div class="hot-list">
					<ul class="yui3-g">
						<li class="yui3-u-1-4">
							<div class="list-wrap">
								<div class="p-img">
									<img src="<%=basePath%>/img/like_01.png" />
								</div>
								<div class="attr">
									<em>Apple苹果iPhone 6s (A1699)</em>
								</div>
								<div class="price">
									<strong>
											<em>¥</em>
											<i>4088.00</i>
										</strong>
								</div>
								<div class="commit">
									<i class="command">已有700人评价</i>
								</div>
							</div>
						</li>
						<li class="yui3-u-1-4">
							<div class="list-wrap">
								<div class="p-img">
									<img src="<%=basePath%>/img/like_03.png" />
								</div>
								<div class="attr">
									<em>金属A面，360°翻转，APP下单省300！</em>
								</div>
								<div class="price">
									<strong>
											<em>¥</em>
											<i>4088.00</i>
										</strong>
								</div>
								<div class="commit">
									<i class="command">已有700人评价</i>
								</div>
							</div>
						</li>
						<li class="yui3-u-1-4">
							<div class="list-wrap">
								<div class="p-img">
									<img src="<%=basePath%>/img/like_04.png" />
								</div>
								<div class="attr">
									<em>256SSD商务大咖，完爆职场，APP下单立减200</em>
								</div>
								<div class="price">
									<strong>
											<em>¥</em>
											<i>4068.00</i>
										</strong>
								</div>
								<div class="commit">
									<i class="command">已有20人评价</i>
								</div>
							</div>
						</li>
						<li class="yui3-u-1-4">
							<div class="list-wrap">
								<div class="p-img">
									<img src="<%=basePath%>/img/like_02.png" />
								</div>
								<div class="attr">
									<em>Apple苹果iPhone 6s (A1699)</em>
								</div>
								<div class="price">
									<strong>
											<em>¥</em>
											<i>4088.00</i>
										</strong>
								</div>
								<div class="commit">
									<i class="command">已有700人评价</i>
								</div>
							</div>
						</li>
					</ul>
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
						<img src="<%=basePath%>/img/wx_cz.jpg">
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
				<p>京ICP备080035351号京公网安备11010834535</p>
			</div>
		</div>
	</div>
</div>
<!--页面底部END-->

	<!--侧栏面板开始-->
<div class="J-global-toolbar">
	<div class="toolbar-wrap J-wrap">
		<div class="toolbar">
			<div class="toolbar-panels J-panel">

				<!-- 购物车 -->
				<div style="visibility: hidden;" class="J-content toolbar-panel tbar-panel-cart toolbar-animate-out">
					<h3 class="tbar-panel-header J-panel-header">
						<a href="" class="title"><i></i><em class="title">购物车</em></a>
						<span class="close-panel J-close" onclick="cartPanelView.tbar_panel_close('cart');" ></span>
					</h3>
					<div class="tbar-panel-main">
						<div class="tbar-panel-content J-panel-content">
							<div id="J-cart-tips" class="tbar-tipbox hide">
								<div class="tip-inner">
									<span class="tip-text">还没有登录，登录后商品将被保存</span>
									<a href="#none" class="tip-btn J-login">登录</a>
								</div>
							</div>
							<div id="J-cart-render">
								<!-- 列表 -->
								<div id="cart-list" class="tbar-cart-list">
								</div>
							</div>
						</div>
					</div>
					<!-- 小计 -->
					<div id="cart-footer" class="tbar-panel-footer J-panel-footer">
						<div class="tbar-checkout">
							<div class="jtc-number"> <strong class="J-count" id="cart-number">0</strong>件商品 </div>
							<div class="jtc-sum"> 共计：<strong class="J-total" id="cart-sum">¥0</strong> </div>
							<a class="jtc-btn J-btn" href="#none" target="_blank">去购物车结算</a>
						</div>
					</div>
				</div>

				<!-- 我的关注 -->
				<div style="visibility: hidden;" data-name="follow" class="J-content toolbar-panel tbar-panel-follow">
					<h3 class="tbar-panel-header J-panel-header">
						<a href="#" target="_blank" class="title"> <i></i> <em class="title">我的关注</em> </a>
						<span class="close-panel J-close" onclick="cartPanelView.tbar_panel_close('follow');"></span>
					</h3>
					<div class="tbar-panel-main">
						<div class="tbar-panel-content J-panel-content">
							<div class="tbar-tipbox2">
								<div class="tip-inner"> <i class="i-loading"></i> </div>
							</div>
						</div>
					</div>
					<div class="tbar-panel-footer J-panel-footer"></div>
				</div>

				<!-- 我的足迹 -->
				<div style="visibility: hidden;" class="J-content toolbar-panel tbar-panel-history toolbar-animate-in">
					<h3 class="tbar-panel-header J-panel-header">
						<a href="#" target="_blank" class="title"> <i></i> <em class="title">我的足迹</em> </a>
						<span class="close-panel J-close" onclick="cartPanelView.tbar_panel_close('history');"></span>
					</h3>
					<div class="tbar-panel-main">
						<div class="tbar-panel-content J-panel-content">
							<div class="jt-history-wrap">
								<a href="#" class="history-bottom-more" target="_blank">查看更多足迹商品 &gt;&gt;</a>
							</div>
						</div>
					</div>
					<div class="tbar-panel-footer J-panel-footer"></div>
				</div>

			</div>

			<div class="toolbar-header"></div>

			<div class="toolbar-footer">
				<div class="toolbar-tab tbar-tab-top" > <a href="#"> <i class="tab-ico  "></i> <em class="footer-tab-text">顶部</em> </a> </div>
				<div class="toolbar-tab tbar-tab-feedback" > <a href="#" target="_blank"> <i class="tab-ico"></i> <em class="footer-tab-text ">反馈</em> </a> </div>
			</div>

			<div class="toolbar-mini"></div>

		</div>

		<div id="J-toolbar-load-hook"></div>

	</div>
</div>


<script type="text/javascript" src="<%=basePath%>/js/all.js"></script>
</body>

</html>