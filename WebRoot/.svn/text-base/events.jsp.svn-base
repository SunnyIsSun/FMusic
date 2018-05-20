<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>Musik | Web Application</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="<%=path %>/js/jPlayer/jplayer.flat.css" type="text/css" />
  <link rel="stylesheet" href="<%=path %>/css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="<%=path %>/css/animate.css" type="text/css" />
  <link rel="stylesheet" href="<%=path %>/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="<%=path %>/css/simple-line-icons.css" type="text/css" />
  <link rel="stylesheet" href="<%=path %>/css/font.css" type="text/css" />
  <link rel="stylesheet" href="<%=path %>/css/app.css" type="text/css" /> 
  <link rel="stylesheet" href="<%=path %>/css/weixin.css" type="text/css" /> 
    <!--[if lt IE 9]>
    <script src="js/ie/html5shiv.js"></script>
    <script src="js/ie/respond.min.js"></script>
    <script src="js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body class="">
  <section class="vbox" style="height: 550px;">
    <header id="changes" class="bg-black lter header header-md navbar navbar-fixed-top-xs">
      <%@include file="Head.jsp" %>
        <section id="content">
          <section class="vbox" id="bjax-el" style="height: 550px;">
            <section class="w-f-md" >
            <section class="hbox stretch bg-black dker" id="ajaxf">
             <aside class="col-sm-5 no-padder" id="sidebar">
<section class="vbox animated fadeInUp">
<section class="scrollable">
<div class="m-t-n-xxs item pos-rlt">
	<div class="top text-right">
		<span class="musicbar animate bg-success bg-empty inline m-r-lg m-t"
			style="width: 25px; height: 30px"> <span class="bar1 a3 lter"></span>
			<span class="bar2 a5 lt"></span> <span class="bar3 a1 bg"></span> <span
			class="bar4 a4 dk"></span> <span class="bar5 a2 dker"></span> </span>
	</div>
<div class="bottom gd bg-info wrapper-lg">
<span class="pull-right text-sm">101,400 <br>Followers</span>
<span id="music-singer" class="h2 font-thin"></span>
</div>
<img class="img-full" src="
<%=path %>/images/m44.jpg" alt="...">

</div>
<ul
	class="list-group list-group-lg no-radius no-border no-bg m-t-n-xxs m-b-none auto">
	<c:forEach items="${storeList}" var="music" varStatus="status">
		<li class="list-group-item">
			<div class="pull-right m-l">
				<a href="" id="<%=path %>/music/down.do?filename=${music.title }" class="m-r-sm" onclick="down(this)"><i class="icon-cloud-download"></i>
				</a>
				
				<a href="<%=path %>/music/deleteStorelist.do?musicId=${music.id}"><i
					class="icon-close"></i>
				</a>
			</div>
			<a href="#" name="${music.artist }" onclick="play(this)"
				id="${status.index}" class="jp-play-me m-r-sm pull-left"> <i
				class="icon-control-play text"></i> <i
				class="icon-control-pause text-active"></i> </a>
			<div class="clear text-ellipsis">
				<span>${music.title }</span>
				<span class="text-muted"> -- ${music.artist }</span>
			</div>
		</li>
	</c:forEach>
</ul>
</section>
</section>
</aside>
<!-- / side content -->
<section class="col-sm-4 no-padder bg">
<section class="vbox">
<section class="scrollable hover">
<ul class="list-group list-group-lg no-bg auto m-b-none m-t-n-xxs">
	
</ul>
</section>
</section>
</section>
<section class="col-sm-3 no-padder lt">
<section class="vbox">
<section class="scrollable hover">
<div class="m-t-n-xxs">
	<div class="item pos-rlt">
		<a href="#" class="item-overlay active opacity wrapper-md font-xs">
			<span class="block h3 font-bold text-info">Find</span> <span
			class="text-muted">Search the music you like</span> <span
			class="bottom wrapper-md block">- <i
				class="icon-arrow-right i-lg pull-right"></i>
		</span> </a>
		<a href="#"> <img class="img-full" src="<%=path
			%>/images/m40.jpg" alt="..."> </a>
	</div>
	<div class="item pos-rlt">
		<a href="#"
			class="item-overlay active opacity wrapper-md font-xs text-right">
			<span class="block h3 font-bold text-warning text-u-c">Listen</span>
			<span class="text-muted">Find the peace in your heart</span> <span
			class="bottom wrapper-md block"><i
				class="icon-arrow-right i-lg pull-left"></i> -</span> </a>
		<a href="#"> <img class="img-full" src="<%=path
			%>/images/m41.jpg" alt="..."> </a>
	</div>
	<div class="item pos-rlt">
		<a href="#" class="item-overlay active opacity wrapper-md font-xs">
			<span class="block h3 font-bold text-success text-u-c">Share</span> <span
			class="text-muted">Share the good songs with your loves</span> <span
			class="bottom wrapper-md block">- <i
				class="icon-arrow-right i-lg pull-right"></i>
		</span> </a>
		<a href="#"> <img class="img-full" src="<%=path
			%>/images/m42.jpg" alt="..."> </a>
	</div>
	<div class="item pos-rlt">
		<a href="#"
			class="item-overlay active opacity wrapper-md font-xs text-right">
			<span class="block h3 font-bold text-white text-u-c">2014</span> <span
			class="text-muted">Find, Listen & Share</span> <span
			class="bottom wrapper-md block"><i
				class="icon-arrow-right i-lg pull-left"></i> -</span> </a>
		<a href="#"> <img class="img-full" src="<%=path
			%>/images/m44.jpg" alt="..."> </a>
	</div>
	<div class="item pos-rlt">
		<a href="#" class="item-overlay active opacity wrapper-md font-xs">
			<span class="block h3 font-bold text-danger-lter text-u-c">Top10</span>
			<span class="text-muted">Selected songs</span> <span
			class="bottom wrapper-md block">- <i
				class="icon-arrow-right i-lg pull-right"></i>
		</span> </a>
		<a href="#"> <img class="img-full" src="<%=path
			%>/images/m45.jpg" alt="..."> </a>
	</div>
</div>
</section>
</section>
</section>
</section>
 
</section>       
        
	 
               
        </section>
          
          
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
        </section>
      </section>
    </section>    
  </section>
  <footer id="changef" class="footer bg-success dker" style="position:absolute;top: 550px;">
              <%@include file="Footer.jsp" %>
            </footer>
  <script type="text/javascript" src="<%=path %>/js/jquery-1.8.3.min.js"></script>
  <script src="<%=path %>/js/changecss.js"></script>
  <script src="<%=path %>/js/ajaxflush.js"></script>
  <!-- Bootstrap -->
  <script src="<%=path %>/js/bootstrap.js"></script>
  <!-- App -->
  <script src="<%=path %>/js/app.js"></script>  
  <script src="<%=path %>/js/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="<%=path %>/js/app.plugin.js"></script>
  <script type="text/javascript" src="<%=path %>/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="<%=path %>/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="<%=path %>/js/jPlayer/storeList.js"></script>
  <script type="text/javascript" src="<%=path %>/js/jPlayer/ajaxm.js"></script>

</body>
</html>