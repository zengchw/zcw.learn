<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>相册</title>
<meta name="description" content="这是一个 gallery 页面">
<meta name="keywords" content="gallery">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="css/amazeui.min.css" />
<link rel="stylesheet" href="css/admin.css">
</head>
<body>
	<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
	<%
		String name = (String) request.getParameter("name");
	%>
	<header class="am-topbar admin-header">
	<div class="am-topbar-brand">
		<strong>RiceRoll</strong> <small>后台管理系统</small>
	</div>

	<button
		class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
		data-am-collapse="{target: '#topbar-collapse'}">
		<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
	</button>

	<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

		<ul
			class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
			<li><a href="javascript:;"><span class="am-icon-envelope-o"></span>
					收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
			<li class="am-dropdown" data-am-dropdown><a
				class="am-dropdown-toggle" data-am-dropdown-toggle
				href="javascript:;"> <span class="am-icon-users"></span>  <%
 	if (name != null) {%>					
 					<%=name%>
					<%
						} else {
					%>管理员<%
						}
					%>  <span
					class="am-icon-caret-down"></span>
			</a>
				<ul class="am-dropdown-content">
					<li><a href="/RiceRoll/admins/info.action"><span class="am-icon-user"></span> 资料</a></li>
					<li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
					<li><a href="/RiceRoll/admins/logout.action"><span class="am-icon-power-off"></span> 退出</a></li>
				</ul></li>
			<li><a href="javascript:;" id="admin-fullscreen"><span
					class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
		</ul>
	</div>
	</header>

	<div class="am-cf admin-main">
		<!-- sidebar start -->
		<div class="admin-sidebar">
			<ul class="am-list admin-sidebar-list">
				<li><a href="/RiceRoll/admins/index.action"><span
						class="am-icon-home"></span> 首页</a></li>
				<li class="admin-parent"><a class="am-cf"
					data-am-collapse="{target: '#collapse-nav'}"><span
						class="am-icon-file"></span> 资源管理模块 <span
						class="am-icon-angle-right am-fr am-margin-right"></span></a>
					<ul class="am-list am-collapse admin-sidebar-sub am-in"
						id="collapse-nav">
						<li><a href="admin-cookbook-form.jsp" class="am-cf"><span
								class="am-icon-check"></span> 菜谱管理</a></li>
						<li><a href="admin-food-material-form.jsp"><span
								class="am-icon-puzzle-piece"></span> 食材管理</a></li>
						<li><a href="admin-condiment-form.jsp"><span
								class="am-icon-th"></span> 调料管理</a></li>
						<li><a href="admin-form.jsp"><span
								class="am-icon-calendar"></span> 每日推荐</a></li>
					</ul></li>
				<li><a href="/RiceRoll/admins/logout.action"><span
						class="am-icon-sign-out"></span> 注销</a></li>
			</ul>

			<div class="am-panel am-panel-default admin-sidebar-panel">
				<div class="am-panel-bd">
					<p>
						<span class="am-icon-bookmark"></span> 公告
					</p>
					<p>均衡营养，平衡膳食。—— unknow</p>
				</div>
			</div>
		</div>
		<!-- sidebar end -->

		<!-- content start -->
		<div class="admin-content">

			<div class="am-cf am-padding">
				<div class="am-fl am-cf">
					<strong class="am-text-primary am-text-lg">相册</strong> / <small>Gallery</small>
				</div>
			</div>

			<ul
				class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">
				<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
						src="http://cn.bing.com/az/hprichv/LondonTrainStation_GettyRR_139321755_ZH-CN742316019.jpg"
						alt="" />
						<div class="gallery-title">远方 有一个地方 那里种有我们的梦想</div>
						<div class="gallery-desc">2375-09-26</div>
				</a></li>
				<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
						src="http://pic.33.la/tt/1920x1080/webshots_zhiwu-027.jpg" alt="" />
						<div class="gallery-title">君可见漫天落霞</div>
						<div class="gallery-desc">2375-09-26</div>
				</a></li>
				<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
						src="http://s.cn.bing.net/az/hprichbg/rb/CardinalsBerries_ZH-CN10679090179_1366x768.jpg"
						alt="" />
						<div class="gallery-title">此刻鲜花满天幸福在身边</div>
						<div class="gallery-desc">2375-09-26</div>
				</a></li>
				<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
						src="http://s.cn.bing.net/az/hprichbg/rb/QingdaoJiaozhou_ZH-CN10690497202_1366x768.jpg"
						alt="" />
						<div class="gallery-title">你当我是浮夸吧</div>
						<div class="gallery-desc">2375-09-26</div>
				</a></li>
				<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
						src="http://s.cn.bing.net/az/hprichbg/rb/FennecFox_ZH-CN13720911949_1366x768.jpg"
						alt="" />
						<div class="gallery-title">远方 有一个地方 那里种有我们的梦想</div>
						<div class="gallery-desc">2375-09-26</div>
				</a></li>
				<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
						src="http://cn.bing.com/az/hprichv/LondonTrainStation_GettyRR_139321755_ZH-CN742316019.jpg"
						alt="" />
						<div class="gallery-title">斜阳染幽草 几度飞红</div>
						<div class="gallery-desc">2375-09-26</div>
				</a></li>
				<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
						src="http://cn.bing.com/az/hprichv/LondonTrainStation_GettyRR_139321755_ZH-CN742316019.jpg"
						alt="" />
						<div class="gallery-title">远方 有一个地方 那里种有我们的梦想</div>
						<div class="gallery-desc">2375-09-26</div>
				</a></li>
				<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
						src="http://s.cn.bing.net/az/hprichbg/rb/FennecFox_ZH-CN13720911949_1366x768.jpg"
						alt="" />
						<div class="gallery-title">你当我是浮夸吧</div>
						<div class="gallery-desc">2375-09-26</div>
				</a></li>
				<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
						src="http://s.cn.bing.net/az/hprichbg/rb/QingdaoJiaozhou_ZH-CN10690497202_1366x768.jpg"
						alt="" />
						<div class="gallery-title">远方 有一个地方 那里种有我们的梦想</div>
						<div class="gallery-desc">2375-09-26</div>
				</a></li>
				<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
						src="http://pic.33.la/tt/1920x1080/webshots_zhiwu-027.jpg" alt="" />
						<div class="gallery-title">君可见漫天落霞</div>
						<div class="gallery-desc">2375-09-26</div>
				</a></li>
				<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
						src="http://s.cn.bing.net/az/hprichbg/rb/FennecFox_ZH-CN13720911949_1366x768.jpg"
						alt="" />
						<div class="gallery-title">你当我是浮夸吧</div>
						<div class="gallery-desc">2375-09-26</div>
				</a></li>
				<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
						src="http://pic.33.la/tt/1920x1080/webshots_zhiwu-027.jpg" alt="" />
						<div class="gallery-title">君可见漫天落霞</div>
						<div class="gallery-desc">2375-09-26</div>
				</a></li>
				<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
						src="http://cn.bing.com/az/hprichv/LondonTrainStation_GettyRR_139321755_ZH-CN742316019.jpg"
						alt="" />
						<div class="gallery-title">斜阳染幽草 几度飞红</div>
						<div class="gallery-desc">2375-09-26</div>
				</a></li>
			</ul>

			<div class="am-margin am-cf">
				<hr />
				<p class="am-fl">共 15 条记录</p>
				<ol class="am-pagination am-fr">
					<li class="am-disabled"><a href="#">&laquo;</a></li>
					<li class="am-active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&raquo;</a></li>
				</ol>
			</div>

		</div>
		<!-- content end -->

	</div>

	<footer>
	<hr>
	<p class="am-padding-left">
		© 2015 RiceRoll. <a
			href="http://localhost:8080/RiceRoll/PAGE/HTML/welcome.html">饭团首页</a>
	</p>
	</footer>

	<!--[if lt IE 9]>
<script src="js/jquery1.11.1.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/polyfill/rem.min.js"></script>
<script src="js/polyfill/respond.min.js"></script>
<script src="js/amazeui.legacy.js"></script>
<![endif]-->

	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="js/jquery.min.js"></script>
	<script src="js/amazeui.min.js"></script>
	<!--<![endif]-->
	<script src="js/app.js"></script>
</body>
</html>
