<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>Music | Web Application</title>
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
  <section class="vbox" style="height: 660px;">
    <header id="changes" class="bg-white-only header header-md navbar navbar-fixed-top-xs">
      <%@include file="Head.jsp"  %> 
        <section id="content">
          <section class="vbox" id="bjax-el" style="height: 580px;">
            <section class="scrollable padder-lg">
              <h2 class="font-thin m-b">Video</h2>
              <div class="row row-sm">
            <!-- 我修改的代码，注意路径的改变和拼接 -->
              <c:forEach items="${bp.vList}" var="video" begin="0" end="2" step="1">
                <div class="col-xs-12 col-sm-4">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
                          <a href="/FMusic/ShowVideo/playVideo.do?id=${video.m_id}" ><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <div class="top">
                        <span class="badge bg-dark m-l-sm m-t-sm">${video.m_time}</span>
                      </div>
                      <a href="/FMusic/ShowVideo/playVideo.do?id=${video.m_id}"><img src="<%=path%>/${video.m_images}" onclick="Next(this)" alt="" class="r r-2x img-full" width="300px" height="200px"></a>
                    </div>
                    <div class="padder-v">
                      <a href="/FMusic/ShowVideo/playVideo.do?id=${video.m_id}" class="text-ellipsis">${video.m_name }</a>
                      <a href="/FMusic/ShowVideo/playVideo.do?id=${video.m_id}" class="text-ellipsis text-xs text-muted">${video.m_singer }</a>
                    </div>
                  </div>
                </div>
  			</c:forEach>
              </div>
              <h3 class="font-thin m-b">Video List</h3>
              <div class="row row-sm">
              
               <c:forEach items="${bp.vList}" var="video2" begin="3" end="11" step="1">
                <div class="col-xs-6 col-sm-4 col-md-3">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
                          <a href="/FMusic/ShowVideo/playVideo.do?id=${video2.m_id}"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <a href="/FMusic/ShowVideo/playVideo.do?id=${video2.m_id}"><img src="<%=path %>/${video2.m_images}" alt="" class="r r-2x img-full" width="256px" height="256px"></a>
                    </div>
                    <div class="padder-v">
                      <a href="/FMusic/ShowVideo/playVideo.do?id=${video2.m_id}" class="text-ellipsis">${video2.m_name }</a>
                      <a href="/FMusic/ShowVideo/playVideo.do?id=${video2.m_id}" class="text-ellipsis text-xs text-muted">${video2.m_singer}</a>
                    </div>
                  </div>
                </div>
                </c:forEach>
              </div>
            <ul class="pagination" style="text-align:center; margin-top:10px;">
				<!-- 判断当前页是否是首页  -->
				<c:if test="${bp.currPage == 1 }">
					<li class="disabled">
						<a href="javascript:void(0)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
					</li>
				</c:if>
				<c:if test="${bp.currPage != 1 }">
					<li>
						<a href="${pageContext.request.contextPath}/ShowVideo/ShowVideo.do?currPage=${bp.currPage-1}" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
					</li>
				</c:if>
				
				<!-- 展示所有页码 -->
				<c:forEach begin="${bp.currPage-5>0?bp.currPage-5:1 }" end="${bp.currPage+4>bp.totalPage?bp.totalPage:bp.currPage+4 }" var="n">
					<!-- 判断是否是当前页 -->
					<c:if test="${bp.currPage==n}">
						<li class="active"><a href="javascript:void(0)">${n}</a></li>
					</c:if>
					<c:if test="${bp.currPage!=n}">
						<li><a href="${pageContext.request.contextPath}/ShowVideo/ShowVideo.do?currPage=${n}">${n}</a></li>
					</c:if>
				</c:forEach>
				
				
				<!-- 判断是否是最后一页 -->
				<c:if test="${bp.currPage == bp.totalPage}">
							<li class="disabled">
						<a href="javascript:void(0)" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</c:if>
				<c:if test="${bp.currPage != bp.totalPage }">
					<li>
						<a href="${pageContext.request.contextPath}/ShowVideo/ShowVideo.do?currPage=${bp.currPage+1}" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</c:if>
				
			</ul>               
            </section>
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
        </section>
      </section>
    </section>    
  </section><script src="<%=path %>/js/changecss.js"></script>          
  <script src="<%=path %>/js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="<%=path %>/js/bootstrap.js"></script>
  <!-- App -->
  <script src="<%=path %>/js/app.js"></script>  
  <script src="<%=path %>/js/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="<%=path %>/js/app.plugin.js"></script>
  <script type="text/javascript" src="<%=path %>/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="<%=path %>/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  

</body>
</html>