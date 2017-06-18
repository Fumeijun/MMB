<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../../common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加好友</title>
</head>
<body>
	<form  id="addfriends" action="${proPath}/addAction/addFriends.do" method="get">
	好友名称:<input name="acc_lname" id="acc_lname"><br>
	性别:<input name="acc_gender" id="acc_gender"><br>
	年龄:<input name="acc_age" id="acc_age"><br>
	学历:<input name="acc_edu" id="acc_edu"><br>
	状态:<input name="acc_sta" id="acc_sta"><br>
	<input type="submit" value="查询" id="addfriend">
	</form>
	<table border="1px;">
		<tr>
		
			<th>账号</th>
			<th>名称</th>
			<th>性别</th>
			<th>年龄</th>
			<th>职业</th>
			<th>学历</th>
			<th>QQ</th>
			<th>电话号码</th>
			<th>兴趣</th>
			<th>头像</th>
			<th>地址</th>
			<th>主页</th>
			<th>状态</th>
			
		</tr>
		<tr>
		<c:forEach var="accountResults" items="">
			<td></td>
			<td></td>
			<td>3333</td>
			<td>2222</td>
			<td>1111</td>
			<td>1111</td>
			<td>1111</td>
			<td>1111</td>
			<td>1111</td>
			<td>1111</td>
			<td>1111</td>
			<td>1111</td>
		</c:forEach>
		</tr>
	</table>
	
	
	
</body>
</html>