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
    <header id="changes" class="bg-white-only header header-md navbar navbar-fixed-top-xs">
      <%@include file="Head.jsp" %>
        <section id="content">
          <section class="vbox" id="bjax-el" style="height: 550px;">
            <section class="w-f-md" >
              <section class="hbox stretch">
                <!-- side content -->
                <aside class="aside bg-light dk" id="sidebar">
                  <section class="vbox animated fadeInUp">
                    <section class="scrollable hover">
                      <div class="list-group no-radius no-border no-bg m-t-n-xxs m-b-none pointer" >
                         <a onclick="ajaxm(this)"   id="/FMusic/music/showPage.do?pageIndex=1" class="list-group-item active" style="cursor: pointer;" id="showColor">
	                          	所有歌曲
	                     </a>
                        <c:forEach items="${list}" var="music">
	                        <a onclick="ajaxm(this)" name="${music.m_type}" id="/FMusic/music/showMusicByType.do?m_type=${music.m_type}&pageIndex=1" class="list-group-item color" style="cursor: pointer" id="showColor${music.m_type}">
	                          ${music.m_sorts}
	                        </a>
                        </c:forEach>
                      </div>
                    </section>
                  </section>
                </aside>
                <!-- / side content -->
                <section>
                  <section class="vbox">
                    <section class="scrollable padder-lg">
                   <c:choose>
                   	<c:when test="${pb2.m_sort!=null}">
                   	<h2 class="font-thin m-b"> ${list.m_sorts}</h2>
                   	</c:when>
                   	<c:when test="${pb2.m_sort==null}">
                   	<h2 class="font-thin m-b"> Music</h2>
                   	</c:when>
                   </c:choose>
                      <div class="row row-sm" id="ajax">
                       <c:forEach items="${pb2.list}" var="music">
                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="" name="<%=path %>/music/playsing.do?name=${music.m_name}&id=${music.m_id}" onclick="playsing(this)"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <div style="width: 154.328px; height: 154px">
                              <a href="#"><img src="${music.m_images}" alt="" class="r r-2x img-full" style="width: 154.328px; height: 154px"></a>
                              </div>
                            </div>
                            <div class="padder-v">
                              <a href="<%=path %>/music/singerInfo.do?singer=${music.m_singer }" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">${music.m_name} </a>
                              <a href="<%=path %>/music/singerInfo.do?singer=${music.m_singer }" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">${music.m_singer }</a>
                            </div>
                          </div>
                        </div>  
                         </c:forEach>
                         </div>
                       
                    </section>                    
                  </section>
                </section>
              </section>
            </section>
            
          </section>
          
          
        </section>
      </section>
    </section>    
  </section>
  <footer id="changef" class="footer bg-info dker" style="position:absolute;top: 550px;">
              <%@include file="Footer.jsp" %>
            </footer>
  <script src="<%=path %>/js/changecss.js"></script>
  <script type="text/javascript" src="<%=path %>/js/jquery-1.8.3.min.js"></script>
  <!-- Bootstrap -->
  <script src="<%=path %>/js/bootstrap.js"></script>
  <!-- App -->
  <script src="<%=path %>/js/app.js"></script>  
  <script src="<%=path %>/js/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="<%=path %>/js/app.plugin.js"></script>
  <script type="text/javascript" src="<%=path %>/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="<%=path %>/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="<%=path %>/js/jPlayer/demo.js"></script>
  <script type="text/javascript" src="<%=path %>/js/jPlayer/ajaxm.js"></script>
  
</body>
</html>