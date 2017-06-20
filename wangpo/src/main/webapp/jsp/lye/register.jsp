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
		$("#rname").blur(function(){	
			var namenull=$("#rname").val()
			if(namenull==""||namenull==null){
				$("#sp").html("请输入账户名")
				return;
			}else{
				$("#sp").html("");
				$.ajax({
					url:"${proPath}/register/checkName.do",
					data:{
						rname:$("#rname").val()
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
			}
		})
		//判断两次密码是否一致
		$("#qrpwd").blur(function(){
			var pwdnull=$("#rpwd").val()
			if($("#rpwd").val()!=$("#qrpwd").val()){
				$("#sp1").html("两次输入密码不一致");
			}else{
				$("#sp1").html("");
				return;
			}
		})
		//判断年龄
		$("#rage").blur(function(){
			var agenull=$("#rage").val()
			var NL=/^(1[89]|[2-8][0-9]|90)$/;
			if(NL===""){
				$("#sp2").html("请输入年龄");
				return;
			}
			if(NL.test($("#rage").val())!=true){
				$("#sp2").html("请输入正确的年龄");
			}else{
				$("#sp2").html("");
				return;
			}
		})
		//判断身份证是否合格
		$("#ridno").blur(function(){
			var isIDCard=/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;
			if(isIDCard.test($("#ridno").val())!=true){
				$("#sp3").html("请输入正确的身份证号");
			}else{
				$("#sp3").html("");
				return;
			}
		})
		//判断电话号码是否合格
		$("#rtel").blur(function(){
			var isphone=/^1\d{10}$/;
			if(isphone.test($("#rtel").val())!=true){
				$("#sp4").html("请输入正确的手机号");
				return;
			}else{
				$("#sp4").html("");
				$.ajax({
					url:"${proPath}/register/checktel.do",
					data:{
						rtel:$("#rtel").val()
					},
					type:"post",
					dataType:"json",
					success:function(respData){
						alert("请求成功:"+respData.mess);
						$("#sp4").html(respData.mess)
					},
					error:function(err){
						alert("${proPath}/register/checktel.do");
						alert("请求失败"+err);
					}
				})
			}
		})
		//给注册按钮绑定事件
		$("#register").click(function(){
			if($("#rname").val()==""||$("#rpwd").val()==""||$("#qrpwd").val()==""||
					$("#rage").val()==""||$("#ridno").val()==""||$("#rtel").val()==""||
					$("#rsta").val()==""){
				
				return;
			}
		})
		
		function register(){
			if($("#rname").val()==""||$("#rpwd").val()==""||$("#qrpwd").val()==""||
					$("#rage").val()==""||$("#ridno").val()==""||$("#rtel").val()==""||
					$("#rsta").val()==""){
				alert("请补全所有信息");
				return false;
			}else{
				return true;
			}
		}
	})
</script>
<title>用户注册</title>
</head>
<body>
	<form action="${proPath}/register/regmethod.do" id="register" method="post" onsubmit="return register();">
		<samp>账户名称:</samp><input type="text" id="rname" name="rname"><samp id="sp"></samp><br>
		<samp>密&nbsp;&nbsp;码:</samp><input type="text" id="rpwd" name="rpwd"><br>
		<samp>确认密码:</samp><input type="text" id="qrpwd" name="qrpwd"><samp id="sp1"></samp><br>
		<samp>年&nbsp;&nbsp;龄:</samp><input type="text" id="rage" name="rage"><samp id="sp2"></samp><br>
		<samp>身份证号码:</samp><input type="text" id="ridno" name="ridno"><samp id="sp3"></samp><br>
		<samp>电&nbsp;&nbsp;话:</samp><input type="text" id="rtel" name="rtel"><samp id="sp4"></samp><br>
		<input type="submit" value="注册" id="register">
		<input type="button" value="取消">
	</form>
</body>
</html>