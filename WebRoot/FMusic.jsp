<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
 String path=request.getContextPath();
 %>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>Musik | Web Application</title>
  <base href="<%=path %>/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrap-theme.css" />
</head>
<body>
<div>
	<div class="row clearfix">
		<div class="col-md-12 column">
		<!-- 设置时间自动轮播data-interval="3000" -->
			<div class="carousel slide" id="carousel-847575" data-interval="3000" data-pause="hover" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-847575">
					</li>
					<li data-slide-to="1" data-target="#carousel-847575">
					</li>
					<li data-slide-to="2" data-target="#carousel-847575">
					</li>
                    <li data-slide-to="3" data-target="#carousel-847575">
					</li>
					<li data-slide-to="4" data-target="#carousel-847575">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<a href="/FMusic/music/showMusic.do"><img alt="" src="images/01.jpg" /></a>
						<div class="carousel-caption">
							<h4>
								<strong>Index</strong>
							</h4>
							<p>
								Index
							</p>
						</div>
					</div>
					<div class="item">
						<a href="/FMusic/music/showMusic.do"><img alt="" src="images/02.jpg" /></a>
						<div class="carousel-caption">
							<h4>
								<strong>Genres</strong>
							</h4>
							<p>
								Genres
							</p>
						</div>
					</div>
					<div class="item ">
						<a href="/FMusic/music/showMusic.do"><img alt="" src="images/03.jpg" /></a>
						<div class="carousel-caption">
							<h4>
								<strong>Event</strong>
							</h4>
							<p>
								Event
							</p>
						</div>
					</div>
                    <div class="item">
						<a href="/FMusic/music/showMusic.do"><img alt="" src="images/04.jpg" /></a>
						<div class="carousel-caption">
							<h4>
								<strong>Listen</strong>
							</h4>
							<p>
								Listen
							</p>
						</div>
					</div>
                    <div class="item">
						<a href="/FMusic/music/showMusic.do"><img alt="" src="images/05.jpg" /></a>
						<div class="carousel-caption">
							<h4>
								<strong>video</strong>
							</h4>
							<p>
								video
							</p>
						</div>
					</div>
				</div> 
                <a class="left carousel-control" href="#carousel-847575" data-slide="prev"><b><font size="50px" style="position:absolute;top:280px">＜</font></b></span></a> 
                <a class="right carousel-control" href="#carousel-847575" data-slide="next"><b><font size="50px" style="position:absolute;top:280px">＞</font></span></b></a>
			</div>
		</div>
	</div>
	<footer>
		<div class="row">
			<div class="col-sm-12">
      <div style="text-align: center;">
				<p>Musik © 2017-2027<a target="_blank" href="//www.lanqiao.org/"> &nbsp;About We</a></p>
         </div>
			</div>
		</div>
	</footer>
</div>
</body>
</html>
