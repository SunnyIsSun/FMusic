function listen(e){
	$.ajax({
	  	url : "/FMusic/listenAjax.html",                                //要提交的URL路径
		type : "get",                          //发送请求的方式
		
		data : {},                           //要发送到服务器的数据
		dataType : "html",                	//指定传输的数据格式
		
		success : function(result) {		//请求成功后要执行的代码
			//alert(result);
			$("#ajaxf").html()="";
			$("#ajaxf").append(result);
		},
		error : function(error) { //请求失败后要执行的代码
			alert(error);
		}
	});
}