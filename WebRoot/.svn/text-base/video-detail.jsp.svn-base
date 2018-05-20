<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>Music | Web Application</title>
  <base href="<%=path %>/" />
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="js/jPlayer/jplayer.flat.css" type="text/css" />
  <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="css/animate.css" type="text/css" />
  <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="css/simple-line-icons.css" type="text/css" />
  <link rel="stylesheet" href="css/font.css" type="text/css" />
  <link rel="stylesheet" href="css/app.css" type="text/css" /> 
  <link rel="stylesheet" href="css/weixin.css" type="text/css" />   
  
  <!--[if lt IE 9]>
    <script src="js/ie/html5shiv.js"></script>
    <script src="js/ie/respond.min.js"></script>
    <script src="js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body class="">
  <section class="vbox">
    <header class="bg-white-only header header-md navbar navbar-fixed-top-xs">
     <%@include file="Head.jsp"  %> 
        <section id="content">
          <section class="vbox">
            <section class="scrollable wrapper-lg">
              <div class="row">
                <div class="col-sm-8">
                  <div class="panel">
                    <!-- mv播放video player -->
                    <div id="jp_container_1">
                      <div class="jp-type-single pos-rlt">
                        <div id="jplayer_1" class="jp-jplayer jp-video"></div>
                        <div class="jp-gui">
                          <div class="jp-video-play">
                            <a class="fa fa-5x text-white fa-play-circle"></a>
                          </div>
                          <div class="jp-interface bg-info padder">
                            <div class="jp-controls">
                              <div>
                                <a class="jp-play"><i class="icon-control-play i-2x"></i></a>
                                <a class="jp-pause hid"><i class="icon-control-pause i-2x"></i></a>
                              </div>
                              <div class="jp-progress">
                                <div class="jp-seek-bar dker">
                                  <div class="jp-play-bar dk">
                                  </div>
                                  <div class="jp-title text-lt">
                                    <ul>
                                      <li></li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                              <div class="hidden-xs hidden-sm jp-current-time text-xs text-muted"></div>
                              <div class="hidden-xs hidden-sm jp-duration text-xs text-muted"></div>
                              <div class="hidden-xs hidden-sm">
                                <a class="jp-mute" title="mute"><i class="icon-volume-2"></i></a>
                                <a class="jp-unmute hid" title="unmute"><i class="icon-volume-off"></i></a>
                              </div>
                              <div class="hidden-xs hidden-sm jp-volume">
                                <div class="jp-volume-bar dk">
                                  <div class="jp-volume-bar-value lter"></div>
                                </div>
                              </div>
                              <div>
                                <a class="jp-full-screen" title="full screen"><i class="fa fa-expand"></i></a>
                                <a class="jp-restore-screen" title="restore screen"><i class="fa fa-compress text-lt"></i></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="jp-no-solution hide">
                          <span>Update Required</span>
                          To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
                        </div>
                      </div>
                    </div>
                    <!-- / video player -->
                    <div class="wrapper-lg">
                      <h2 class="m-t-none text-black">${singleVideo.m_name }</h2>
                      <div class="post-sum">
                        <p>${singleVideo.m_singer }
                        <br><br>
                        ${singleVideo.m_desc }</p>
                      </div>
                      <div class="line b-b"></div>
                      <div class="text-muted">
                        <i class="fa fa-user icon-muted"></i> by <a href="#" class="m-r-sm">Admin</a>
                        <i class="fa fa-clock-o icon-muted"></i> October 10, 2017
                        <!--  <a href="#" class="m-l-sm"><i class="fa fa-comment-o icon-muted"></i> ${commentCount} comments</a> -->
                      </div>
                    </div>
                  </div>
                <!-- 评论的增加展示的修改 -->
                  <h4 class="m-t-lg m-b" id="h4">${commentCount} Comments</h4>
                  <section class="comment-list block" id="commentShow">
                    <c:forEach items="${comment}" var="comment" begin="0" end="4" step="1"> 
                    <article id="comment-id-1" class="comment-item">
                      <a class="pull-left thumb-sm">
                        <img src="images/a0.png" class="img-circle">
                      </a>
                      <section class="comment-body m-b">
                        <header>
                          <a href="#"><strong>${comment.username}</strong></a>
                          <label class="label bg-info m-l-xs">Editor</label> 
                          <span class="text-muted text-xs block m-t-xs">
                            ${comment.time }
                          </span>
                        </header>
                        <div class="m-t-sm">${comment.comment }</div>
                      </section>
                    </article>          
                    </c:forEach>
                  </section>
                  <h4 class="m-t-lg m-b">Leave a comment</h4>  
                  <form action="#" method="post">
                    <div class="form-group">
                      <label>Comment</label>
                      <textarea class="form-control" rows="5" placeholder="Type your comment" name="comment" id="text" ></textarea>
                    </div>
                    <div class="form-group">
                      <button name="${user}" type="button" class="btn btn-success" onclick="validateUser(this)">Submit comment</button>
                       <font id="login" style="color: green" ></font>
                    </div>
                  </form>
                </div> 
                <div class="col-sm-4">
                  <div class="panel panel-default">
                  <!--修改的代码热度排行-->
                    <div class="panel-heading">Suggestions </div>
                    <div class="panel-body">
                    <c:forEach items="${counts}" var="count" begin="0" end="5" step="1">              
                      <article class="media">
                        <a href="/FMusic/ShowVideo/playVideo.do?id=${count.m_id}" class="pull-left thumb-lg m-t-xs">
                          <img src="${count.m_images}" height="100px" />
                        </a>
                        <div class="media-body">
                          <a href="/FMusic/ShowVideo/playVideo.do?id=${count.m_id}" class="font-semibold"><h5>${count.m_name}</h5></a>
                          <div class="text-xs block m-t-xs">
                          <a href="/FMusic/ShowVideo/playVideo.do?id=${count.m_id}" >${count.m_singer}</a>
                           &nbsp;&nbsp;${count.m_time }</div>
                        </div>    
                      </article>
                   </c:forEach> 
                    
                    </div>
                  </div>
                </div>
                
              </div>
            </section>
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
        </section>
      </section>
    </section>    
  </section>
  <script src="js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="js/bootstrap.js"></script>
  <!-- App -->
  <script src="js/app.js"></script>  
  <script src="js/slimscroll/jquery.slimscroll.min.js"></script>
  
  <script src="js/app.plugin.js"></script>
  <script type="text/javascript" src="js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="js/jPlayer/video.js"></script>
  <script type="text/javascript">
  	playMv('${singleVideo.m_singer}','${singleVideo.m_images}','${singleVideo.m_fileUrl}');
  	//Next('${singleVideo.m_count}+1');
  </script>
  <script type="text/javascript">
  	function validateUser(e){
  	var user=$(e).attr("name");
  		if(user==""){
  			$("#login").html("请先登录!");
  			//setTimeout(function(){ window.location.href="/FMusic/signin.jsp"; }, 3000);
  		}
  		else{
  		$.ajax({
				  	url : "/FMusic/ShowVideo/addComment.do", //要提交的URL路径
					type : "post",      //发送请求的方式
					data : {mid:${singleVideo.m_id},comment:$("#text").val()}, //要发送到服务器的数据
					dataType : "json",    //指定传输的数据格式
					success : function(result) {//请求成功后要执行的代码
							var count=result[0];
							$("#h4").html(count+"Comments");
							var comment=result[1];	
							$("#text").val("");			
							$("#commentShow").html("");
							$.each(comment,function(index,item){
							if(index<5){
							$("#commentShow").append("  <article id='comment-id-1' class='comment-item'> "+
				                     				" <a class='pull-left thumb-sm'> "+
				                       				"  <img src='images/a0.png' class='img-circle'> "+
								                      " </a> "+
								                      " <section class='comment-body m-b'> "+
								                       "  <header> "+
								                        "   <a href='#'><strong>"+item.username+"</strong></a> "+
								                        "   <label class='label bg-info m-l-xs'>Editor</label>  "+
								                         "  <span class='text-muted text-xs block m-t-xs'>  "+item.time+"  </span> "+
								                       "  </header> "+
								                       "  <div class='m-t-sm'> " +item.comment+ "</div>  </section>  </article> " );
					}
					});	
					},			
					error : function() { //请求失败后要执行的代码
						alert("验证失败！！");
					}
				});
  		}
  	}
  </script>
</body>

</html>