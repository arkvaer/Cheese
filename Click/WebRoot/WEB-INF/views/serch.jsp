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
<c:set var="picPath" value="http://127.0.0.1:8090/ClickImage"></c:set>
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
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700,800'
	rel='stylesheet' type='text/css'>

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
<link href="${css}/jquery.bxslider.css" rel="stylesheet" />
<link href="${css}/index-style.css" rel="stylesheet" type="text/css">
</head>

<body
	style="
	background-size:100%;
	background-attachment: fixed;
	height:auto;
	background-repeat:no-repeat ;
	background-image: url('${picPath}${nuser.bg}');">
	<!-- 这个是导航栏 -->
	<div class="site-header">
		<div class="main-navigation">
			<div class="responsive_menu">
				<ul>
					<li><a href="${root }/jump/index.do">首页</a></li>
					<li><a href="${root }/jump/shoot.do">最佳摄影</a></li>
					<li><a href="${root }/jump/customer.do">最美用户</a></li>
					<li><a class="show-1 templatemo_home" href="#">搜索</a></li>
					<c:choose>
						<c:when test="${nuser!=null }">
							<li><a href="${root}/jump/toPersonal.do">${nuser.username}</a></li>
							<li><a href="${root}/jump/publish.do">发布</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="${root }/jump/sign.do">登录|注册</a></li>
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
							<li><a class="show-1 templatemo_home" href="#">搜索</a></li>
							<c:choose>
								<c:when test="${nuser!=null }">
									<li><a href="${root }/jump/publish.do">发布</a></li>
									<li><a href="${root}/jump/toPersonal.do"><img
											src="${images }/a1.png" class="img-circle" alt="..."
											style="width: 20%;">&nbsp;&nbsp;&nbsp;&nbsp;${nuser.username}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="${root }/jump/sign.do">登录|注册</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="particles-js" style="width: 100%; height: 10%">
		<div id="nav-main" style="zoom: 1.1125;">
			<div id="search">
				<div id="searchout">
					<div id="serchform" style="padding-top: 2%">
						<form action="${root }/user/find.do" method="get">
							<div>
								<input type="text" id="search_input" placeholder="请输入要搜索的用户名" name="username"
									style="float: left;"> <input type="submit" 
									id="searchbutton" value="">
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="text-center">
			<a class="templatemo_logo"> 
			<c:if test="${!empty cameraman}">
					<h3>
						<strong>摄影师</strong>
					</h3>
				</c:if>
			</a>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<c:forEach items="${cameraman }" var="cameraman">
				<div class="col-md-4 col-sm-6">
					<div class="product-item">
						<img src="${picPath}${cameraman.bg }" alt="product 1"> <a
							href="#" class="product-title">${cameraman.username}</a>
						<p>${cameraman.signature}</p>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>


	<div class="row">
		<div class="text-center">
			<a class="templatemo_logo"> <c:if test="${!empty customer}">
					<h3>
						<strong>用户</strong>
					</h3>
				</c:if>
			</a>
		</div>
	</div>
	<div class="row" style="height: 50%">

		<c:forEach items="${customer }" var="customer" varStatus="status">
			<c:choose>
				<c:when test="${status.first}">
					<div class="col-md-2 col-sm-6 col-md-offset-1">
						<div class="gallery-item">
							<img src="${picPath }${customer.bg }" alt="image 1">
							<div class="overlay">
								<a href="${picPath}${customer.bg }" data-rel="lightbox"
									class="fa fa-expand"></a>
							</div>
							<div class="content-gallery">
								<h3>${customer.username }</h3>
							</div>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="col-md-2 col-sm-6 ">
						<div class="gallery-item">
							<img src="${picPath }${customer.bg }" alt="image 1">
							<div class="overlay">
								<a href="${picPath}${customer.bg }" data-rel="lightbox"
									class="fa fa-expand"></a>
							</div>
							<div class="content-gallery">
								<h3>${customer.username }</h3>
							</div>
						</div>
					</div>

				</c:otherwise>
			</c:choose>
		</c:forEach>

		<div class="col-md-2 col-sm-6"></div>

	</div>








	<div id="templatemo_footer" style="bottom: 0;">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
			
				</div>
			</div>
		</div>

	</div>






	<!-- Scripts -->
	<script src="${js}/jquery-1.10.2.min.js"></script>
	<script src="${js}/jquery-migrate-1.2.1.min.js"></script>
	<script src="${js}/modernizr.js"></script>
	<script src="${js}/bootstrap.js"></script>
	<script src="${js}/tabs.js"></script>
	<script src="${js}/jquery.lightbox.js"></script>
	<script src="${js}/templatemo_custom.js"></script>
	<script src="${js}/jquery.min.js"></script>
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


	<script type='text/javascript' src='${js}/logging.js'></script>
	<script src="${js}/particles.min.js"></script>
	<script src="${js}/particle.js"></script>
</body>
</html>
