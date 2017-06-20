<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户审核</title>
</head>
<body>
	<form action="">
		<div style="margin-bottom:20px">
		<samp>用户ID:</samp><input type="text" id="rid" name="rid"><br>
		</div>
		<div style="margin-bottom:20px">
		<samp>账户名称:</samp><input type="text" id="rname" name="rname"><br>
		</div>
		<div style="margin-bottom:20px">
		<samp>密&nbsp;&nbsp;码:</samp><input type="text" id="rpwd" name="rpwd"><br>
		</div>
		<div style="margin-bottom:20px">
		<samp>年&nbsp;&nbsp;龄:</samp><input type="text" id="rage" name="rage"><br>
		</div>
		<div style="margin-bottom:20px">
		<samp>身份证号码:</samp><input type="text" id="ridno" name="ridno"><br>
		</div>
		<div style="margin-bottom:20px">
		<samp>电&nbsp;&nbsp;话:</samp><input type="text" id="rtel" name="rtel"><br>
		</div>
		<div style="margin-bottom:20px">
		<samp>审核状态:</samp><select id="rsta" name="rsta" style="width:56px;" >
			<option value="1"></option>
			<option value="2"></option>
		</select><br>
		</div>
		<input type="submit" value="确定" id="determine">
	</form>
</body>
</html>