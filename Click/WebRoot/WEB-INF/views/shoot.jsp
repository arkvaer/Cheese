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
<html>

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
<link rel="stylesheet" media="screen" href="${css}/style.css">
</head>

<body>
	<!-- 这个是导航栏 -->
	<div class="site-header">
		<div class="main-navigation">
			<div class="responsive_menu">
				<ul>
					<li><a href="${root }/jump/index.do">首页</a></li>
					<li><a class="show-1 templatemo_home" href="#">最佳摄影</a></li>
					<li><a href="${root }/jump/customer.do">最美用户</a></li>
					<li><a href="${root }/jump/serch.do">搜索</a></li>
					<c:choose>
						<c:when test="${nuser!=null }">
							<li><a href="${root}/jump/toPersonal.do">${nuser.username}</a></li>
							<li><a href="${root}/jump/publish.do">发布</a></li>
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
							<li><a class="show-1 templatemo_home" href="#">最佳摄影</a></li>
							<li><a href="${root }/jump/customer.do">最美用户</a></li>
							<li><a href="${root }/jump/serch.do">搜索</a></li>
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

	<div id="menu-2">
		<div id="particles-js" style="width: 100%; height: 15%"></div>
		<div class="container">
			<div class="row">


				<c:forEach items="${bestShoots}" var="shoots">
					<div class="col-md-4 col-sm-6">
						<div class="product-item">
							<img src="${picPath }${shoots.path}" alt="product 1" height="181px" > <a
								href="${root}/jump/viewpersonal.do?uid=${shoots.uid}" class="product-title" >${shoots.creattime }</a>
							<p>${shoots.description }</p>
							<div style="float: right">
								<a class="btn btn-default ${shoots.id}" data-toggle="button"
									id="${shoots.id}_on" onclick="a(${nuser.phone},${shoots.id},1)">
									<i class="fa fa-heart-o text"></i> <i
									class="fa fa-heart text-active text-danger"></i> <h7> <strong></strong></h7>
								</a> <a class="btn btn-default active ${shoots.id}"
									data-toggle="button" id="${shoots.id}_off"
									style="display: none;"
									onclick="a(${nuser.phone},${shoots.id},-1)"> <i
									class="fa fa-heart-o text"></i> <i
									class="fa fa-heart text-active text-danger"></i> <h7> <strong
										style="color: B20000"></strong></h7>
								</a><span class="badge bg-info">${shoots.likes}</span>
							</div>
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

	<!-- 
    	Free Responsive Template by templatemo
    	http://sc.chinaz.com
	-->
	<script type='text/javascript' src='${js}/logging.js'></script>
	<script src="${js}/particles.min.js"></script>
	<script src="${js}/particle.js"></script>
	<script type="text/javascript">
	 function a(uid,id,num){
		 var date = {"uid":uid,"id":id,"likes":num};
		 if(num==1){
			$("#"+id+"_on").hide();
			$("#"+id+"_off").show();
			$.ajax({
				type:"POST",
				url:"${root}/photos/like.do",
				dataType:"json",
				contentType:"application/json;charset=UTF-8",
				data:JSON.stringify(date),
				success:function(date){ 
                    console.log(date)
	            } 
			});

		 }else{
			$("#"+id+"_on").show();
			$("#"+id+"_off").hide();
			$.ajax({
				type:"POST",
				url:"${root}/photos/like.do",
				dataType:"json",
				contentType:"application/json;charset=UTF-8",
				data:JSON.stringify(date),
				success:function(date){ 
                    console.log(date)
	            } 
			});
		 }
		};
		
	</script>
</body>
</html>
