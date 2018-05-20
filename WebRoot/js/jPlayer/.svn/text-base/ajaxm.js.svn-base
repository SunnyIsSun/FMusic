function ajaxm(e){
	var url = $(e).attr("id");
	var m_sort=$(e).attr("name");
	var m_images,m_name,m_id,m_desc;
	var m_singer;
	$(e).addClass("active").siblings().removeClass("active");
	$.ajax({
        url: url,
        //async: false,
        type: 'get',
        data: {},
        dataType : "json",   
        success: function (result) {
           $("#ajax").html("");
           $("#page").html();
           $.each(result,function(index,item){
					for(var item1 in item){       
						if(item1=="m_images"){ //item 表示Json串中的属性，如'name'         
							m_images=item[item1];//key所对应的value        
					    }if(item1=="m_name"){
					    	m_name=item[item1];
					    }if(item1="m_id"){
					    	m_id=item[item1];
					    }if(item1=="m_desc"){
					    	m_desc=item[item1];
					    }
					  }
					   m_singer=eval('item.'+"m_singer");           
					$("#ajax").append("<div class='col-xs-6 col-sm-4 col-md-3 col-lg-2'>"
                         +" <div class='item'>"
                            +"<div class='pos-rlt'>"
                              +"<div class='item-overlay opacity r r-2x bg-black'>"
                               +" <div class='center text-center m-t-n'>"
                                 +"<a href='' name='/FMusic/music/playsing.do?name="+m_name+"&id="+m_id+"' onclick='playsing(this)'><i class='fa fa-play-circle i-2x'></i></a>"
                                +"</div>"
                             +" </div>"
                              +"<div style='width: 154.328px; height: 154px'>"
                              +"<a href='track-detail.html'><img src='"+m_images+"' alt='' class='r r-2x img-full' style='width: 154.328px; height: 154px'></a>"
                             +" </div>"
                            +"</div>"
                            +"<div class='padder-v'>"
                             +" <a href='/FMusic/music/singerInfo.do?singer="+m_singer+"' data-bjax data-target='#bjax-target' data-el='#bjax-el' data-replace='true' class='text-ellipsis'>"+m_name+" </a>"
                              +"<a href='/FMusic/music/singerInfo.do?singer="+m_singer+"' data-bjax data-target='#bjax-target' data-el='#bjax-el' data-replace='true' class='text-ellipsis text-xs text-muted'>"+m_singer+"</a>"
                            +"</div>"
                          +"</div>"
                        +"</div>"  
                        
                      
                         );//arr.push(item);
				});
          
           
        },
        error : function(msg) { //请求失败后要执行的代码
			alert("请求失败！");
		}
    });
}