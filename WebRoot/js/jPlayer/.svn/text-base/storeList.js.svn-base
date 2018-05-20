$(document).ready(function(){
	
	
  var myPlaylist = new jPlayerPlaylist({
    jPlayer: "#jplayer_N",
    cssSelectorAncestor: "#jp_container_N"
  }, (function(){
	  	var arr=[];
		$.ajax({				  	
		  	url : "/FMusic/music/musicStoreList.do",                                //要提交的URL路径
		  	async: false,
			type : "post",                          //发送请求的方式
			data : {},                           //要发送到服务器的数据
			dataType : "json",                	//指定传输的数据格式
			success : function(result) {		//请求成功后要执行的代码
				$.each(result,function(index,item){
					arr.push(item);
				});
			},
			error : function(msg) { //请求失败后要执行的代码
				alert("请先登录！");
			}
			
		});
		return arr;
	})(), {
    playlistOptions: {
      enableRemoveControls: false,
      autoPlay: true
    },
    swfPath: "js/jPlayer",
    supplied: "webmv, ogv, m4v, oga, mp3,mpeg",
    wmode: "window",
    smoothPlayBar: true,
    keyEnabled: true,
    audioFullScreen: false
  });
  
  $(document).on($.jPlayer.event.pause, myPlaylist.cssSelector.jPlayer,  function(){
    $('.musicbar').removeClass('animate');
    $('.jp-play-me').removeClass('active');
    $('.jp-play-me').parent('li').removeClass('active');
  });

  $(document).on($.jPlayer.event.play, myPlaylist.cssSelector.jPlayer,  function(){
    $('.musicbar').addClass('animate');
  });

  $(document).on('click', '.jp-play-me', function(e){
	e && e.preventDefault();
    var $this = $(e.target);
    if (!$this.is('a')) $this = $this.closest('a');

    $('.jp-play-me').not($this).removeClass('active');
    $('.jp-play-me').parent('li').not($this.parent('li')).removeClass('active');

    $this.toggleClass('active');
    $this.parent('li').toggleClass('active');
    if( !$this.hasClass('active') ){
      myPlaylist.pause();
    }else{
      //var i = Math.floor(Math.random() * (1 + 7 - 1));
      
    	myPlaylist.play(i);
    }
    
  });



  // video

  

});

var i;
function play(e){
	i = $(e).attr("id");
	//alert($(e).attr("name"));
	$("#music-singer").text($(e).attr("name"));
}
function playsing(e){
	var url = $(e).attr("name");
	
	$.ajax({
        url: url,
        async: false,
        type: 'get',
        data: {},
        dataType : "text",  
        success: function (result) {
           i=result;
        },
        error : function(msg) { //请求失败后要执行的代码
			alert(msg);
		}
    });
}
function down(e){
	var url = $(e).attr("id");
	
	$.ajax({
        url: url,
        async: false,
        type: 'get',
        data: {},
        success: function () {
           alert("xiazaichenggong");
        },
        error : function(msg) { //请求失败后要执行的代码
			alert(msg);
		}
    });
}




