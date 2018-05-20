<%@ page language="java" import="java.util.*,com.lq.model.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  <link rel="stylesheet" href="<%=path%>/js/jPlayer/jplayer.flat.css" type="text/css" />
  <link rel="stylesheet" href="<%=path%>/css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="<%=path%>/css/animate.css" type="text/css" />
  <link rel="stylesheet" href="<%=path%>/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="<%=path%>/css/simple-line-icons.css" type="text/css" />
  <link rel="stylesheet" href="<%=path%>/css/font.css" type="text/css" />
  <link rel="stylesheet" href="<%=path%>/css/app.css" type="text/css" />  

  <link rel="stylesheet" href="<%=path%>/css/weixin.css" type="text/css" />  

    <!--[if lt IE 9]>
    <script src="js/ie/html5shiv.js"></script>
    <script src="js/ie/respond.min.js"></script>
    <script src="js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body class="">
  	 <section class="vbox" style="height: 550px;">
    <header id="changes" class="bg-white-only header header-md navbar navbar-fixed-top-xs">  	
  	<%@include file="Head.jsp"%>
        <section id="content">
          <section class="hbox stretch">
            <section>
              <section class="vbox" style="height: 550px;" id="bjax-el">
                <section class="scrollable padder-lg w-f-md" >
                  <a href="#" class="pull-right text-muted m-t-lg" data-toggle="class:fa-spin" ><i class="icon-refresh i-lg  inline" id="refresh"></i></a>
                  <h2 class="font-thin m-b">Discove <span class="musicbar animate inline m-l-sm" style="width:20px;height:20px">
                    <span class="bar1 a1 bg-primary lter"></span>
                    <span class="bar2 a2 bg-info lt"></span>
                    <span class="bar3 a3 bg-success"></span>
                    <span class="bar4 a4 bg-warning dk"></span>
                    <span class="bar5 a5 bg-danger dker"></span>
                  </span></h2>
                  <div class="row row-sm">
                      <c:forEach items="${musics}" var="music">
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="bottom">
                            <span class="badge bg-info m-l-sm m-b-sm">${music.m_time}</span>
                          </div>
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="text-info padder m-t-sm text-sm">
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star-o text-muted"></i>
                            </div>
                            <div class="center text-center m-t-n">
                              <a href="" name="<%=path %>/music/playsing.do?name=${music.m_name}&id=${music.m_id}" onclick="playsing(this)"><i class="icon-control-play i-2x"></i></a>
                            </div>
                            <div class="bottom padder m-b-sm">
                              <a href="#" class="pull-right">
                                <i class="fa fa-heart-o"></i>
                              </a>
                              <a href="#">
                                <i class="fa fa-plus-circle"></i>
                              </a>
                            </div>
                          </div>
                          
                          <a href="" name="<%=path %>/music/playsing.do?name=${music.m_name}&id=${music.m_id}" onclick="playsing(this)"><img style="height:221px; width:147.656px" src="${music.m_images} " alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">

                          <a href="<%=path %>/music/singerInfo.do?singer=${music.m_singer }" class="text-ellipsis">${music.m_name} </a>
                          <a href="<%=path %>/music/singerInfo.do?singer=${music.m_singer }" class="text-ellipsis text-xs text-muted">${music.m_singer }</a>

                          <!--<a href="/FMusic/music/musicPlayList.do" class="text-ellipsis">${music.m_name} </a>
                          <a href="/FMusic/music/musicPlayList.do" class="text-ellipsis text-xs text-muted">${music.m_singer }</a>

                        --></div>
                      </div>
                    </div>
                	<div class="clearfix visible-xs"></div>
 
                  </c:forEach>   
                  </div>
                  <div class="row">
                    <div class="col-md-7">
                      <h3 class="font-thin">New Songs</h3>
                       <div class="row row-sm">
                      <c:forEach items="${musics1}" var="music">
                        <div class="col-xs-6 col-sm-3">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="" name="<%=path %>/music/playsing.do?name=${music.m_name}&id=${music.m_id}" onclick="playsing(this)"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="#"><img style="height:126px; width:126.656px" src="${music.m_images}" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="#" class="text-ellipsis">${music.m_name}</a>
                              <a href="#" class="text-ellipsis text-xs text-muted">${music.m_singer }</a>
                            </div>
                          </div>
                        </div>
                        </c:forEach>
                        
                      </div>
                    </div>
                    <div class="col-md-5">
                      <h3 class="font-thin">Top Songs</h3>
                      <div class="list-group bg-white list-group-lg no-bg auto">                          
                        <a href="#" class="list-group-item clearfix">
                          <span class="pull-right h2 text-muted m-l">1</span>
                          <span class="pull-left thumb-sm avatar m-r">
                            <img src="<%=path%>/images/a4.png" alt="...">
                          </span>
                          <span class="clear">
                            <span>Little Town</span>
                            <small class="text-muted clear text-ellipsis">by Chris Fox</small>
                          </span>
                        </a>
                        <a href="#" class="list-group-item clearfix">
                          <span class="pull-right h2 text-muted m-l">2</span>
                          <span class="pull-left thumb-sm avatar m-r">
                            <img src="<%=path%>/images/a5.png" alt="...">
                          </span>
                          <span class="clear">
                            <span>Lementum ligula vitae</span>
                            <small class="text-muted clear text-ellipsis">by Amanda Conlan</small>
                          </span>
                        </a>
                        <a href="#" class="list-group-item clearfix">
                          <span class="pull-right h2 text-muted m-l">3</span>
                          <span class="pull-left thumb-sm avatar m-r">
                            <img src="<%=path%>/images/a6.png" alt="...">
                          </span>
                          <span class="clear">
                            <span>Aliquam sollicitudin venenatis</span>
                            <small class="text-muted clear text-ellipsis">by Dan Doorack</small>
                          </span>
                        </a>
                        <a href="#" class="list-group-item clearfix">
                          <span class="pull-right h2 text-muted m-l">4</span>
                          <span class="pull-left thumb-sm avatar m-r">
                            <img src="<%=path%>/images/a7.png" alt="...">
                          </span>
                          <span class="clear">
                            <span>Aliquam sollicitudin venenatis ipsum</span>
                            <small class="text-muted clear text-ellipsis">by Lauren Taylor</small>
                          </span>
                        </a>
                        <a href="#" class="list-group-item clearfix">
                          <span class="pull-right h2 text-muted m-l">5</span>
                          <span class="pull-left thumb-sm avatar m-r">
                            <img src="<%=path%>/images/a8.png" alt="...">
                          </span>
                          <span class="clear">
                            <span>Vestibulum ullamcorper</span>
                            <small class="text-muted clear text-ellipsis">by Dan Doorack</small>
                          </span>
                        </a>
                      </div>
                    </div>
                  </div>
                  <div class="row m-t-lg m-b-lg">
                    <div class="col-sm-6">
                      <div class="bg-primary wrapper-md r">
                        <a href="#">
                          <span class="h4 m-b-xs block"><i class=" icon-user-follow i-lg"></i> Login or Create account</span>
                          <span class="text-muted">Save and share your playlist with your friends when you log in or create an account.</span>
                        </a>
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="bg-black wrapper-md r">
                        <a href="#">
                          <span class="h4 m-b-xs block"><i class="icon-cloud-download i-lg"></i> Download our app</span>
                          <span class="text-muted">Get the apps for desktop and mobile to start listening music at anywhere and anytime.</span>
                        </a>
                      </div>
                    </div>
                  </div>
                </section>
                
              </section>
            </section>
            <!-- side content -->
            
            <!-- / side content -->
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
        </section>
      </section>
    </section>    
  </section>
  <footer id="changef" class="footer bg-dark" style="position:absolute;top: 580px;">
                  <%@include file="Footer.jsp" %>
                </footer>
  <script src="<%=path%>/js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="<%=path%>/js/bootstrap.js"></script>
  <!-- App -->
  <script src="<%=path%>/js/app.js"></script>  
  <script src="<%=path%>/js/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="<%=path%>/js/app.plugin.js"></script>
  <script type="text/javascript" src="<%=path%>/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="<%=path%>/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="<%=path%>/js/jPlayer/demo.js"></script>
<script src="<%=path %>/js/changecss.js"></script>
<script type="text/javascript" src="<%=path %>/js/jPlayer/ajaxm.js"></script>
</body>
</html>
</body>
</html>