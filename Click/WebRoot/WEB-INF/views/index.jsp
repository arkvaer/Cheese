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
<head>

<title>Concept HTML5 responsive template</title>
<meta name="keywords"
	content="concept, responsive bootstrap, green, white, free html5 template, templatemo" />
<meta name="description"
	content="Concept is free responsive template using bootstrap framework. Gallery is integrated with responsive lightbox." />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
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
<link rel="stylesheet" href="${css}/style.css" />
<link rel="stylesheet" href="${css}/luara.top.css" />
<link href='${css}/googlefont.css' rel='stylesheet' type='text/css'>
</head>
<body>

	<!-- 这个是导航栏 -->
	<div class="site-header">
		<div class="main-navigation">
			<div class="responsive_menu">
				<ul>
					<li><a class="show-1 templatemo_home" href="#">首页</a></li>
					<li><a href="${root }/jump/shoot.do">最佳摄影</a></li>
					<li><a href="${root }/jump/customer.do">最美用户</a></li>
					<li><a href="${root }/jump/serch.do">搜索</a></li>
					<c:choose>
						<c:when test="${nuser!=null }">

							<li><a href="${root}/jump/toPersonal.do">${nuser.username}</a></li>
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
							<li><a class="show-1 templatemo_home" href="#">首页</a></li>
							<li><a href="${root }/jump/shoot.do">最佳摄影</a></li>
							<li><a href="${root }/jump/customer.do">最美用户</a></li>
							<li><a href="${root }/jump/serch.do">搜索</a></li>
							<c:choose>
								<c:when test="${nuser!=null }">
									<li><a href="${root }/jump/publish.do">发布</a></li>
									<li><a href="${root}/jump/toPersonal.do"><img
											src="${images }/a1.png" class="img-circle" alt="..."
											style="width: 20%;">${nuser.username}</a></li>
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













	<!-- 	<div id="menu-1">
		<div class="row">
			<div class="text-center">
				<a class="templatemo_logo">
					<h1>
						style="color: #4CB6CB"
						<strong>KaCha</strong>
					</h1>
					<h4>
						<strong>随时随地,拍出最美的自己。</strong>
					</h4> </a>
			</div>
		</div>
		<div id="particles-js" style="width: 100%;height: 1%"></div>

	</div> -->

	<div id="menu-1">
		<div class="row">
			<div class="text-center">
				<a class="templatemo_logo">
					<h1>
						<strong>CHEESE</strong>
					</h1>
					<h4>随时随地,拍出最美的自己。</h4>
				</a>
			</div>
		</div>
		<div id="particles-js" style="width: 100%; height: 18%"></div>

	</div>


	<div class="row">
		<div class="col-md-2 col-sm-6 col-md-offset-2">
			<div class="gallery-item" style="height: 50%">

				<a class="templatemo_logo"><h4>
						<strong>CHEESE是什么？</strong>
					</h4> <strong> 2017年，当自拍正风靡全球，自拍的局限性也越来越明显。<br>
						2017年4月，校园，CHEESE在一名摄影爱好者和两名编程爱好者的玩笑中诞生。 将线上线下相融合，改变了只有去影楼拍照的概念。<br>
						从预约摄影到随时随地摄影,最大限度优化拍摄体验。 运用O2O模式，改变传统影楼的等客方式。 摄影师随叫随到，想在哪拍就在哪拍。<br>
						未来，KaCha相信可以改变深入人心的自拍文化。
				</strong> </a>

			</div>
		</div>







		<div class="col-md-4 col-sm-6">
			<div class="product-item" style="height: 50%">
				<!-- <img src="${images}/首页显示1.jpg" alt="1" /> -->

				<div style="text-align: center;">
					<h4>
						<a href="#" class="product-title"><strong>每一拍，都可以更美。</strong>
						</a>
					</h4>
				</div>


				<div class="example1">
					<ul>
						<li><img src="${images}/home1.jpg" alt="1" /></li>
						<li><img src="${images}/home2.jpg" alt="2" /></li>
						<li><img src="${images}/home3.jpg" alt="3" /></li>
						<li><img src="${images}/home4.jpg" alt="4" /></li>
					</ul>
					<ol>
						<li></li>
						<li></li>
						<li></li>
						<li></li>

					</ol>
				</div>


				<!-- <img src="${images}/products/product1.jpg" alt="product 1"> -->

			</div>
		</div>



		<div class="col-md-2 col-sm-6 ">
			<div class="gallery-item"
				style="padding-left: 15%; padding-right: 15%; padding-bottom: 15%">
				<a class="templatemo_logo"><h4 style="text-align: center;">
						<strong>关注我们<br> <br></strong>
					</h4> </a> <img src="${images}/attentionCode.png" alt="image 1">



			</div>



			<div class="btn-group btn-group-justified" style="height: 9.5%;">
				<a href="#" class="btn btn-primary"><h4>
						<strong>Android</strong>
					</h4>下载</a> <a href="#" class="btn btn-info"><h4>
						<strong>iPhone</strong>
					</h4>下载</a>

			</div>



		</div>


	</div>


	<div class="row" style="padding-left: 17%; padding-right: 17%;">

		<section class="panel panel-default">
			<div class="panel-body">
				<div class="clearfix text-center m-t">
					<div class="inline">
						<div class="h4 m-t m-b-xs">我们的CHEESE</div>
						<!-- <small class="text-muted m-b"></small> -->
					</div>

				</div>
			</div>
			<footer class="panel-footer bg-info text-center">
				<div class="row pull-out ">
					<div class="col-xs-4 dk" id="btnone" style="cursor: pointer;">
						<div class="padder-v">
							<span class="m-b-xs h3 block text-white">我们相信</span> <small
								class="text-muted">CHEESE</small>
						</div>
					</div>
					<div class="col-xs-4 dk" id="btntwo"
						style="background-color: #8B008B; cursor: pointer;">
						<div class="padder-v">
							<span class="m-b-xs h3 block text-white">这样使用</span> <small
								class="text-muted">CHEESE</small>
						</div>
					</div>
					<div class="col-xs-4 dk" id="btnthree" style="cursor: pointer;">
						<div class="padder-v">
							<span class="m-b-xs h3 block text-white">我们都爱</span> <small
								class="text-muted">CHEESE</small>
						</div>
					</div>
				</div>
			</footer>
		</section>
		<!-- </div> -->

		<!-- 我们相信 -->
		<div id="divone" style="display: none;">
			<div class="col-lg-4">
				<section class="panel panel-default">
					<header class="panel-heading"> 用户好评率 </header>
					<div class="panel-body text-center">
						<h4>75%</h4>
						<small class="text-muted block">的用户对我们表示支持</small>
						<div class="inline">
							<div class="easypiechart easyPieChart" data-percent="75"
								data-bar-color="#fcc633" data-line-width="16" data-loop="false"
								data-size="188"
								style="width: 188px; height: 188px; line-height: 188px;">
								<div>
									<span class="h2 m-l-sm step">75</span>%
									<div class="text text-sm">支持</div>
								</div>
								<canvas width="235" height="235"
									style="width: 188px; height: 188px;"></canvas>
							</div>
						</div>
					</div>
					<div class="panel-footer">
						<small>CHEESE感谢用户的大力支持，我们会更加努力。</small>
					</div>
				</section>
			</div>
			<div class="col-lg-4">
				<section class="panel panel-default">
					<header class="panel-heading">全国摄影师占比</header>
					<div class="panel-body text-center">
						<h4>60%</h4>
						<small class="text-muted block">优秀摄影师选择加入我们</small>
						<div class="inline">
							<div class="easypiechart easyPieChart" data-percent="60"
								data-line-width="6" data-loop="false" data-size="188"
								style="width: 188px; height: 188px; line-height: 188px;">
								<div>
									<span class="h2 m-l-sm step">60</span>%
									<div class="text text-sm">加入</div>
								</div>
								<canvas width="235" height="235"
									style="width: 188px; height: 188px;"></canvas>
							</div>
						</div>
					</div>
					<div class="panel-footer">
						<small>CHEESE拥有越来越多优秀的摄影师。</small>
					</div>
				</section>
			</div>
			<div class="col-lg-4">
				<section class="panel panel-default">
					<header class="panel-heading"> 用户增长率</header>
					<div class="panel-body text-center">
						<h4>10%</h4>
						<small class="text-muted block">的用户增长</small>
						<div class="inline">
							<div class="easypiechart easyPieChart" data-percent="10"
								data-line-width="10" data-track-color="#eee"
								data-bar-color="#1ccc88" data-scale-color="#fff" data-size="188"
								data-line-cap="butt"
								style="width: 188px; height: 188px; line-height: 188px;">
								<div>
									<span class="h2 m-l-sm step">10</span>%
									<div class="text text-sm">增长</div>
								</div>
								<canvas width="235" height="235"
									style="width: 188px; height: 188px;"></canvas>
							</div>
						</div>
					</div>
					<div class="panel-footer">
						<small>CHEESE只会越来越好。</small>
					</div>
				</section>
			</div>
		</div>








		<!-- 如何使用 -->

		<div id="divtwo">

			<section class="scrollable wrapper">
				<div class="timeline">

					<article class="timeline-item">
						<div class="timeline-caption">
							<div class="panel panel-default">
								<div class="panel-body">
									<span class="arrow left"></span> <span class="timeline-icon"><i
										class="fa fa-phone time-icon bg-primary"></i></span> <span
										class="timeline-date">1min</span>
									<h4>登录APP</h4>
									<h5>根据GPS定位，寻找附近的所有摄影师。</h5>
								</div>
							</div>
						</div>
					</article>
					<article class="timeline-item alt">
						<div class="timeline-caption">
							<div class="panel panel-default">
								<div class="panel-body">
									<span class="arrow right"></span> <span class="timeline-icon"><i
										class="fa fa-male time-icon bg-success"></i></span> <span
										class="timeline-date">5min</span>
									<h4>写出您的详细要求</h4>
									<h5>附近的摄影师回复您的要求并写出相应的估价</h5>
									<h5>根据摄影师的作品和估价以及信誉，选择一个您认为最合适并支付一定的预约金。</h5>
								</div>
							</div>
						</div>
					</article>
					<article class="timeline-item">
						<div class="timeline-caption">
							<div class="panel panel-default">
								<div class="panel-body">
									<span class="arrow left"></span> <span class="timeline-icon"><i
										class="fa fa-plane time-icon bg-dark"></i></span> <span
										class="timeline-date">30min~1h</span>
									<h4>您的私人摄影师火速到达</h4>
									<h5>如果摄影师出现迟到等问题，通过举报我们会对摄影师进行处罚并返还您的预约金。</h5>
								</div>
							</div>
						</div>
					</article>
					<article class="timeline-item alt">
						<div class="timeline-caption">
							<div class="panel panel-default">
								<div class="panel-body">
									<span class="arrow right"></span> <span class="timeline-icon"><i
										class="fa fa-file-text time-icon bg-info"></i></span> <span
										class="timeline-date">30min~1h</span>
									<h4>拍摄照片</h4>
									<h5>您的私人摄影师为您服务，拍摄最美的照片。</h5>
									<h5>在线支付摄影师报酬。（此现金由我们暂存）</h5>

								</div>
							</div>
						</div>
					</article>
					<article class="timeline-item">
						<div class="timeline-caption">
							<div class="panel panel-default">
								<div class="panel-body">
									<span class="arrow left"></span> <span class="timeline-icon"><i
										class="fa fa-code time-icon bg-dark"></i></span> <span
										class="timeline-date">3min</span>
									<h4>摄影师提供您的照片（可选择电子和实物）</h4>
									<h5>根据摄影师的的作品给出相应的评价，如果非常不满意可以选择退款，通过核实我们会把所有金额退还于你。</h5>
								</div>
							</div>
						</div>
					</article>
					<div class="timeline-footer">
						<a><i class="fa fa-plus time-icon inline-block bg-dark"></i></a>
					</div>

				</div>
			</section>
		</div>

		<!-- 评论 -->

		<div class="row" id="divthree" style="display: none;">
			<div class="col-lg-6">
				<section class="comment-list block">
					<article id="comment-id-1" class="comment-item">
						<a class="pull-left thumb-sm avatar"> <img
							src="${images}/a1.png" class="img-circle" alt="...">
						</a>
						<section class="comment-body panel panel-default">
							<header class="panel-heading bg-white">
								<a href="#">最美不过小萝莉</a> <label class="label bg-info m-l-xs">用户</label>

							</header>
							<div class="panel-body">
								<div>哈哈，谢谢摄影师大叔把我拍的美美哒。</div>

							</div>
						</section>
					</article>
					<article id="comment-id-1" class="comment-item">
						<a class="pull-left thumb-sm avatar"> <img
							src="${images}/a1.png" class="img-circle" alt="...">
						</a>
						<section class="comment-body panel panel-default">
							<header class="panel-heading bg-white">
								<a href="#">琴韵</a> <label class="label bg-info m-l-xs">用户</label>

							</header>
							<div class="panel-body">
								<div>比自拍美多了，摄影师可以发现很多独特的角度，颜值越来越高。</div>

							</div>
						</section>
					</article>
					<article id="comment-id-1" class="comment-item">
						<a class="pull-left thumb-sm avatar"> <img
							src="${images}/a1.png" class="img-circle" alt="...">
						</a>
						<section class="comment-body panel panel-default">
							<header class="panel-heading bg-white">
								<a href="#">最美不过小萝莉</a> <label class="label bg-info m-l-xs">用户</label>

							</header>
							<div class="panel-body">
								<div>哈哈，谢谢摄影师大叔把我拍的美美哒。</div>

							</div>
						</section>
					</article>
					<article id="comment-id-1" class="comment-item">
						<a class="pull-left thumb-sm avatar"> <img
							src="${images}/a1.png" class="img-circle" alt="...">
						</a>
						<section class="comment-body panel panel-default">
							<header class="panel-heading bg-white">
								<a href="#">琴韵</a> <label class="label bg-info m-l-xs">用户</label>

							</header>
							<div class="panel-body">
								<div>比自拍美多了，摄影师可以发现很多独特的角度，颜值越来越高。</div>

							</div>
						</section>
					</article>
				</section>

			</div>
			<div class="col-lg-6">
				<!-- .comment-list -->
				<section class="comment-list block">
					<article id="comment-id-1" class="comment-item">
						<a class="pull-left thumb-sm avatar"> <img
							src="${images}/a1.png" class="img-circle" alt="...">
						</a>
						<section class="comment-body panel panel-default">
							<header class="panel-heading bg-white">
								<a href="#">专业摄影</a> <label class="label bg-info m-l-xs">摄影师</label>

							</header>
							<div class="panel-body">
								<div>CHEESE大大改善了我的收入，本来影楼赔了不少钱，好日子终于到了。谢谢 CHEESE。</div>

							</div>
						</section>
					</article>
				</section>
				<section class="comment-list block">
					<article id="comment-id-1" class="comment-item">
						<a class="pull-left thumb-sm avatar"> <img
							src="${images}/a1.png" class="img-circle" alt="...">
						</a>
						<section class="comment-body panel panel-default">
							<header class="panel-heading bg-white">
								<a href="#">专业摄影</a> <label class="label bg-info m-l-xs">摄影师</label>

							</header>
							<div class="panel-body">
								<div>CHEESE大大改善了我的收入，本来影楼赔了不少钱，好日子终于到了。谢谢 CHEESE。</div>

							</div>
						</section>
					</article>
				</section>
			</div>
		</div>
	</div>



	<div id="templatemo_footer">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<p>
				
					</p>
					<a target="_blank"
						href="http://wpa.qq.com/msgrd?v=3&uin=1848747094&site=qq&menu=yes"><img
						border="0" src="http://wpa.qq.com/pa?p=2:1848747094:51" alt="联系我们"
						title="联系我们" /></a>
				</div>
			</div>
		</div>

	</div>






	<!-- Scripts -->
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/charts/easypiechart/jquery.easy-pie-chart.js"></script>
	<script src="${js}/app.plugin.js"></script>




	<script src="${js}/jquery-1.10.2.min.js"></script>
	<script src="${js}/jquery-migrate-1.2.1.min.js"></script>
	<script src="${js}/modernizr.js"></script>
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
	<script src="${js}/index.js"></script>
	<script src='${js}/jquery.js'></script>
	<script src='${js}/TweenMax.min.js'></script>
	<script src='${js}/Draggable.min.js'></script>
	<script src="${js}/jquery-1.8.3.min.js"></script>
	<script src="${js}/jquery.luara.0.0.1.min.js"></script>
	<script>
		$(function() {
			$(".example1").luara({
				interval : 5000,
				selected : "seleted",
				deriction : "top"
			});
		});

		/*这是隐藏下面的div的*/

		$("#btnone").click(function() {
			$("#btnone").css("background-color", "#8B008B");
			$("#btntwo").css("background-color", "");
			$("#btnthree").css("background-color", "");
			$("#divone").show(2000);
			$("#divtwo").hide(2000);
			$("#divthree").hide(2000);

		});
		$("#btntwo").click(function() {
			$("#btnone").css("background-color", "");
			$("#btntwo").css("background-color", "#8B008B");
			$("#btnthree").css("background-color", "");
			$("#divone").hide(2000);
			$("#divtwo").show(2000);
			$("#divthree").hide(2000);

		});
		$("#btnthree").click(function() {

			$("#btnone").css("background-color", "");
			$("#btntwo").css("background-color", "");
			$("#btnthree").css("background-color", "#8B008B");

			$("#divone").hide(2000);
			$("#divtwo").hide(2000);
			$("#divthree").show(2000);

		});
	</script>
</body>
</html>