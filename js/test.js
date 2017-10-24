function ceshi(){
	alert(1);
	var url = "https://do.yunzhijia.com/pubacc/pubsend";
	jQuery.post(
		url,
		{
			"to":[{
				"no":"8385632",
				"code":"0",
				"user":["583e2dc3e4b0e62818521821"]
				}],
			"from":{"pubtoken":"afb64f40904643ec6b2ca28c30327d6f8637f1e5",
				"time":"1495595044878",
				"nonce":"177ggkkgkffk8ffffkk90",
				"no":"8385632",
				"pub":"XT-712b8ea8-7ff4-4a1a-bf51-ce49878e1f65"
				},
			"type":5,
			"msg":{"text":"您有新的会议安排\nA203 1495595044878",
				"todo":0,
				"appid":"500024108",
				"url":"https://www.baidu.com"
				}
		},
		function (){
			alert("success");
		},
		"json"
	);
}