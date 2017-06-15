<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加好友</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/addAction/addFriends.do">
	好友名称:<input name="acc_lname" value="">
	性别:<input name="acc_gender" value=""><br>
	年龄:<input name="acc_age" value="">
	学历:<input name="acc_deu" value="">
	状态:<input name="acc_sta" value=""><br>
	<input type="button" value="查询">
	</form>
	
	
	
	
</body>
</html>