$(document).ready(function(){
	$("#jplayer_1").jPlayer({
	    ready: function () {
	      $(this).jPlayer("setMedia", {
	        title: m_name,
	        //m4v: "http://music-mv.oss-cn-hangzhou.aliyuncs.com/Jzhou",
	        //ogv: "http://music-mv.oss-cn-hangzhou.aliyuncs.com/Jzhou",
	        webmv: m_fileUrl,
	        poster: m_images
	      });
	    },
	    swfPath: "js",
	    supplied: "webmv, ogv, m4v",
	    size: {
	      width: "100%",
	      height: "450",
	      cssClass: "jp-video-360p"
	    },
	    globalVolume: true,
	    smoothPlayBar: true,
	    keyEnabled: true
	  });

	});
var m_name;
var m_images;
var m_fileUrl;
function playMv(name ,images,fileUrl){	
	m_name=name;
	m_images=images;
	m_fileUrl=fileUrl;

}