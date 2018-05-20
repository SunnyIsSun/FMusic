<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <!--[if lt IE 9]>
    <script src="js/ie/html5shiv.js"></script>
    <script src="js/ie/respond.min.js"></script>
    <script src="js/ie/excanvas.js"></script>
  <![endif]-->
   <script src="<%=path %>/js/jquery-1.8.3.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
	       	$("#email").keyup(function(){
	       		$.ajax({
				  	url : "user/login2.do", //要提交的URL路径
					type : "post",      //发送请求的方式
					data : {email:$("#email").val()}, //要发送到服务器的数据
					dataType : "json",    //指定传输的数据格式
					success : function(result) {//请求成功后要执行的代码
					$("#mess").html("");			
						$.each(result,function(index,item){							
							$("#mess").append("<div class='mouse' onmouseover='mouseover(this);' onmouseout='mouseout(this);' onclick='click1(this);'>"+item.email+"</div>");
						});				
					},
					
				});
	       	});
	    });
	function mouseover(v){
		v.style.backgroundColor="#97D0DC";
	}
	function mouseout(v){
		v.style.backgroundColor="#43A5B9";
	}	
	function click1(v){
		var value = v.innerHTML;
		$("#email").val(value);
		$("#mess").html("");
	}
</script>
<style type="text/css">	
		#mess{
			position: absolute; 
			top: 164px;
			left: 515px;
			font-size: 25px;			
		  }
</style>
</head>
<body class="bg-info dker">
  <section id="content" class="m-t-lg wrapper-md animated fadeInUp">    
    <div class="container aside-xl">
      <a class="navbar-brand block" href="index.jsp"><span class="h1 font-bold">Musik</span></a>
      <section class="m-b-lg">
        <header class="wrapper text-center">
          <strong>Sign in to get in touch</strong>
        </header>
        
        <form action="<%=path %>/user/login.do" method="post">
          <div class="form-group">
            <input type="email" placeholder="Email" class="form-control rounded input-lg text-center no-border" name="email" id="email">            
          </div>
             <div id="mess" style="width: 335px;  float: left; color: black;" ></div> 
          <div class="form-group">
             <input type="password" placeholder="Password" class="form-control rounded input-lg text-center no-border" name="password" id="password">
          </div>       
          <input type="submit" class="btn btn-lg btn-warning lt b-white b-2x btn-block btn-rounded" value="Sign in" >
          	<span id="information"></span>
          	<i class="icon-arrow-right pull-right"></i>
          	<span class="m-r-n-lg">Sign in</span>
          </input>
          <div class="text-center m-t m-b"><a href="findPassword.jsp"><small>Forgot password?</small></a></div>
          <div class="line line-dashed"></div>
          <p class="text-muted text-center"><small>Do not have an account?</small></p>
          <a href="signup.jsp" class="btn btn-lg btn-info btn-block rounded">Create an account</a>
        </form>
        
      </section>
    </div>
  </section>
  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder">
      <p>
        <small>Web app framework base on Bootstrap<br>&copy; 2014</small>
      </p>
    </div>
  </footer>
  <!-- / footer -->
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