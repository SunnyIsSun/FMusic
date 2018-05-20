<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
		<style type="text/css">
			#email{
				width: 200px;
				border-radius:20px;
			}
		</style>
	</head>

	<body>
		<div class="modal-over">
			<div class="modal-center animated fadeInUp text-center" style="width: 200px; margin: -80px 0 0 -100px;">
				<div class="thumb-md">
					<c:if test="${empty user.picture}">
                    	<img src="images/a0.png" class="img-circle b-a b-light b-3x">
                    </c:if>
                    <c:if test="${not empty user.picture}">
                        <img src="images/${user.picture}" class="img-circle b-a b-light b-3x">
                    </c:if>
				</div>
				<p></p>
				
				<!-- 邮箱 -->
				<div class="input-group">
					<input type="email" class="form-control text-sm btn-rounded" placeholder="Enter email to continue" id="email">
				</div>
				<br>
				<!-- 密码 -->
				<div class="input-group">
					<input type="password" class="form-control text-sm btn-rounded" placeholder="Enter pwd to continue" id="password">
					<span class="input-group-btn">
						<button id="replace" class="btn btn-success btn-rounded" type="button" data-dismiss="modal">
							<i class="fa fa-arrow-right"></i>
						</button> 
					</span>
				</div>
				
			</div>
		</div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript">
		//切换登录
		$(function() {
	       	$("#replace").click(function(){
	       		$.ajax({
				  	url : "user/replace.do", //要提交的URL路径
					type : "post",      //发送请求的方式
					data : {email:$("#email").val(),password:$("#password").val()}, //要发送到服务器的数据
					dataType : "text",    //指定传输的数据格式
					success : function(result) {//请求成功后要执行的代码			
						if(result=="true"){
							window.location.href="index.jsp";
						}else{
							alert("请重新输入您的邮箱和密码！");
							window.location.href="modal.lockme.jsp";
						}
					},
					error : function() { //请求失败后要执行的代码
						alert("验证失败！！");
					}
				});
	       	});
	    });
	</script>
</html>
