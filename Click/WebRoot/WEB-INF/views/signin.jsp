<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="js" value="${pageContext.request.contextPath}/resource/js" />
<c:set var="css" value="${pageContext.request.contextPath}/resource/css" />
<c:set var="images"
	value="${pageContext.request.contextPath}/resource/images" />
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>


<head>

<title>Concept HTML5 responsive template</title>
<meta name="keywords"
	content="concept, responsive bootstrap, green, white, free html5 template, templatemo" />
<meta name="description"
	content="Concept is free responsive template using bootstrap framework. Gallery is integrated with responsive lightbox." />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<link href='${css}/googlefont.css' rel='stylesheet' type='text/css'>

<!-- CSS Bootstrap & Custom -->
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<link rel="stylesheet" href="${css}/animate.css">
<link rel="stylesheet" href="${css}/font-awesome.min.css">
<link rel="stylesheet" href="${css}/templatemo_misc.css">

<!-- Main CSS -->
<link rel="stylesheet" href="${css}/templatemo_style.css">

<!-- Favicons -->
<link rel="shortcut icon" href="${images}/ico/favicon.ico">

<link rel="stylesheet" href="${js}/jPlayer/jplayer.flat.css"
	type="text/css" />
<link rel="stylesheet" href="${css}/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="${css}/animate.css" type="text/css" />
<link rel="stylesheet" href="${css}/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet" href="${css}/simple-line-icons.css"
	type="text/css" />
<link rel="stylesheet" href="${css}/font.css" type="text/css" />
<link rel="stylesheet" href="${css}/app.css" type="text/css" />
<link rel="stylesheet" media="screen" href="${css}/style.css">
</head>

<body>
	<!-- 这个是导航栏 -->
	<div class="site-header">
		<div class="main-navigation">
			<div class="responsive_menu">
				<ul>
					<li><a href="${root }/jump/index.do">首页</a></li>
					<li><a href="${root }/jump/shoot.do">最佳摄影</a></li>
					<li><a href="${root }/jump/customer.do">最美用户</a></li>
					<li><a href="${root }/jump/serch.do">搜索</a></li>
					<c:choose>
						<c:when test="${nuser!=null }">
							<li><a class="show-1 templatemo_home"
								href="${root}/jump/toPersonal.do">${nuser.username}</a></li>
						</c:when>
						<c:otherwise>
							<li><a class="show-1 templatemo_home" href="#" href="#">登录|注册</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-12 responsive-menu">
						<a href="#" class="menu-toggle-btn"> <i class="fa fa-bars"></i>
						</a>
					</div>

					<div class="col-md-12 main_menu">
						<ul>
							<li><a href="${root }/jump/index.do">首页</a></li>
							<li><a href="${root }/jump/shoot.do">最佳摄影</a></li>
							<li><a href="${root }/jump/customer.do">最美用户</a></li>
							<li><a href="${root }/jump/serch.do">搜索</a></li>
							<c:choose>
								<c:when test="${user!=null }">
									<li><a class="show-1 templatemo_home"
										href="${root}/jump/toPersonal.do">${nuser.username}</a></li>
								</c:when>
								<c:otherwise>
									<li><a class="show-1 templatemo_home" href="#">登录|注册</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
			</div>
		</div>



		<div id="particles-js" style="width: 100%; height: 10%"></div>
		<div id="divsignin">

			<section id="content" class="m-t-lg wrapper-md animated fadeInUp">
			<div class="container aside-xl">
				<a class="navbar-brand block"><span class="h1 font-bold">登录<span></a>
				<section class="m-b-lg"> <header
					class="wrapper text-center"> <strong>${msg}${fail}</strong> </header>
				<form action="${root }/user/signin.do" method="post">
					<div class="form-group">
						<input type="text" placeholder="手机号码"
							class="form-control rounded input-lg text-center no-border"
							name="phone">
					</div>
					<div class="form-group">
						<input type="password" placeholder="密码"
							class="form-control rounded input-lg text-center no-border"
							name="password">
					</div>
					<button type="submit"
						class="btn btn-lg btn-success lt b-white b-2x btn-block btn-rounded">
						<i class="icon-arrow-right pull-right"></i><span class="m-r-n-lg">登录</span>
					</button>
					<div class="text-center m-t m-b">
						<a href="#"><small>忘记密码？</small> </a>
					</div>
					<div class="line line-dashed"></div>
					<p class="text-muted text-center">
						<small>没有账号？</small>
					</p>
					<a class="btn btn-lg btn-danger  btn-block rounded"
						href="${root }/jump/signup.do">注册</a>
				</form>
				</section>
			</div>
			</section>
		</div>








		<div id="templatemo_footer">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">

					</div>
				</div>
			</div>

		</div>











	</div>

	<!-- Scripts -->
	<script src="${js}/jquery-1.10.2.min.js"></script>
	<script src="${js}/modernizr.js"></script>
	<script src="${js}/bootstrap.js"></script>
	<script src="${js}/tabs.js"></script>
	<script src="${js}/jquery.lightbox.js"></script>
	<script src="${js}/templatemo_custom.js"></script>
	<!-- Bootstrap -->
	<script src="${js}/bootstrap.js"></script>
	<!-- App -->
	<script src="${js}/app.js"></script>
	<script src="${js}/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${js}/app.plugin.js"></script>
	<script type="text/javascript"
		src="${js}/jPlayer/jquery.jplayer.min.js"></script>
	<script type="text/javascript"
		src="${js}/jPlayer/add-on/jplayer.playlist.min.js"></script>
	<script type="text/javascript" src="${js}/jPlayer/demo.js"></script>

	<!-- 
    	Free Responsive Template by templatemo
    	http://sc.chinaz.com
	-->
	<script type='text/javascript' src='${js}/logging.js'></script>
	<script src="${js}/particles.min.js"></script>
	<script src="${js}/particle.js"></script>



	<script type="text/javascript">
		//这个是判断是否同意官方用户协议
		$('#cboxagree').click(function() {
			if ($('#cboxagree').is(':checked')) {
				$('#btnagree').removeAttr("disabled");

			} else {
				$('#btnagree').attr("disabled", true);
			}
		});
		//开始的时候显示登录界面隐藏注册界面
		/* $('#divsignup').hide();
		//这是注册界面的登录按钮
		$('#btnsignin').click(function() {
			//注册界面隐藏   登录界面显示
			$('#divsignup').hide();
			$('#divsignin').show();
		});
		//这是登录界面的注册按钮
		$('#btnsignup').click(function() {
			//注册界面隐藏   登录界面显示
			$('#divsignin').hide();
			$('#divsignup').show();
		}); */
	</script>












</body>
</html>
