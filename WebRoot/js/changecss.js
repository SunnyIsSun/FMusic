function changgecss(e){
	var id = $(e).attr("id");
	var header = document.getElementById("changes");
	var footer = document.getElementById("changef");  
	var nav= document.getElementById("nav");
	 
	  if(id=="black"){
	  header.setAttribute("class", "bg-black lter header header-md navbar navbar-fixed-top-xs");
	  footer.setAttribute("class", "footer bg-success dker");
	  nav.setAttribute("class", "bg-black dk nav-xs aside hidden-print");
	 }else if(id=="white"){
	 	header.setAttribute("class", "bg-white-only header header-md navbar navbar-fixed-top-xs");
	  	footer.setAttribute("class", "footer bg-info dker");
	  	nav.setAttribute("class", "bg-dark dk nav-xs aside hidden-print");
	 }
	  
}