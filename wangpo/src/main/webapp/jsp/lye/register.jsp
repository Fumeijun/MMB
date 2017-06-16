<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="../../common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript"> 
	$(function() {
		//判断账户是否存在
		$("#rname").change(function(){
			$.ajax({
				url:"${proPath}/register/checkName.do",
				data:{
					"rname":$("#rname").val()
				},
				type:"post",
				dataType:"json",
				success:function(respData){
					alert("请求成功:"+respData.mes);
					$("#sp").html(respData.mes)
				},
				error:function(err){
					alert("${proPath}/register/checkName.do");
					alert("请求失败"+err);
				}
			})
		})
		//判断两次密码是否一致
		$("#qrpwd").change(function(){
			if($("#rpwd").val()!=$("#qrpwd").val()){
				$("#sp1").html("两次输入密码不一致");
			}else{
				return;
			}
		})
		//判断年龄
		$("#rage").change(function(){
			if($("#rage").val()<18||$("#rage").val()>100){
				$("#sp2").html("请输入正确的年龄");
			}else{
				return;
			}
		})
	})
</script>
<title>用户注册</title>
</head>
<body>
	<form action="" id="register" method="post">
		<samp>账户名称:</samp><input type="text" id="rname"><samp id="sp"></samp><br>
		<samp>密&nbsp;&nbsp;码:</samp><input type="text" id="rpwd"><br>
		<samp>确认密码:</samp><input type="text" id="qrpwd"><samp id="sp1"></samp><br>
		<samp>年&nbsp;&nbsp;龄:</samp><input type="text" id="rage"><samp id="sp2"></samp><br>
		<samp>身份证号码:</samp><input type="text" id="ridno"><br>
		<samp>电&nbsp;&nbsp;话:</samp><input type="text" id="rtel"><br>
		<samp>审核状态:</samp><input type="text" id="rsta"><br>
	</form>
</body>
</html>