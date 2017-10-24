$(document).ready(function(){
	$('#dutyArea').css("paddingBottom","1.1rem");
	var plist = $('p');
	for(var i=0;i<plist.length;i++){
		if($(plist[i]).css("lineHeight") == "13px"){
			$(plist[i]).css("lineHeight","22px");
		}
	}
})