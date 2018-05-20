<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		body{
			text-align: center;	
			background-color: #2EA0B6;		
		}
		.face{
			margin: 0px auto;
			width: 1024;
		}
		.left{
			width: 200px;
			height: 200px;
			padding:0px;
		}
		.right{
			width: 200px;
			height: 170px;
			padding:0px;			
			border: 1px solid #2EA0B6; 
			margin-top: 12px
		}
		H1{
			font-size: 30px;
			margin-top: 20px
		}
		.btn{
			outline: none;
			border:none;
			width: 200px;
			height: 50px;
			background-color: #61BBCD;
			border-radius:6px;
			margin-top: 30px;
			font-size: 15px;
			color: white;
		}
		.sure{
			float: left;
			padding-left: 150px;
		}
		.up{
			float: right;
			padding-right: 70px;
		}
		font{
			float: left;
			padding-left: 50px;
			font-size: 18px;
		}
		.btn3{
			background-color: #61BBCD;
			width: 190px;
			height: 38px;
			float: left;
			margin-right: 30px;
			outline: none;
			border:none;
			border-radius:6px;
			padding-top: 12px;
		}
		.btn4{
			background-color: #61BBCD;
			width: 200px;
			height: 38px;
			display: inline;
			float: right;
			outline: none;
			border:none;
			border-radius:6px;
			padding-top: 12px;
		}
		.btn5{
			background-color: #61BBCD;
			width: 200px;
			height: 38px;
			outline: none;
			border:none;
			border-radius:6px;
			padding-top: 12px;
		}
		a{
			font-size: 15px;
			vertical-align: middle;
			height: 80px;
			color: white;
		}
		.sub{
			background-color:  #61BBCD;
			border-style: none;
			color: white;
			font-size: 15px;
		}
		#message{color: red;}		
	</style>
  </head>
  
<body>
    <h1 style="font-family: 宋体;font-size: 40px;color: white">Upload Picture</h1><a href="profile.jsp" style="text-decoration: none;float: right;">返回上一页</a>
    <br>
    <div class="face">
    <div style="float: left;font-size: 25px;color: white;">Custom Upload </div>
    <div style="float: right;padding-right: 200px;font-size: 25px;color: white;">Web Upload</div>
    
    	<div class="left">
		    <video id="video" width="200px" height="200px">
		    	Your browser does not support the Video.
		    </video>
    	</div>
    	<div class="up">
			<!--  <div id="fileQueue"></div>  
            <input type="file" name="uploadify" id="uploadify" multiple/>
            <p>  
            	<p style="height: 146px;"></p>
                <div class="btn3"><a href="javascript:$('#uploadify').uploadify('upload')" style="text-decoration: none;">Upload</a></div>   
                <div class="btn4"><a href="javascript:$('#uploadify').uploadify('cancel','*')" style="text-decoration: none;">Cancel</a></div>
            </p>  -->
            
            <form action="user/upload.do" onsubmit="return validatebtn5();" enctype="multipart/form-data" method="post">
				 <p> 
				   	<font style="color: white;">Choose:</font><input type="file" id="file" name="file" multiple>
				 </p>  
				 <p style="height: 144px;"></p>
				 <div class="btn5" style="margin-left: 80px;">
			   	 	<input class="sub" type="submit" value="Submit">
			   	 </div>
			</form>  
		</div>
	    <div class="right">
	    	<canvas id="canvas" width="200px" height="150px"></canvas>
	    </div>
	    
    </div>
    
    <div class="sure">
	    <input class="btn" type="button" value="Picture" >
	   <!--  <input class="btn2" type="button" value="确定上传" > -->
	</div> 
	
  </body>
  <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  <link href="css/uploadify.css" rel="stylesheet" type="text/css" />  
  <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>  
  <script type="text/javascript" src="uploadifyjs/jquery.uploadify.min.js"></script>
  <script type="text/javascript">
  //拍照上传头像
  	$(function(){
  		init_video();
  	})
  	function init_video(){
  		var getUserMedia = (navigator.getUserMedia || navigator.webkitGetUserMedia ||navigator.mozGetUserMedia);
  		getUserMedia.call(navigator,{
  			video:true,//开启视频
  			audio:false//关闭语音
  		},function(localMediaStream){
  			var video = document.getElementById("video");
  			video.src = window.URL.createObjectURL(localMediaStream);
  			video.onloadedmetadata=function(e){
  				video.play();//播放
  			}
  		},function(e){
  			alert("打开视频出错");
  		})
  	}
  	$(".btn").click(function(){
  		 $("#f-scan").css("bottom",$(".face").height()).animate({bottom:0},2000,function(){
  		 	$("#f-scan").css("bottom",$(".face").height());
  		 });
  		 var video = document.getElementById("video");
  		 var canvas = document.getElementById("canvas");
  		 var context = canvas.getContext("2d");
  		 context.drawImage(video,0,0,200,150);
  		 var imgSrc = canvas.toDataURL("images/png");
  		 var base64 = imgSrc.split("base64,")[1];
  		 console.log(base64);
  		 $.ajax({
  		 	url:"user/updatePicture.do",
  		 	data:{"base64":base64},
  		 	type:"post",
  		 	success:function(result){
  		 		alert("照相成功！上传头像！");
  		 		window.location.href="profile.jsp";
  		 	}
  		 });
  	});
  	
 	function validatebtn5(){
 		var pic=document.getElementById("file").value;
 		if(pic==null||pic==""){
 			alert("请选择图片");
 			return false;
 		}
 		return true;
 	}
  	
 // 	$(document).ready(function() {  
   //  $("#uploadify").uploadify({  
     //               'auto'           : false,//非自动上传，true自动上传  
       //             'swf'            : 'uploadifyjs/uploadify.swf',  
         //           'uploader'       : 'user/upload.do',//后台处理的请求  
           //         'queueID'        : 'fileQueue',//与下面的id对应  
             //       'queueSizeLimit' :2,  //文件个数限制
               //     'fileTypeExts'   : '*.txt;*.png;*.jpg', //控制可上传文件的扩展名，启用本项时需同时声明fileDesc  
                 //   'fileTypeDesc'   : 'txt文件或者png', 
                   // 'multi'          : true,  
                    //'buttonText'     : '上传'  
    // });  
    //});  

//});
  </script>
</html>
