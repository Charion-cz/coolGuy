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
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>商品已成功加入购物车</title>
	<link rel="icon" href="<%=basePath%>/img/favicon.ico">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/all.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/pages-success-cart.css" />
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

    <div class="success-cart">
        <div class="py-container ">
            <h3><i class="sui-icon icon-pc-right"></i>商品已成功加入购物车！</h3>
			<div class="goods">
				<div class="left-good">
					<div class="left-pic"><img src="${goodsImage}"></div>
					<div class="right-info">
						<p class="title">${goodsName}</p>
					</div>
				</div>
				<div class="right-gocart">
					<a href="<%=path%>/order/toCart" class="sui-btn btn-xlarge btn-danger ">去购物车结算</a>
				</div>
			</div>
        </div>
    </div>
 
     <div class="other-item py-container ">
          <h4>买什么</h4>
           <div class="buy-goods">
              <ul class="yui3-g">
                  <li  class="yui3-u-1-4">
                      <div class="buy-list">
                          <h4>告诉你何谓电子产品达人</h4>
                          <p>血战龙</p>
                          <div class="imgs">
                              <div class="ab-cover"><img src="<%=basePath%>/img/_/buy01.jpg"></div>
                              <div class="ab-list">
                                  <ul>
                                      <li><img src="<%=basePath%>/img/_/buy001.jpg"></li>
                                      <li><img src="<%=basePath%>/img/_/buy002.jpg"></li>
                                      <li><img src="<%=basePath%>/img/_/buy002.jpg"></li>
                                  </ul>
                              </div>
                          </div>
                          <div style="clear:both"></div>
                          <div class=" operate">
                              <a href="#" class="point"><i class="sui-icon icon-tb-like"></i> 关注 7</a>
                              <a href="#"  class="zan"><i class="sui-icon icon-tb-appreciatefill"></i> 赞 9</a>
                          </div>
                      </div>
                  </li>
                  <li  class="yui3-u-1-4">
                      <div class="buy-list">
                          <h4>告诉你何谓电子产品达人</h4>
                          <p>血战龙</p>
                          <div class="imgs">
                              <div class="ab-cover"><img src="<%=basePath%>/img/_/buy01.jpg"></div>
                              <div class="ab-list">
                                  <ul>
                                      <li><img src="<%=basePath%>/img/_/buy001.jpg"></li>
                                      <li><img src="<%=basePath%>/img/_/buy002.jpg"></li>
                                      <li><img src="<%=basePath%>/img/_/buy002.jpg"></li>
                                  </ul>
                              </div>
                          </div>
                          <div style="clear:both"></div>
                          <div class=" operate">
                              <a href="#" class="point"><i class="sui-icon icon-tb-like"></i> 关注 7</a>
                              <a href="#"  class="zan"><i class="sui-icon icon-tb-appreciatefill"></i> 赞 9</a>
                          </div>
                      </div>
                  </li>
                 <li  class="yui3-u-1-4">
                      <div class="buy-list">
                          <h4>告诉你何谓电子产品达人</h4>
                          <p>血战龙</p>
                          <div class="imgs">
                              <div class="ab-cover"><img src="<%=basePath%>/img/_/buy01.jpg"></div>
                              <div class="ab-list">
                                  <ul>
                                      <li><img src="<%=basePath%>/img/_/buy001.jpg"></li>
                                      <li><img src="<%=basePath%>/img/_/buy002.jpg"></li>
                                      <li><img src="<%=basePath%>/img/_/buy002.jpg"></li>
                                  </ul>
                              </div>
                          </div>
                          <div style="clear:both"></div>
                          <div class=" operate">
                              <a href="#" class="point"><i class="sui-icon icon-tb-like"></i> 关注 7</a>
                              <a href="#"  class="zan"><i class="sui-icon icon-tb-appreciatefill"></i> 赞 9</a>
                          </div>
                      </div>
                  </li>
                  <li  class="yui3-u-1-4">
                      <div class="buy-list">
                          <h4>告诉你何谓电子产品达人</h4>
                          <p>血战龙</p>
                          <div class="imgs">
                              <div class="ab-cover"><img src="<%=basePath%>/img/_/buy01.jpg"></div>
                              <div class="ab-list">
                                  <ul>
                                      <li><img src="<%=basePath%>/img/_/buy001.jpg"></li>
                                      <li><img src="<%=basePath%>/img/_/buy002.jpg"></li>
                                      <li><img src="<%=basePath%>/img/_/buy002.jpg"></li>
                                  </ul>
                              </div>
                          </div>
                          <div style="clear:both"></div>
                          <div class=" operate">
                              <a href="#" class="point"><i class="sui-icon icon-tb-like"></i> 关注 7</a>
                              <a href="#"  class="zan"><i class="sui-icon icon-tb-appreciatefill"></i> 赞 9</a>
                          </div>
                      </div>
                  </li>
              </ul>
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
				<p>京ICP备0803535号京公网安备1145353702</p>
			</div>
		</div>
	</div>
</div>
<!--页面底部END-->
    


</body>

</html>