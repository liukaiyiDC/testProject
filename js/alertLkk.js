var alertContinue = false;
var alertWait = true;
window.alert = function(txt){
	var alertHTML = 
	'<div id = "alertDiv" style = "position: fixed; width: 100%; height: 100%; background-color: rgba(0,0,0,.7); text-align: center;">' + 
		'<div style="width: 3.6rem;height: 1.5rem;border-radius: 0.22rem;background-color: #fff;margin: 0 auto;margin-top: 50%;">' + 
			'<p style="font-size: 0.28rem;display: block;margin: 0;width: 100%;height: 0.9rem;line-height: 1rem;color: #3f3f3f;">' + txt + '</p>' + 
			'<button onclick="beSure();" style="font-size: 0.26rem;margin: 0;color: #11f;text-decoration: none;display:block;height: 0.6rem;border-top: 1px solid #eee;line-height: 0.6rem;">好的</button>' + 
		'</div>'+
	'</div>';
	var id = setTimeout(function(){
		$('body').append(alertHTML);
	},10);
	while(alertWait){}
	$('#alertDiv').remove();
//	var id = setInterval(function(){
//		if(alertContinue){
//			clearInterval(id);
//			$('#alertDiv').remove();
//		}
//	},50);
	console.log(1);
}
function beSure(){
	alertContinue = true;
	alertWait = false;
}