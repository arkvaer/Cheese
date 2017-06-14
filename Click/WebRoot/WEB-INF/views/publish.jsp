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

<link rel="stylesheet" media="screen" href="${css}/style.css">

<!-- 这是引入的css文件 -->
<link rel="stylesheet" href="${css}/pintuer.css">
<link rel="stylesheet" href="${css}/admin.css">
<script src="${js}/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="${js }/jquery.form.js"></script>
<script type="text/javascript">
	function submitImgSize1Upload() {

		var option = {
			type : 'POST',
			url : '${root}/upload/uploadPic.do',
			dataType : 'text',
			data : {
				fileName : 'imgSize1File'
			},
			success : function(data) {

				//把json格式的字符串转换成json对象
				var jsonObj = $.parseJSON(data);

				//返回服务器图片路径，把图片路径设置给img标签
				$("#bodyPic").css({
					'background-image' : 'url(' + jsonObj.fullPath + ')'
				});
				//数据库保存相对路径
				$("#imgSize1").val(jsonObj.relativePath);
			}

		};

		$("#publishFrom").ajaxSubmit(option);

	}
</script>
<style type="text/css">
a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}
</style>
</head>

<body id="bodyPic"
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
					<li><a href="${root}/jump/index.do">首页</a></li>
					<li><a href="${root}/jump/shoot.do">最佳摄影</a></li>
					<li><a href="${root}/jump/customer.do">最美用户</a></li>
					<li><a href="${root }/jump/serch.do">搜索</a></li>
					<c:choose>
						<c:when test="${nuser!=null }">
						<li><a class="show-1 templatemo_home" href="#">发布</a></li>
						<li><a href="${root}/jump/toPersonal.do">&nbsp;&nbsp;&nbsp;&nbsp;${nuser.username}</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="${root}/jump/sign.do">登录|注册</a></li>
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
							<li><a href="${root}/jump/index.do">首页</a></li>
							<li><a href="${root}/jump/shoot.do">最佳摄影</a></li>
							<li><a href="${root}/jump/customer.do">最美用户</a></li>
							<li><a href="${root}/jump/serch.do">搜索</a></li>
							<c:choose>
								<c:when test="${nuser!=null }">
									<li><a class="show-1 templatemo_home" href="#">发布</a></li>
									<li><a href="${root}/jump/toPersonal.do"><img
											src="${images }/a1.png" class="img-circle"
											style="width: 20%;">&nbsp;&nbsp;&nbsp;&nbsp;${nuser.username}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="#">登录|注册</a></li>

								</c:otherwise>
							</c:choose>
						</ul>

					</div>
				</div>
			</div>
		</div>

	</div>




	<div class="container">
		<div class="line bouncein">
			<div class="xs6 xm4 xs3-move xm4-move">
				<div style="height: 10%;"></div>
				<div class="media media-y margin-big-bottom"></div>
				<form id="publishFrom" action="${root }/photos/upload.do"
					method="post">
					<div class="panel loginbox"
						style="background-color: #000; filer: alpha(opacite = 70); opacity: 0.7; -moz-opacity: 0.7; color: #fff">
						<div class="text-center margin-big padding-big-top">
							<strong><h1>发布美拍</h1></strong>
						</div>
						<div class="form-group"
							style="padding-left: 10%; padding-right: 10%">
							<label>发布照片</label> <input type='file' id='imgSize1File'
								name='imgSize1File' class="file"
								onchange='submitImgSize1Upload()' /> <span class="pos"
								id="imgSize1FileSpan">请上传图片的大小不超过3MB</span> <input type='hidden'
								id='imgSize1' name="path" value='${picPath}${photos.path}'
								reg="^.+$" tip="亲！您忘记上传图片了。" />
						</div>
						<div class="form-group"
							style="padding-left: 10%; padding-right: 10%">
							<strong>描述一下！</strong>
							<textarea name="description" class="form-control parsley-validated" rows="6"
								id="ftisland" data-minwords="6" data-required="true"
								placeholder="说点什么吧！"></textarea>
						</div>
						<div style="padding: 30px;">
							<div class="btn-group btn-group-justified" id="btntwo">
								<a class="btn btn-info" id="btnchangepsd">取消发布</a> <a
									class="btn btn-success" id="btnmassage"><input type="submit" value="确认发布"></a>
							</div>
						</div>
					</div>
				</form>
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








</body>
</html>
