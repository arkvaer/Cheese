<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<link rel="stylesheet" media="screen"
	href="${js}/datepicker/datepicker.css">
<link rel="Stylesheet" type="text/css" href="style/loginDialog.css" />

<!-- Scripts -->
<script src="${js}/jquery-migrate-1.2.1.min.js"></script>
<script src="${js}/modernizr.js"></script>
<script src="${js}/tabs.js"></script>
<script src="${js}/jquery.lightbox.js"></script>
<script src="${js}/templatemo_custom.js"></script>
<script src="${js}/bootstrap.js"></script>
<script src="${js}/app.js"></script>
<script src="${js}/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${js}/app.plugin.js"></script>
<script src="${js}/jPlayer/jquery.jplayer.min.js"></script>
<script src="${js}/jPlayer/add-on/jplayer.playlist.min.js"></script>
<script src="${js}/jPlayer/demo.js"></script>
<script src="${js}/file-input/bootstrap-filestyle.min.js"></script>
<script src="${js}/datepicker/bootstrap-datepicker.js"></script>
<script src="${js}/logging.js"></script>
<script src="${js}/particles.min.js"></script>
<script src="${js}/particle.js"></script>
<script src="${js}/wysiwyg/bootstrap-wysiwyg.js"></script>

<script type="text/javascript" src="${js}/address.js"></script>
<script src="${js}/jquery.min.js"></script>
<script type="text/javascript" src="${js }/jquery.form.js"></script>
<script type="text/javascript">
	function submitImgSize1Upload() {

		var option = {
			type : 'POST',
			url : '${root}/upload/uploadBg.do',
			dataType : 'text',
			data : {
				fileName : 'imgSize1File'
			},
			success : function(data) {

				//把json格式的字符串转换成json对象
				var jsonObj = $.parseJSON(data);

				//返回服务器图片路径，把图片路径设置给img标签
				$("#imgSize1ImgSrc").attr("src", jsonObj.fullPath);
				$("#bodyBg").css({
					'background-image' : 'url(' + jsonObj.fullPath + ')'
				});
				//数据库保存相对路径
				$("#imgSize1").val(jsonObj.relativePath);
			}

		};

		$("#itemForm").ajaxSubmit(option);

	}
</script>

</head>

<body id="bodyBg"
	style="
	background-size:100%;
	background-attachment: fixed;
	height:auto;
	background-repeat:no-repeat ;
	background-image: url('${picPath}${vuser.bg}');">
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
						<c:when test="${vuser!=null }">
							<li><a href="${root }/jump/publish.do">发布</a></li>
							<li><a href="${root}/jump/toPersonal.do"
								class="show-1 templatemo_home">${vuser.username}</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="#">登录|注册</a></li>
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
							<li><a href="${root}/jump/serch.do">搜索</a></li>
							<c:choose>
								<c:when test="${vuser!=null }">
									<li><a href="${root }/jump/publish.do">发布</a></li>
									<li><a href="#" class="show-1 templatemo_home"><img
											src="${images }/a1.png" class="img-circle"
											style="width: 20%;">&nbsp;&nbsp;&nbsp;&nbsp;${vuser.username}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="${root }/user">登录|注册</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  <div id="particles-js" style="width: 100%;height: 10%"></div>  -->
	<div style="height: 10%"></div>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-6" id="divseleave">
				<div class="product-item">
					<a class="templatemo_logo" id="btnallmassage">

						<h4>
							<strong>个人资料</strong>
						</h4>
					</a>
					<div class="panel-body" id="divallmassage" style="display: none;">
						<form id="itemForm" action="${root}/user/update.do" method="post">
							<div id="massage">
								<div class="form-group pull-in clearfix">
									<div class="col-sm-6">
										<label>用户名 &nbsp;:&nbsp;&nbsp;${vuser.username }</label>

									</div>
									<div class="col-sm-6">
										<label>性别:</label>


										<c:choose>
											<c:when test="${vuser.sex==0}">
												<i class="icon-user"></i>
											</c:when>
											<c:otherwise>
												<i class="icon-user-female"></i>
											</c:otherwise>
										</c:choose>

									</div>
								</div>


								<div class="form-group">
									<label>手机号码</label>
									<div class="col-sm-10">${vuser.phone}</div>
								</div>

								<div class="form-group">
									<label>微信号码:</label>
									<div class="col-sm-10">${vuser.wechat}</div>
								</div>
								<div class="form-group">
									<label>出生日期</label>
									<div class="col-sm-10">${vuser.birthday }</div>

								</div>

								<div class="form-group">
									<label>现居地址:</label>
									<div class="col-sm-10">${vuser.address}</div>
								</div>

								<div class="form-group">
									<label>个性签名:</label>
									<div class="col-sm-10">${vuser.address}</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="product-item">
					<a class="templatemo_logo" id="btnattention">

						<h4>
							<strong>ta的关注</strong>
						</h4>
					</a>
					<div id="divattention" style="display: none;">
						<header class="panel-heading">
						<div class="input-group text-sm">
							<input class="input-sm form-control" placeholder="小明" type="text">
							<div class="input-group-btn">
								<button type="button"
									class="btn btn-sm btn-default dropdown-toggle"
									data-toggle="dropdown">
									搜索<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
						</header>
						<ul class="list-group alt">
							<li class="list-group-item">
								<div class="media">
									<span class="pull-left thumb-sm"><img
										src="${images}/a0.png" alt="John said" class="img-circle">
									</span>
									<div class="pull-right text-danger m-t-sm">
										<i class="fa fa-circle"></i>
									</div>
									<div class="media-body">
										<div>
											<a href="#">敬请期待</a>
										</div>
										<small class="text-muted">感謝您的关注</small>
									</div>
								</div>
							</li>
							<li class="list-group-item">
								<div class="media">
									<span class="pull-left thumb-sm"><img
										src="${images}/a0.png" alt="John said" class="img-circle">
									</span>
									<div class="pull-right text-success m-t-sm">
										<i class="fa fa-circle"></i>
									</div>
									<div class="media-body">
										<div>
											<a href="#">敬请期待</a>
										</div>
										<small class="text-muted">感謝您的关注</small>
									</div>
								</div>
							</li>
							<li class="list-group-item">
								<div class="media">
									<span class="pull-left thumb-sm"><img
										src="${images}/a0.png" alt="John said" class="img-circle">
									</span>
									<div class="pull-right text-muted m-t-sm">
										<i class="fa fa-circle"></i>
									</div>
									<div class="media-body">
										<div>
											<a href="#">敬请期待</a>
										</div>
										<small class="text-muted">感謝您的关注</small>
									</div>
								</div>
							</li>
							<li class="list-group-item">
								<div class="media">
									<span class="pull-left thumb-sm"><img
										src="${images}/a0.png" alt="John said" class="img-circle">
									</span>
									<div class="pull-right text-warning m-t-sm">
										<i class="fa fa-circle"></i>
									</div>
									<div class="media-body">
										<div>
											<a href="#">敬请期待</a>
										</div>
										<small class="text-muted">感謝您的关注</small>
									</div>
								</div>
							</li>
							<li class="list-group-item">
								<div class="media">
									<span class="pull-left thumb-sm"><img
										src="${images}/a0.png" alt="John said" class="img-circle">
									</span>
									<div class="pull-right text-danger m-t-sm">
										<i class="fa fa-circle"></i>
									</div>
									<div class="media-body">
										<div>
											<a href="#">敬请期待</a>
										</div>
										<small class="text-muted">感謝您的关注</small>
									</div>
								</div>
							</li>
							<li class="list-group-item">
								<div class="media">
									<span class="pull-left thumb-sm"><img
										src="${images}/a0.png" alt="John said" class="img-circle">
									</span>
									<div class="pull-right text-muted m-t-sm">
										<i class="fa fa-circle"></i>
									</div>
									<div class="media-body">
										<div>
											<a href="#">敬请期待</a>
										</div>
										<small class="text-muted">感謝您的关注</small>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="product-item">
					<a class="templatemo_logo" id="btnfans">

						<h4>
							<strong>ta的粉丝</strong>
						</h4>
					</a>
					<div id="divfans" style="display: none;">
						<div id="divattention">
							<header class="panel-heading">
							<div class="input-group text-sm">
								<input class="input-sm form-control" placeholder="小明"
									type="text">
								<div class="input-group-btn">
									<button type="button"
										class="btn btn-sm btn-default dropdown-toggle"
										data-toggle="dropdown">
										搜索<i class="fa fa-search"></i>
									</button>
								</div>
							</div>
							</header>
							<ul class="list-group alt">
								<li class="list-group-item">
									<div class="media">
										<span class="pull-left thumb-sm"><img
											src="${images}/a0.png" alt="John said" class="img-circle">
										</span>
										<div class="pull-right text-danger m-t-sm">
											<i class="fa fa-circle"></i>
										</div>
										<div class="media-body">
											<div>
												<a href="#">敬请期待</a>
											</div>
											<small class="text-muted">感謝您的关注</small>
										</div>
									</div>
								</li>
								<li class="list-group-item">
									<div class="media">
										<span class="pull-left thumb-sm"><img
											src="${images}/a0.png" alt="John said" class="img-circle">
										</span>
										<div class="pull-right text-success m-t-sm">
											<i class="fa fa-circle"></i>
										</div>
										<div class="media-body">
											<div>
												<a href="#">敬请期待</a>
											</div>
											<small class="text-muted">感謝您的关注</small>
										</div>
									</div>
								</li>
								<li class="list-group-item">
									<div class="media">
										<span class="pull-left thumb-sm"><img
											src="${images}/a0.png" alt="John said" class="img-circle">
										</span>
										<div class="pull-right text-muted m-t-sm">
											<i class="fa fa-circle"></i>
										</div>
										<div class="media-body">
											<div>
												<a href="#">敬请期待</a>
											</div>
											<small class="text-muted">感謝您的关注</small>
										</div>
									</div>
								</li>
								<li class="list-group-item">
									<div class="media">
										<span class="pull-left thumb-sm"><img
											src="${images}/a0.png" alt="John said" class="img-circle">
										</span>
										<div class="pull-right text-warning m-t-sm">
											<i class="fa fa-circle"></i>
										</div>
										<div class="media-body">
											<div>
												<a href="#">敬请期待</a>
											</div>
											<small class="text-muted">感謝您的关注</small>
										</div>
									</div>
								</li>
								<li class="list-group-item">
									<div class="media">
										<span class="pull-left thumb-sm"><img
											src="${images}/a0.png" alt="John said" class="img-circle">
										</span>
										<div class="pull-right text-danger m-t-sm">
											<i class="fa fa-circle"></i>
										</div>
										<div class="media-body">
											<div>
												<a href="#">敬请期待</a>
											</div>
											<small class="text-muted">感謝您的关注</small>
										</div>
									</div>
								</li>
								<li class="list-group-item">
									<div class="media">
										<span class="pull-left thumb-sm"><img
											src="${images}/a0.png" alt="John said" class="img-circle">
										</span>
										<div class="pull-right text-muted m-t-sm">
											<i class="fa fa-circle"></i>
										</div>
										<div class="media-body">
											<div>
												<a href="#">敬请期待</a>
											</div>
											<small class="text-muted">感謝您的关注</small>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<div class="row" style="padding-left: 9.2%; padding-right: 9.2%">
		<div id="templatemo_footer">
			<div class="container">
				<div class="row">
					<center>
						<a class="templatemo_logo">
							<h1 style="color: #B10021">
								<strong>我的相册</strong>
							</h1>
						</a>
					</center>
				</div>
			</div>
		</div>
	</div>
	<div id="menu-2">
		<div class="container">
			<div class="row">
				<c:forEach items="${nphotos }" var="photos">
					<div class="col-md-4 col-sm-6">
						<div class="product-item">
							<img src="${picPath }${photos.path}" alt="product 1"
								height="169px"> <a href="#" class="product-title">${photos.creattime}</a>
							<p>${photos.description }</p>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>










	<div id="templatemo_footer">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<p>
						
					</p>
				</div>
			</div>
		</div>
	</div>

	<a target="_blank"
		href="http://wpa.qq.com/msgrd?v=3&uin=1848747094&site=qq&menu=yes"><img
		border="0" src="http://wpa.qq.com/pa?p=2:****:41" title="联系客服" /></a>

	<script type="text/javascript">
		//个人资料
		$("#btnallmassage").click(function() {
			if ($("#divallmassage").css("display") == "none") {
				$("#divallmassage").show(500);
			} else {
				$("#divallmassage").hide(500);
			}
		});
		/* $("#divseleave").mouseleave(function() {
			$("#divallmassage").hide(1000);
		}); */

		//修改信息
		$("#btnmassage").click(function() {
			$("#btntwo").hide();
			$("#btnshow").show(500);

		});
		$("#btnnomassage").click(function() {
			$("#btnshow").hide();
			$("#btntwo").show(500);
		});

		//修改密码
		$("#btnchangepsd").click(function() {
			$("#massage").hide(1000);
			$("#divchangepsd").show(1000);
		});
		$("#btnnopsd").click(function() {
			$("#divchangepsd").hide(1000);
			$("#massage").show(1000);
		});
		//我的关注
		$("#btnattention").click(function() {
			if ($("#divattention").css("display") == "none") {
				$("#divattention").show(500);
			} else {
				$("#divattention").hide(500);
			}
		});
		//我的粉丝
		$("#btnfans").click(function() {
			if ($("#divfans").css("display") == "none") {
				$("#divfans").show(500);
			} else {
				$("#divfans").hide(500);
			}
		});
	</script>
</body>
</html>
