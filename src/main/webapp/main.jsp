<%@ page contentType="text/html; charset=utf-8"%>

<%
String ContextPath = request.getContextPath();
%>

<!doctype html>
<html>
<head>
<title>EBDP-SDAS-CONSOLE Main</title>
<script type="text/javascript">
var ContextPath = "<%=ContextPath%>";

function forward2ModuCode(mc) {
	var url = ContextPath + "/dispatch/mc/"+mc;
	forward(url);
}

function forward(url) {
	document.getElementById("if_page").src = url + "?d="+new Date().getTime();
}


</script>
</head>

<body>

<table>
<tr>
	<td colspan="2">
	&nbsp;
	</td>
</tr>
<tr>
	<td width="300" valign="top">
		<table>
			<tr>
				<td>
					<span style="padding-left:20px;">用户管理</span><br>
					<span style="padding-left:60px;"><a href="###" onclick="forward2ModuCode('10101')">用户信息维护</a></span><br>
					<span style="padding-left:60px;"><a href="###" onclick="forward2ModuCode('10102')">用户权限分配</a></span><br>
					<span style="padding-left:60px;"><a href="###" onclick="forward2ModuCode('10103')">角色权限清单</a></span><br>
					<span style="padding-left:60px;"><a href="###" onclick="forward2ModuCode('10104')">用户注销</a></span><br>
				</td>
			</tr>
		</table>
	</td>
	<td align="center">
		<iframe id="if_page" frameborder='1' width='900' height='600' src="###"></iframe>
	</td>
</tr>
</table>

<br>
<br>

</body>

</html>