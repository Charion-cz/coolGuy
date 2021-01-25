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
	<title>我的购物车</title>
	<link rel="icon" href="<%=basePath%>/img/favicon.ico">

    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/all.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/pages-cart.css" />

	<script>
		window.onload = function(){
			//给删除选中按钮添加单击事件
			document.getElementById("delSelected").onclick = function(){
				if(confirm("您确定要结算选中条目吗？")){

					var flag = false;
					//判断是否有选中条目
					var cbs = document.getElementsByName("uid");
					for (var i = 0; i < cbs.length; i++) {
						if(cbs[i].checked){
							//有一个条目选中了
							flag = true;
							break;
						}
					}

					if(flag){//有条目被选中
						//表单提交
						document.getElementById("form").submit();
					}

				}

			}
			//1.获取第一个cb
			document.getElementById("firstCb").onclick = function(){
				//2.获取下边列表中所有的cb
				var cbs = document.getElementsByName("uid");
				//3.遍历
				for (var i = 0; i < cbs.length; i++) {
					//4.设置这些cbs[i]的checked状态 = firstCb.checked
					cbs[i].checked = this.checked;

				}
			}
		}
	</script>
</head>

<body>
	<!--head-->
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

	
	<div class="cart py-container">
		<!--All goods-->
		<div class="allgoods">
			<h4>全部商品<span></span></h4>
			<form action="<%=path%>/order/delSelectOrd" method="post" id="form">
				<div class="cart-main">
					<div class="yui3-g cart-th">
						<div class="yui3-u-1-4"><input  type="checkbox" id="firstCb"/></div>
						<div class="yui3-u-1-4">商品</div>
						<div class="yui3-u-1-8">单价（元）</div>
						<div class="yui3-u-1-8">操作</div>
					</div>
					<div class="cart-item-list">
						<div class="cart-body">
							<c:forEach items="${cartGoods}" var="goods">
								<div class="cart-list">
									<ul class="goods-list yui3-g">
										<li class="yui3-u-1-24">
											<input type="checkbox" name="uid" value="${goods.id}">
										</li>
										<li class="yui3-u-6-24">
											<div class="good-item">
												<div class="item-img"><img src="${goods.image}" /></div>
												<div class="item-msg" style="padding-left: 200px;width: 200px;">${goods.name}</div>
											</div>
										</li>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
										<li class="yui3-u-1-8"><span class="sum" style="padding-left: 250px;">8848.00</span></li>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
										<li class="yui3-u-1-8" style="padding-left: 240px;">
											<a href="<%=path%>/order/deleteOrder/${goods.id}" class="sui-btn btn-bordered">删除</a><br />
											<a href="<%=path%>/collect/mvToCollect/${goods.id}/${userId}">移到收藏</a>
										</li>
									</ul>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="cart-tool">
					<div class="money-box">
						<div class="sumbtn">
							<a class="sum-btn" href="javascript:void(0);" id="delSelected">结算</a>
						</div>
					</div>
				</div>
			</form>
			<div class="clearfix"></div>
			<div class="liked">
				<ul class="sui-nav nav-tabs">
					<li class="active">
						<a href="#index" data-toggle="tab">猜你喜欢</a>
					</li>
					<li>
						<a href="#profile" data-toggle="tab">特惠换购</a>
					</li>
				</ul>
				<div class="clearfix"></div>
				<div class="tab-content">
					<div id="index" class="tab-pane active">
						<div id="myCarousel" data-ride="carousel" data-interval="4000" class="sui-carousel slide">
							<div class="carousel-inner">
								<div class="active item">
									<ul>
										<li>
											<img src="<%=basePath%>/img/like1.png" />
											<div class="intro">
												<i>Apple苹果iPhone 6s (A1699)</i>
											</div>
											<div class="money">
												<span>$29.00</span>
											</div>
											<div class="incar">
												<a href="#" class="sui-btn btn-bordered btn-xlarge btn-default"><i class="car"></i><span class="cartxt">加入购物车</span></a>
											</div>
										</li>
										<li>
											<img src="<%=basePath%>/img/like2.png" />
											<div class="intro">
												<i>Apple苹果iPhone 6s (A1699)</i>
											</div>
											<div class="money">
												<span>$29.00</span>
											</div>
											<div class="incar">
												<a href="#" class="sui-btn btn-bordered btn-xlarge btn-default"><i class="car"></i><span class="cartxt">加入购物车</span></a>
											</div>
										</li>
										<li>
											<img src="<%=basePath%>/img/like3.png" />
											<div class="intro">
												<i>Apple苹果iPhone 6s (A1699)</i>
											</div>
											<div class="money">
												<span>$29.00</span>
											</div>
											<div class="incar">
												<a href="#" class="sui-btn btn-bordered btn-xlarge btn-default"><i class="car"></i><span class="cartxt">加入购物车</span></a>
											</div>
										</li>
										<li>
											<img src="<%=basePath%>/img/like4.png" />
											<div class="intro">
												<i>Apple苹果iPhone 6s (A1699)</i>
											</div>
											<div class="money">
												<span>$29.00</span>
											</div>
											<div class="incar">
												<a href="#" class="sui-btn btn-bordered btn-xlarge btn-default"><i class="car"></i><span class="cartxt">加入购物车</span></a>
											</div>
										</li>
									</ul>
								</div>
								<div class="item">
									<ul>
										<li>
											<img src="<%=basePath%>/img/like1.png" />
											<div class="intro">
												<i>Apple苹果iPhone 6s (A1699)</i>
											</div>
											<div class="money">
												<span>$29.00</span>
											</div>
											<div class="incar">
												<a href="#" class="sui-btn btn-bordered btn-xlarge btn-default"><i class="car"></i><span class="cartxt">加入购物车</span></a>
											</div>
										</li>
										<li>
											<img src="./img/like2.png" />
											<div class="intro">
												<i>Apple苹果iPhone 6s (A1699)</i>
											</div>
											<div class="money">
												<span>$29.00</span>
											</div>
											<div class="incar">
												<a href="#" class="sui-btn btn-bordered btn-xlarge btn-default"><i class="car"></i><span class="cartxt">加入购物车</span></a>
											</div>
										</li>
										<li>
											<img src="./img/like3.png" />
											<div class="intro">
												<i>Apple苹果iPhone 6s (A1699)</i>
											</div>
											<div class="money">
												<span>$29.00</span>
											</div>
											<div class="incar">
												<a href="#" class="sui-btn btn-bordered btn-xlarge btn-default"><i class="car"></i><span class="cartxt">加入购物车</span></a>
											</div>
										</li>
										<li>
											<img src="./img/like4.png" />
											<div class="intro">
												<i>Apple苹果iPhone 6s (A1699)</i>
											</div>
											<div class="money">
												<span>$29.00</span>
											</div>
											<div class="incar">
												<a href="#" class="sui-btn btn-bordered btn-xlarge btn-default"><i class="car"></i><span class="cartxt">加入购物车</span></a>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<a href="#myCarousel" data-slide="prev" class="carousel-control left">‹</a>
							<a href="#myCarousel" data-slide="next" class="carousel-control right">›</a>
						</div>
					</div>
					<div id="profile" class="tab-pane">
						<p>特惠选购</p>
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
							<li>品优购E卡</li>
							<li>品优购通信</li>
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
				<p>地址：北京市昌平区建材城西路金燕龙办公楼一层 邮编：100096 电话：400-618-4000 传真：010-82935100</p>
				<p>京ICP备08001421号京公网安备110108007702</p>
			</div>
		</div>
	</div>
</div>
<!--页面底部END-->
<script type="text/javascript" src="<%=basePath%>/js/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript">
	$(".chooseAll").click(function(){
		$("input[name='chk_list']").prop("checked", $(this).prop("checked"));
	})
</script>

</body>

</html>