<%@ page language="java" import="java.util.*,java.util.Map.Entry" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'WeiHu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/ajax.js"></script>
	<script type="text/javascript">
		function addDelete(e){
			//val删除按钮
			$(e).append('<button onclick="deleteVal(this);">删除</button>');//更改button时注意removeSign()的find()
		}
		function removeDelete(e){
			$(e).find('button').remove();
		}
		//val*******************************************
		function addVal(e){
			$(e).parent().before(
				'<li onmouseover="addDelete(this);" onmouseout="removeDelete(this);">'+
					'<input onchange="changeVal();"/>'+
				'</li>'
			);
			doit('val', 'add', '');
		}
		function deleteVal(e){
			$(e).parent().remove();
			doit('val', 'del', '');
		}
		function changeVal(e){
			var val = $(e).val();
			doit('val', 'chg', val);
		}
		//part*******************************************
		function addPart(){
			
			doit('part', 'add', '');
		}
		function deletePart(){
			
			doit('part', 'del', '');
		}
		function changePart(){
			
			doit('part', 'chg', val);
		}
		//后台
		function doit(who, todo, val){//who:part、val|todo:add、del、chg
			var xhr = getXhr();
			var path = 'doit.test?who='+who+'&todo='+todo+'&val='+val;
			xhr.open('get',path);
			xhr.onreadystatechange=function(){
				if(xhr.readyState == 4 && xhr.status == 200){
					location.reload(true);
				}
			}
			xhr.send(null);
		}
	</script>
  </head>
  
  <body>
  
  <!-- 注意！尽量不要修改文档结构，有修改文档结构的地方一定要标记出来 -->
  
    <%
   	Map<String, List<String>> map = (Map<String, List<String>>)request.getAttribute("map");
   	
   	Set<Entry<String, List<String>>> entry = map.entrySet();
	for(Entry<String, List<String>> e : entry){
		String name = e.getKey();
		List<String> list = e.getValue();
	%>
		<div>
			<input value="<%=name %>" onchange="changePart"/>
			<!-- part删除按钮 -->
			<button onclick="deletePart();">删除</button>
			<ul>
				<%for(String str : list){ %>
					<li onmouseover="addDelete(this);" onmouseout="removeDelete(this);">
						<input value="<%=str %>" onchange="changeVal(this);"/>
					</li>
				<%} %>
				<!-- val添加按钮 -->
				<li><button onclick="addVal(this);">添加</button></li>
			</ul>
		</div>
	<%
	}
    %>
    <!-- part添加按钮 -->
    <br/>
    <button onclick="addPart(this);">添加</button>
  </body>
</html>
